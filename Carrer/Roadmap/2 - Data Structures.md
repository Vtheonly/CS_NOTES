## Data Structures

### Arrays



#### About Arrays:
- [Arrays CS50 Harvard University](https://www.youtube.com/watch?v=tI_tIZFyKBw&t=3009s)
- [Arrays (video)](https://www.coursera.org/lecture/data-structures/arrays-OsBSF)
- [UC Berkeley CS61B - Linear and Multi-Dim Arrays (video)](https://archive.org/details/ucberkeley_webcast_Wp8oiO_CZZE) (Start watching from 15m 32s)
- [Dynamic Arrays (video)](https://www.coursera.org/lecture/data-structures/dynamic-arrays-EwbnV)
- [Jagged Arrays (video)](https://www.youtube.com/watch?v=1jtrQqYpt7g)

#### Implement a Vector (Mutable Array with Automatic Resizing):
- **Practice coding** using arrays and pointers, and pointer math to jump to an index instead of using indexing.
- **New raw data array** with allocated memory
    - Can allocate `int` array under the hood, just not use its features
    - Start with 16, or if the starting number is greater, use power of 2 - 16, 32, 64, 128
- **Methods**:
    - `size()` - Number of items
    - `capacity()` - Number of items it can hold
    - `is_empty()`
    - `at(index)` - Returns the item at a given index, blows up if index out of bounds
    - `push(item)`
    - `insert(index, item)` - Inserts item at index, shifts that index's value and trailing elements to the right
    - `prepend(item)` - Can use `insert` above at index 0
    - `pop()` - Remove from end, return value
    - `delete(index)` - Delete item at index, shifting all trailing elements left
    - `remove(item)` - Looks for value and removes index holding it (even if in multiple places)
    - `find(item)` - Looks for value and returns first index with that value, -1 if not found
    - `resize(new_capacity)` // Private function
        - When you reach capacity, resize to double the size
        - When popping an item, if the size is 1/4 of capacity, resize to half

#### Time Complexity:
- O(1) to add/remove at end (amortized for allocations for more space), index, or update
- O(n) to insert/remove elsewhere

#### Space Complexity:
- Contiguous in memory, so proximity helps performance
- Space needed = (array capacity, which is >= n) * size of item, but even if 2n, still O(n)

### Linked Lists

#### Description:
- [Linked Lists CS50 Harvard University](https://www.youtube.com/watch?v=2T-A_GFuoTo&t=650s) - This builds the intuition.
- [Singly Linked Lists (video)](https://www.coursera.org/lecture/data-structures/singly-linked-lists-kHhgK)
- [CS 61B - Linked Lists 1 (video)](https://archive.org/details/ucberkeley_webcast_htzJdKoEmO0)
- [CS 61B - Linked Lists 2 (video)](https://archive.org/details/ucberkeley_webcast_-c4I3gFYe3w)
- [[Review] Linked lists in 4 minutes (video)](https://youtu.be/F8AbOfQwl1c)

#### C Code (video): [C Code (video)](https://www.youtube.com/watch?v=QN6FPiD0Gzo)
- Not the whole video, just portions about Node struct and memory allocation

#### Linked List vs Arrays:
- [Core Linked Lists Vs Arrays (video)](https://www.coursera.org/lecture/data-structures-optimizing-performance/core-linked-lists-vs-arrays-rjBs9)
- [In The Real World Linked Lists Vs Arrays (video)](https://www.coursera.org/lecture/data-structures-optimizing-performance/in-the-real-world-lists-vs-arrays-QUaUd)

#### Why you should avoid linked lists (video): [Why you should avoid linked lists (video)](https://www.youtube.com/watch?v=YQs6IC-vgmo)

#### Implement:
- **Methods**:
    - `size()` - Returns the number of data elements in the list
    - `empty()` - Bool returns true if empty
    - `value_at(index)` - Returns the value of the nth item (starting at 0 for first)
    - `push_front(value)` - Adds an item to the front of the list
    - `pop_front()` - Remove the front item and return its value
    - `push_back(value)` - Adds an item at the end
    - `pop_back()` - Removes end item and returns its value
    - `front()` - Get the value of the front item
    - `back()` - Get the value of the end item
    - `insert(index, value)` - Insert value at index, so the current item at that index is pointed to by the new item at the index
    - `erase(index)` - Removes node at given index
    - `value_n_from_end(n)` - Returns the value of the node at the nth position from the end of the list
    - `reverse()` - Reverses the list
    - `remove_value(value)` - Removes the first item in the list with this value

#### Doubly-linked List
- [Description (video)](https://www.coursera.org/lecture/data-structures/doubly-linked-lists-jpGKD)
- No need to implement

### Stack
- [Stacks (video)](https://www.coursera.org/lecture/data-structures/stacks-UdKzQ)
- [[Review] Stacks in 3 minutes (video)](https://youtu.be/KcT3aVgrrpU)
- Will not implement. Implementing with the array is trivial

### Queue
- [Queue (video)](https://www.coursera.org/lecture/data-structures/queues-EShpq)
- [Circular buffer/FIFO](https://en.wikipedia.org/wiki/Circular_buffer)
- [[Review] Queues in 3 minutes (video)](https://youtu.be/D6gu-_tmEpQ)
- **Implement using linked-list**, with tail pointer:
    - `enqueue(value)` - Adds value at a position at the tail
    - `dequeue()` - Returns value and removes least recently added element (front)
    - `empty()`
- **Implement using a fixed-sized array**:
    - `enqueue(value)` - Adds item at end of available storage
    - `dequeue()` - Returns value and removes least recently added element
    - `empty()`
    - `full()`

#### Cost:
- A bad implementation using a linked list where you enqueue at the head and dequeue at the tail would be O(n) because you’d need the next to last element, causing a full traversal of each dequeue.
- `enqueue`: O(1) (amortized, linked list and array [probing])
- `dequeue`: O(1) (linked list and array)
- `empty`: O(1) (linked list and array)

### Hash Table
- **Videos**:
    - [Hashing with Chaining (video)](https://www.youtube.com/watch?v=0M_kIqhwbFo&list=PLUl4u3cNGP61Oq3tWYp6V_F-5jb5L2iHb&index=8)
    - [Table Doubling, Karp-Rabin (video)](https://www.youtube.com/watch?v=BRO7mVIFt08&index=9&list=PLUl4u3cNGP61Oq3tWYp6V_F-5jb5L2iHb)
    - [Open Addressing, Cryptographic Hashing (video)](https://www.youtube.com/watch?v=rvdJDijO2Ro&index=10&list=PLUl4u3cNGP61Oq3tWYp6V_F-5jb5L2iHb)
    - [PyCon 2010: The Mighty Dictionary (video)](https://www.youtube.com/watch?v=C4Kc8xzcA68)
    - [PyCon 2017: The Dictionary Even Mightier (video)](https://www.youtube.com/watch?v=66P5FMkWoVU)
    - [[Review] Hash tables in 4 minutes (video)](https://youtu.be/knV86FlSXJ8)

- **Online Courses**:
    - [Core Hash Tables (video)](https://www.coursera.org/lecture/data-structures-optimizing-performance/core-hash-tables-m7UuP)
    - [Data Structures (video)](https://www.coursera.org/learn/data-structures/home/week/4)
    - [Phone Book Problem (video)](https://www.coursera.org/lecture/data-structures/phone-book-problem-NYZZP)
    - Distributed hash tables:
        - [Instant Uploads And Storage Optimization In Dropbox (video)](https://www.coursera.org/lecture/data-structures/instant-uploads-and-storage-optimization-in-dropbox-DvaIb)
        - [Distributed Hash Tables (video)](https://www.coursera.org/lecture/data-structures/distributed-hash-tables-tvH8H)

- **Implement with array using linear probing**

:
    - `hash(k, m)` - M is the size of the hash table
    - `add(key, value)` - If the key already exists, update value
    - `exists(key)`
    - `get(key)`
    - `remove(key)`


### Additional Topics
- [Algorithmic complexity / Big-O / Asymptotic analysis](#algorithmic-complexity--big-o--asymptotic-analysis)
- [Data Structures](#data-structures)
    - [Arrays](#arrays)
    - [Linked Lists](#linked-lists)
    - [Stack](#stack)
    - [Queue](#queue)
    - [Hash table](#hash-table)
- [More Knowledge](#more-knowledge)
    - [Binary search](#binary-search)
    - [Bitwise operations](#bitwise-operations)
- [Trees](#trees)
    - [Trees - Intro](#trees---intro)
    - [Binary search trees: BSTs](#binary-search-trees-bsts)
    - [Heap / Priority Queue / Binary Heap](#heap--priority-queue--binary-heap)
    - balanced search trees (general concept, not details)
    - traversals: preorder, inorder, postorder, BFS, DFS
- [Sorting](#sorting)
    - selection
    - insertion
    - heapsort
    - quicksort
    - mergesort
- [Graphs](#graphs)
    - directed
    - undirected
    - adjacency matrix
    - adjacency list
    - traversals: BFS, DFS
- [Even More Knowledge](#even-more-knowledge)
    - [Recursion](#recursion)
    - [Dynamic Programming](#dynamic-programming)
    - [Design Patterns](#design-patterns)
    - [Combinatorics (n choose k) & Probability](#combinatorics-n-choose-k--probability)
    - [NP, NP-Complete and Approximation Algorithms](#np-np-complete-and-approximation-algorithms)
    - [How computers process a program](#how-computers-process-a-program)
    - [Caches](#caches)
    - [Processes and Threads](#processes-and-threads)
    - [Testing](#testing)
    - [String searching & manipulations](#string-searching--manipulations)
    - [Tries](#tries)
    - [Floating Point Numbers](#floating-point-numbers)
    - [Unicode](#unicode)
    - [Endianness](#endianness)
    - [Networking](#networking)
- [Final Review](#final-review)
## Coding Books
#### Python

- [Data Structures and Algorithms in Python](https://www.amazon.com/Structures-Algorithms-Python-Michael-Goodrich/dp/1118290275/)
    - by Goodrich, Tamassia, Goldwasser
    - Pythonic code
    - [Glowing book report](https://startupnextdoor.com/book-report-data-structures-and-algorithms-in-python/)

#### Java

Your choice:

- Goodrich, Tamassia, Goldwasser
    - [Data Structures and Algorithms in Java](https://www.amazon.com/Data-Structures-Algorithms-Michael-Goodrich/dp/1118771338/)
- Sedgewick and Wayne:
    - [Algorithms](https://www.amazon.com/Algorithms-4th-Robert-Sedgewick/dp/032157351X/)
    - Free Coursera course that covers the book (taught by the authors!):
        - [Algorithms I](https://www.coursera.org/learn/algorithms-part1)
        - [Algorithms II](https://www.coursera.org/learn/algorithms-part2)

#### C / C++

Your choice:

- Goodrich, Tamassia, and Mount
    - [Data Structures and Algorithms in C++, 2nd Edition](https://www.amazon.com/Data-Structures-Algorithms-Michael-Goodrich/dp/0470383275)
- Sedgewick and Wayne
    - [Algorithms in C++, Parts 1-4: Fundamentals, Data Structure, Sorting, Searching](https://www.amazon.com/Algorithms-Parts-1-4-Fundamentals-Structure/dp/0201350882/)
    - [Algorithms in C++ Part 5: Graph Algorithms](https://www.amazon.com/Algorithms-Part-Graph-3rd-Pt-5/dp/0201361183/)
- [Algorithms in C, Parts 1-5 (Bundle), 3rd Edition](https://www.amazon.com/Algorithms-Parts-1-5-Bundle-Fundamentals/dp/0201756080)
    - Fundamentals, Data Structures, Sorting, Searching, and Graph Algorithms

#### Interview Prep Books


- [Programming Interviews Exposed: Coding Your Way Through the Interview, 4th Edition](https://www.amazon.com/Programming-Interviews-Exposed-Through-Interview/dp/111941847X/)
    - Answers in C++ and Java
    - This is a good warm-up for Cracking the Coding Interview
    - Not too difficult. Most problems may be easier than what you'll see in an interview (from what I've read)
- [Cracking the Coding Interview, 6th Edition](http://www.amazon.com/Cracking-Coding-Interview-6th-Programming/dp/0984782850/)
    - Answers in Java
- Elements of Programming Interviews 
  - [C++ version](https://www.amazon.com/Elements-Programming-Interviews-Insiders-Guide/dp/1479274836)
  - [Python version](https://www.amazon.com/Elements-Programming-Interviews-Python-Insiders/dp/1537713949/)
  - [Java version](https://www.amazon.com/Elements-Programming-Interviews-Java-Insiders/dp/1517435803/)
- [Companion Project - Method Stub and Test Cases for Every Problem in the Book](https://github.com/gardncl/elements-of-programming-interviews)



## Coding Interview Question Videos:

- [IDeserve (88 videos)](https://www.youtube.com/playlist?list=PLamzFoFxwoNjPfxzaWqs7cZGsPYy0x_gI)
- [Tushar Roy (5 playlists)](https://www.youtube.com/user/tusharroy2525/playlists?shelf_id=2&view=50&sort=dd)
- [Nick White - LeetCode Solutions (187 Videos)](https://www.youtube.com/playlist?list=PLU_sdQYzUj2keVENTP0a5rdykRSgg9Wp-)
- [FisherCoder - LeetCode Solutions](https://youtube.com/FisherCoder)

