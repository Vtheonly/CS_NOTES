In Java, the `Math` class from the `java.lang` package provides a set of methods for performing basic mathematical operations. Some of the most commonly used methods include:

1. **`abs`**: Returns the absolute value of a number.

   ```java
   int absoluteValue = Math.abs(-5);  // Returns 5
   ```

2. **`ceil` and `floor`**: Round a floating-point number up or down to the nearest integer.

   ```java
   double ceilValue = Math.ceil(4.3);  // Returns 5.0
   double floorValue = Math.floor(4.9); // Returns 4.0
   ```

3. **`sqrt`**: Returns the square root of a number.

   ```java
   double squareRoot = Math.sqrt(16);  // Returns 4.0
   ```

4. **`pow`**: Raises a number to the power of another.

   ```java
   double power = Math.pow(2, 3);  // Returns 8.0 (2^3)
   ```

5. **`round`**: Rounds a floating-point number to the nearest integer.

   ```java
   long roundedValue = Math.round(4.6);  // Returns 5
   ```

6. **`min` and `max`**: Returns the minimum or maximum of two values.

   ```java
   int minValue = Math.min(3, 7);  // Returns 3
   int maxValue = Math.max(3, 7);  // Returns 7
   ```

7. **`random`**: Generates a random double value between 0.0 (inclusive) and 1.0 (exclusive).

   ```java
   double randomValue = Math.random();
   ```

Regarding whether the `Math` library should be included, you don't need to explicitly include it in your code. The `Math` class is part of the `java.lang` package, which is automatically imported in every Java program. So, you can use the `Math` class methods directly without any additional import statements.

```java
public class MathExample {
    public static void main(String[] args) {
        int absoluteValue = Math.abs(-5);
        System.out.println("Absolute Value: " + absoluteValue);

        double squareRoot = Math.sqrt(16);
        System.out.println("Square Root: " + squareRoot);

        // ... other Math operations
    }
}
```

In the example above, there's no explicit import statement for `java.lang.Math`, and it works because `java.lang` is automatically imported.