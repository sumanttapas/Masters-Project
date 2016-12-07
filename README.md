# Masters-Project: Implementation and Performance analysis of Non Blocking algorithms.
This Repo contains source files for Master's project.

  A Concurrent data structure is way of storing and accessing data with multiple threads or processes. In a concurrent data structure, multiple readers and writers in different threads can read or write to the data structure. There are 2 ways to achieve concurrency in data structures: Blocking and Non-Blocking. In this project I would be implementing a non-blocking (using lock-freedom) linked list in C.

  In lock-free algorithms individual threads may starve but, system-wide throughput is guaranteed. In lock-free algorithms, there is a guarantee that at least one thread will make progress,hence avoiding the deadlock and livelock conditions. 

In these algorithms, some other thread may assist an obstructing thread to complete its operation to ensure its own progress. Hence, it guarantees finite step execution of some threads.

