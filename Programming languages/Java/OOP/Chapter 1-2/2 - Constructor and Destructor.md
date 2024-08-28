**Constructor and Destructor:**
[[01 - Clear]]
1. **Constructor (Constructeur):**
   - A constructor is a class operation responsible for managing the construction of objects.
   - The name of the constructor method is identical to the name of its class.
   - When an object is created, the constructor is automatically invoked. Its purpose is to initialize the object, allocate necessary resources, and set its initial state.
   - In many programming languages, constructors are used to perform tasks such as initializing member variables, allocating memory, and executing any necessary setup procedures.
   - Constructors play a vital role in ensuring that objects are properly initialized and ready for use.

2. **Destructor (Destructeur):**
   - A destructor is a class operation that is responsible for destroying or cleaning up objects.
   - This method is called when an object is no longer needed, typically when it goes out of scope or when explicitly invoked.
   - The primary role of a destructor is to release any resources or memory that the object acquired during its lifetime.
   - This process is crucial to prevent memory leaks and ensure efficient resource management.
   - Unlike constructors, the destructor has the same name as the class but is usually preceded by a tilde (`~`).
   - The destructor is automatically invoked when an object goes out of scope or when it is explicitly deleted.

**Example in C++:**
```cpp
class Example {
public:
    // Constructor
    Example() {
        // Initialization code, resource allocation, etc.
    }

    // Destructor
    ~Example() {
        // Cleanup code, release resources, etc.
    }
};
```

In this example, the `Example` class has a constructor (`Example()`) responsible for initialization, and a destructor (`~Example()`) responsible for cleanup. These methods are crucial for proper object lifecycle management, ensuring that resources are appropriately handled during both object creation and destruction.