### String Manipulation:

#### 1. **`trim()` - Remove Leading and Trailing Whitespace:**
   - Removes leading and trailing whitespaces from a string.

   ```java
   String trimmedString = inputString.trim();
   ```

#### 2. **`toUpperCase()` - Convert to Uppercase:**
   - Converts all characters in a string to uppercase.

   ```java
   String upperCaseString = inputString.toUpperCase();
   ```

#### 3. **`toLowerCase()` - Convert to Lowercase:**
   - Converts all characters in a string to lowercase.

   ```java
   String lowerCaseString = inputString.toLowerCase();
   ```

#### 4. **`indexOf(char)` - Find Index of a Character:**
   - Returns the index of the first occurrence of a specified character in a string.

   ```java
   int indexOfChar = inputString.indexOf('a');
   ```

#### 5. **`charAt(index)` - Get Character at Index:**
   - Returns the character at a specified index in a string.

   ```java
   char charAtIndex = inputString.charAt(2);
   ```

#### 6. **`replace(oldChar, newChar)` - Replace Characters:**
   - Replaces all occurrences of a specified character with another character.

   ```java
   String replacedString = inputString.replace('a', 'b');
   ```

#### 7. **`replaceAll(regex, replacement)` - Replace with Regular Expression:**
   - Replaces all occurrences of a specified substring (or regex) with another substring.

   ```java
   String replacedString = inputString.replaceAll("\\s", "_");
   ```

### String Arrays:

#### 1. **`split(regex)` - Split String into Array:**
   - Splits a string into an array of substrings based on a specified regex.

   ```java
   String[] parts = inputString.split("\\s");
   ```

#### 2. **Parsing to Int:**
   - Converts a string to an integer.

   ```java
   int number = Integer.parseInt(inputString);
   ```

#### 3. **Parsing to Double:**
   - Converts a string to a double.

   ```java
   double value = Double.parseDouble(inputString);
   ```

### Math Library:

#### 1. **`Math.abs()` - Absolute Value:**
   - Returns the absolute value of a number.

   ```java
   double absoluteValue = Math.abs(-5.5);
   ```

#### 2. **`Math.pow(base, exponent)` - Power Function:**
   - Returns the value of the specified base raised to the power of the specified exponent.

   ```java
   double result = Math.pow(2, 3); // 2^3 = 8.0
   ```

#### 3. **`Math.sqrt()` - Square Root:**
   - Returns the square root of a number.

   ```java
   double squareRoot = Math.sqrt(25);
   ```

### Data Types:

#### 1. **Primitive Data Types:**
   - `int`, `double`, `float`, `char`, `boolean`, etc.

   ```java
   int intValue = 42;
   double doubleValue = 3.14;
   char charValue = 'A';
   boolean booleanValue = true;
   ```

#### 2. **Reference Data Types:**
   - `String`, arrays, custom classes, etc.

   ```java
   String stringValue = "Hello";
   int[] intArray = {1, 2, 3};
   ```

### Scanner Library:

#### 1. **Reading Integers:**
   - Reads an integer from the console.

   ```java
   Scanner scanner = new Scanner(System.in);
   int userInput = scanner.nextInt();
   ```

#### 2. **Reading Strings:**
   - Reads a string from the console.

   ```java
   Scanner scanner = new Scanner(System.in);
   String userInput = scanner.nextLine();
   ```

#### 3. **Reading Doubles:**
   - Reads a double from the console.

   ```java
   Scanner scanner = new Scanner(System.in);
   double userInput = scanner.nextDouble();
   ```

These are some of the most commonly used methods and libraries/functions in Java for string manipulation, working with arrays, using the Math library, handling data types, and reading input with Scanner. They are fundamental to many Java applications and cover a broad range of scenarios.


[[math libaray]]
[[data types]]
[[Scanner]] 
[[string]]




