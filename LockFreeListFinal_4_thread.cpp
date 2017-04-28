
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <pthread.h>
#include <unistd.h>
#ifdef PerCouMon
#include "cpucounters.h"
#endif
#include <sys/time.h>
#include <iostream>
#include <limits>

#define EPSILON 0.2
#define setMark(address) ((node_lf *)((uintptr_t)address | 2))
#define setFlag(address) ((node_lf *)((uintptr_t)address | 1))
#define getMark(address) ((int)((uintptr_t)address & 0x00000002) == 2 ?1:0)
#define getFlag(address) ((int)((uintptr_t)address & 0x00000001))
#define getNodeAddress(address) ((node_lf *)((uintptr_t)address & -4))

//#define debug
//#define sequential


typedef struct node
{
	int key;
	struct node * next;
	struct node * backlink;
}node_lf;

struct list
{
	node_lf * head;
	node_lf * (*init)();
	int (*insert)(int k,node_lf* head);
	int (*delete_node)(int,node_lf *);
	void (*print)(node_lf *);
	void (*destructor)(node_lf *);
};
typedef struct list * List;
typedef struct searchfrom
{
	node_lf * current;
	node_lf * next;
}return_sf;

typedef struct csArg
{
	int * node;
}cs_arg;

typedef struct return_tryFlag
{
	node_lf * node;
	int result;
	node_lf * prev_node;
	node_lf * del_node;
}return_tf;

void HelpFlagged(node_lf * prev, node_lf * del_node);

node_lf * constructArgs(node_lf * node, int mark, int flag)
{
	node_lf * temp = getNodeAddress(node);
	if(mark == 1)
		(temp) = setMark(temp);
	if(flag == 1)
		(temp) = setFlag(temp);
	return temp;
}

void HelpMarked(node_lf * prev, node_lf * del_node)
{
	node_lf * next = getNodeAddress(del_node)->next;

	node_lf * del = constructArgs(del_node,0,1);
	node_lf * next_node = constructArgs(next,0,0);

	__sync_val_compare_and_swap ((unsigned int *)&(getNodeAddress(prev)->next), (unsigned int)del, (unsigned int)next_node);

	free(getNodeAddress(del_node));

}

return_sf SearchFrom(int k,node_lf * curr)
{
	
	return_sf  s;// = (return_sf *)malloc(sizeof(return_sf));
	node_lf * next = curr->next;
	while(getNodeAddress(next)->key <= k)
	{
		while(getMark(next) == 1 && (getMark(curr) == 0 || getNodeAddress(curr)->next != getNodeAddress(next)))
		{
			if(getNodeAddress(curr)->next == getNodeAddress(next))
			{
				HelpMarked(curr,next);
			}
			next = getNodeAddress(curr)->next;
		}
		if(getNodeAddress(next)->key <= k)
		{
			curr = next;
			next = getNodeAddress(curr)->next;
		}

	}
	s.current = curr;
	s.next = next;
	return s;
}

void TryMark(node_lf * del_node)
{
	node_lf * next;
	node_lf * result;
	do
	{
		next = getNodeAddress(del_node)->next;

		node_lf * next_node = constructArgs(next,0,0);
		node_lf * next_node1 = constructArgs(next,1,0);

		result = (node_lf *)__sync_val_compare_and_swap((unsigned int *)&(getNodeAddress(del_node)->next),
														(unsigned int)(next_node),(unsigned int)(next_node1));

		if(getMark(result) == 0 && getFlag(result) == 1)
			HelpFlagged(del_node,result);
	}while(getMark(getNodeAddress(del_node)->next) != 1);
}

void HelpFlagged(node_lf * prev, node_lf * del_node)
{
	getNodeAddress(del_node)->backlink = prev;
	if(getMark(getNodeAddress(del_node)->next) == 0)
		TryMark(del_node);
	HelpMarked(prev,del_node);
}

int insert(int k, node_lf * head)
{
	return_sf s = SearchFrom(k,head);
	node_lf * prev;
	node_lf * next;
	node_lf * prev_succ;
	prev = s.current;
	next = s.next;
	//free(s);
	if(getNodeAddress(prev)->key == k)
		return -1;
	node_lf * newNode = (node_lf *)malloc(sizeof(node_lf));
	newNode->key = k;
	while(1)
	{
		//printf("\nTrying to Insert: %d",k);
		prev_succ = getNodeAddress(prev)->next;
		if(getFlag(prev_succ) == 1)
			HelpFlagged(prev,getNodeAddress(prev_succ)->next);
		else
		{
			newNode->next = next;
			node_lf * next_node = constructArgs(next,0,0);
			node_lf * new_Node = constructArgs(newNode,0,0);

			node_lf * result = (node_lf *)__sync_val_compare_and_swap((unsigned int *)&(getNodeAddress(prev)->next),
																		(unsigned int)(next_node),(unsigned int)(new_Node));
			
			if(result == next)// || next == NULL)
			{
				return 0;
			}
			else
			{
				if(getFlag(result) == 1)
					HelpFlagged(prev,(result)->next);
				while(getMark(prev) == 1)
					prev = getNodeAddress(prev)->backlink;
			}

		}
		s = SearchFrom(k,prev);
		prev = s.current;
		next = s.next;
		if(getNodeAddress(s.current)->key == k)
		{
			free(newNode);
			//free(s);
			return -1;
		}
	}
	//printf("\nInsert of %d successfull",k);
	//free(s);
	//return 0;
}

return_tf TryFlag(node_lf * prev, node_lf * target)
{
	return_tf r ;//= (return_tf *)malloc(sizeof(return_tf));
	while(1)
	{
		if(getNodeAddress(prev)->next == target && getMark(getNodeAddress(prev)->next) == 0 && getFlag(getNodeAddress(prev)->next) == 1) // Already Flagged. Some other process would delete_node it.
		{
			r.node = prev;
			r.result = 0;
			r.del_node = NULL;
			return r;
		}
		node_lf * target_node = constructArgs(target,0,0);
		node_lf * target_node_new = constructArgs(target,0,1);

		node_lf * result = (node_lf *)__sync_val_compare_and_swap((unsigned int *)&(getNodeAddress(prev)->next),
																	(unsigned int)(target_node),(unsigned int)(target_node_new));
		if(result == target && getMark(result) == 0 && getFlag(result) == 0)
		{
			r.node = prev;
			r.result = 1;
			r.del_node = NULL;
			return r;
		}
		if(result == target && getMark(result) == 0 && getFlag(result) == 1)
		{
			r.node = prev;
			r.result = 0;
			r.del_node = NULL;
			return r;
		}
		while(getMark(getNodeAddress(prev)->next) == 1)
			prev = getNodeAddress(prev)->backlink;
	
		
		return_sf s = SearchFrom((getNodeAddress(target)->key) - EPSILON,  prev);
		r.node = s.current;
		r.prev_node = s.current;
		r.del_node = s.next;
		prev = s.current;
		if(s.next != target)
		{
			r.node = NULL;
			r.result = 0;
			//free(s);
			return r;
		}
	}
	//free(s);
}

int delete_node(int k, node_lf * head)
{
	#ifdef debug
	printf("Delete start\n");
	#endif
	return_sf s = SearchFrom(k - EPSILON,head);
	node_lf * prev = s.current;
	node_lf * del = s.next;
	if(getNodeAddress(del)->key != k)
		return -1;
	return_tf tf = TryFlag(prev, del);
	prev = tf.node;
	if(tf.del_node != NULL)
		del = tf.del_node;
	if(prev != NULL)
		HelpFlagged(prev, del);
	if(tf.result == 0)
	{
		//free(tf);
		return -1;
	}
	//free(tf);
	#ifdef debug
	printf("Delete sucess %d\n",k);
	#endif
	return 1;
}

node_lf * init_LF_list()
{
	node_lf * head = (node_lf *)malloc(sizeof(node_lf));
	printf("Value of Head:%p\n",head);
	node_lf * tail = (node_lf *)malloc(sizeof(node_lf));
	head->next = tail;
	head->key = std::numeric_limits<int>::min();
	tail->next = NULL;
	tail->key = std::numeric_limits<int>::max();
	return head;
}

void printlist(node_lf * head)
{
	printf("Value of Head:%p\n",head);
	printf("Dereferernce of head:%d\n",head->key);
	head = getNodeAddress(head)->next;
	printf("Value of first element:%p\n",head);
	printf("Dereferernce of head:%d\n",head->key);
	while(getNodeAddress(head)->key != std::numeric_limits<int>::max())
	{
		printf("%d\t",getNodeAddress(head)->key);
		head = head->next;
	}
	printf("\n");
}

void destroy(node_lf * head)
{
	node_lf * next;
	node_lf * curr = getNodeAddress(head);
	while(getNodeAddress(curr) != 0)
	{
		next = getNodeAddress(curr)->next;
		free(curr);
		curr = next;
	}
}

List list_init()
{
	List temp = (List)malloc(sizeof(struct list));
	temp->init = init_LF_list;
	temp->delete_node = delete_node;
	temp->insert = insert;
	temp->print = printlist;
	temp->destructor = destroy;
	return temp;
}

struct arg
{
	List list;
	int thread_id;
	int tnum;

};


void *thread1(void *);

int threadlimit;
int main(int argc, char *argv[])
{
	#ifdef PerCouMon	
	PCM * m = PCM::getInstance();
	PCM::ErrorCode returnResult = m->program();
	if (returnResult != PCM::Success){
	  std::cerr << "Intel's PCM couldn't start" << std::endl;
	  std::cerr << "Error code: " << returnResult << std::endl;
	  exit(1);
	}	
	#endif
	List mylist = list_init(); //initialize the list object. Can be called as constructor
	mylist->head = mylist->init(); //initialize the list;
	

	#ifndef sequential
	if(argc > 3)
		printf("\nError! Pass 2 arguments");
	threadlimit = std::stoi(argv[1]);
	int numberOfThreads = std::stoi(argv[2]);
	
	pthread_t * t = (pthread_t *)malloc(numberOfThreads*sizeof(pthread_t));
	
	struct arg * tArgs =(arg *)malloc(numberOfThreads*sizeof(arg));
	
	
	#ifdef PerCouMon
	SystemCounterState before_sstate = getSystemCounterState();
	#endif
	
	//clock_t begin = clock();
	struct timeval start, end;
	gettimeofday(&start, NULL);
	int i;
	for(i=0;i<numberOfThreads;i++)
	{
		tArgs[i].list = mylist;
		tArgs[i].thread_id = i;
		tArgs[i].tnum = numberOfThreads;
		pthread_create (&t[i], NULL, thread1, (void *)&tArgs[i]);
	}
	
	
	for(i=0;i<numberOfThreads;i++)
	{
		pthread_join (t[i], NULL);
	}

	gettimeofday(&end, NULL);
	printf("Time=%ld\n", ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec)));
	#endif
	
	#ifdef sequential
	
	struct timeval start, end;
	gettimeofday(&start, NULL);
	
	int numberOfEntries = std::stoi(argv[1]);
	int i=0;
	
	for(i=0;i<numberOfEntries;i++)
		mylist->insert(i, mylist->head);
	
	gettimeofday(&end, NULL);
	printf("Time Seq lf=%ld\n", ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec)));
	
	#endif
	
	#ifdef PerCouMon
	SystemCounterState after_sstate = getSystemCounterState();
	#endif
	
	
	#ifdef debug
	mylist->print(mylist->head);
	#endif
	mylist->destructor(mylist->head);
	free(mylist);
	
	#ifdef PerCouMon
	std::cout << "CPU Time:" <<time_s << std::endl;
	std::cout << "Instructions per clock:" << getIPC(before_sstate,after_sstate) << std::endl;
	std::cout << "Bytes read:" << getBytesReadFromMC(before_sstate,after_sstate) << std::endl;
	std::cout << "Bytes Written:" << getBytesWrittenToMC(before_sstate,after_sstate) << std::endl;
	std::cout << "L2 Misses:" << getL2CacheMisses(before_sstate,after_sstate)<< std::endl;
	std::cout << "L2 HIts:" << getL2CacheHits(before_sstate,after_sstate)<< std::endl;
	std::cout << "L3 Misses:" << getL3CacheMisses(before_sstate,after_sstate)<< std::endl;
	std::cout << "L3 HIts:" << getL3CacheHits(before_sstate,after_sstate)<< std::endl;
	std::cout << "Cycles:" << getCycles(before_sstate,after_sstate)<<std::endl;
	std::cout << "Cycles Lost Due L3 Cache Misses:" << getCyclesLostDueL3CacheMisses(before_sstate,after_sstate)<<std::endl;
	std::cout << "Cycles Lost Due L2 Cache Misses:" << getCyclesLostDueL2CacheMisses(before_sstate,after_sstate)<<std::endl;
	#endif
	printf("Exiting Gracefully\n");

	return 0;
}

void * thread1(void * args)

{
	struct arg * arguments = (struct arg *)args;
	unsigned int i;
	
	for(i=arguments->thread_id; i < ((threadlimit)*arguments->tnum)+(arguments->thread_id); i=i+arguments->tnum)
	{
		arguments->list->insert(i, arguments->list->head);
	}
}

void * thread_delete(void * args)

{
	struct arg * arguments = (struct arg *)args;
	unsigned int i;
	
	for(i=1; i < 10; i=i+1)
	{
		arguments->list->delete_node(i, arguments->list->head);
	}
}

