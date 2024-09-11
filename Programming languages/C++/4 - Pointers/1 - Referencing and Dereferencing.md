In C, pointers can be used with the concepts of **reference** (indirectly accessing variables) and **dereference** (accessing the value at the pointer's address). Here’s how they apply to your example:

### Code Example

```c
int x = 10, y = 20;
int *xptr = &x;  // xptr is a pointer to x
int *yptr = &y;  // yptr is a pointer to y
```

### Concepts Explained

1. **Reference:**

   - **`&` (Address-of Operator):**
     - `&x` is the **address** of the variable `x`.
     - `&y` is the **address** of the variable `y`.
     - These addresses are assigned to `xptr` and `yptr` respectively.

   **Example:**  
   ```c
   int *xptr = &x;  // xptr references (points to) the address of x
   int *yptr = &y;  // yptr references (points to) the address of y
   ```

2. **Dereference:**

   - **`*` (Dereference Operator):**
     - `*xptr` accesses the **value** stored at the address `xptr` is pointing to.
     - `*yptr` accesses the **value** stored at the address `yptr` is pointing to.

   **Example:**  
   ```c
   int x_value = *xptr;  // Dereferencing xptr gives the value of x (10)
   int y_value = *yptr;  // Dereferencing yptr gives the value of y (20)
   ```

### Summary

- **Reference (`&`):** Gets the memory address of a variable.
- **Dereference (`*`):** Accesses the value stored at a given memory address.

In your code, `xptr` and `yptr` hold the addresses of `x` and `y`, and you can use `*xptr` and `*yptr` to get or modify the values of `x` and `y` indirectly.