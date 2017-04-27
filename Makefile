CXX = g++
CPPFLAGS := -std=c++11 -g
LDFLAGS := -pthread

all:
	$(CXX)  $(CPPFLAGS) $(LDFLAGS) ListUsingLocks_4_thread.cpp -o mylocks $(LIBS)
	$(CXX)  $(CPPFLAGS) $(LDFLAGS) LockFreeListFinal_4_thread_delete.cpp -o mylockfree $(LIBS)

seq:
	$(CXX)  $(CPPFLAGS) -Dsequential $(LDFLAGS) ListUsingLocks_4_thread.cpp -o mylocks $(LIBS)
	$(CXX)  $(CPPFLAGS) -Dsequential $(LDFLAGS) LockFreeListFinal_4_thread.cpp -o mylockfree $(LIBS)
	
debug:
	$(CXX)  $(CPPFLAGS) -Ddebug $(LDFLAGS) ListUsingLocks_4_thread.cpp -o mylocks $(LIBS)
	$(CXX)  $(CPPFLAGS) -Ddebug $(LDFLAGS) LockFreeListFinal_4_thread_delete.cpp -o mylockfree $(LIBS)

debugseq:
	$(CXX)  $(CPPFLAGS) -Ddebug -Dsequential $(LDFLAGS) ListUsingLocks_4_thread.cpp -o mylocks $(LIBS)
	$(CXX)  $(CPPFLAGS) -Ddebug -Dsequential $(LDFLAGS) LockFreeListFinal_4_thread.cpp -o mylockfree $(LIBS)

lock: ListUsingLocks_4_thread.cpp
	$(CXX) -o mylocks -std=c++11 ListUsingLocks_4_thread.cpp -lpthread
    
lockfree: LockFreeListFinal_4_thread.cpp
	$(CXX) -o mylockfree -std=c++11 LockFreeListFinal_4_thread.cpp -lpthread
