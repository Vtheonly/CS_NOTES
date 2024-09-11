how to sue function pointers
hw o to sue the same function from deifftrep olace with pointers 
what do fucnitin hwve pointerz



Section 4.10: Function Call Operator The first operand must be a function pointer (a function designator is also acceptable because it will be converted to a pointer to the function), identifying the function to call, and all other operands, if any, are collectively known as the function call's arguments. Evaluates into the return value resulting from calling the appropriate function with the respective arguments. int myFunction(int x, int y) { return x * 2 + y; } int (*fn)(int, int) = &myFunction; int x = 42; int y = 123; printf("(*fn)(%i, %i) = %i\n", x, y, (*fn)(x, y)); /* Outputs "fn(42, 123) = 207". */ printf("fn(%i, %i) = %i\n", x, y, fn(x, y)); /* Another form: you don't need to dereference explicitly */