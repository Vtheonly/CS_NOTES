### Interprocess Communication (IPC) Methods

#### Shared Memory
- Processes share a common memory area.
- Efficient, avoids data copying overhead.
- Requires explicit synchronization (e.g., semaphores, mutexes) to prevent data corruption and race conditions.
- User is responsible for managing synchronization.

#### Message Passing
- Processes communicate by sending and receiving messages.
- Managed by the operating system using primitives like `send(message)` and `receive(message)`.
- Abstracts synchronization complexities, as the OS ensures proper message delivery.
- Easier for developers to manage but may incur performance overhead due to OS handling.

### Summary
- **Shared Memory**: Efficient, requires user-managed synchronization.
- **Message Passing**: Simplifies synchronization, managed by OS, may have performance overhead.




---


### Producer/Consumer Model

#### Concept
- Producers generate information.
- Consumers consume the information.
- Use intermediate buffers for data exchange.
- Producers and consumers compete for buffer space.

#### Examples
- **Keyboard Process**: Produces characters consumed by the screen display process.
- **Printer Driver**: Produces lines of characters consumed by the printer.
- **Compiler**: Produces lines of code consumed by the assembler.

#### Variants of the Problem
- **Unbounded Buffer**: 
  - Only the consumer waits when the buffer is empty.
- **Bounded Buffer**: 
  - Consumer waits when the buffer is empty.
  - Producer waits when the buffer is full.


---
