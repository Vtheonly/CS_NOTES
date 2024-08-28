
### 1. What is the Scanner Library in Java?

In Java, the `Scanner` class is part of the `java.util` package and is used for reading input from various sources, such as the #console, files, or strings. It provides methods to parse and process different types of data.

### 2. What can it do?

The `Scanner` class can be used to read different types of data, such as integers, floating-point numbers, strings, etc. It is versatile and allows you to interactively accept user input or read from other input sources. Here's a simple example of using `Scanner` to read an integer from the console:

```java
import java.util.Scanner;

public class ScannerExample {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter an integer: ");
        int userInput = scanner.nextInt();

        System.out.println("You entered: " + userInput);

        // Don't forget to close the scanner to avoid resource leaks
        scanner.close();
    }
}
```

### 3. Difference between `nextLine` and `nextInt`:

- **`nextLine`**: This method reads the entire line of input as a string, including spaces. It consumes the newline character (`\n`) left in the input buffer after the previous `nextInt`, `nextDouble`, etc. For example:

    ```java
    Scanner scanner = new Scanner(System.in);

    System.out.print("Enter a line of text: ");
    String line = scanner.nextLine();

    System.out.println("You entered: " + line);

    scanner.close();
    ```

- **`nextInt`**: This method reads the next token of input as an integer. It does not consume the newline character, leaving it in the buffer. If you subsequently use `nextLine`, it will read the remaining newline character, resulting in an empty line. For example:

    ```java
    Scanner scanner = new Scanner(System.in);

    System.out.print("Enter an integer: ");
    int number = scanner.nextInt();

    // Consume the newline character
    scanner.nextLine();

    System.out.println("You entered: " + number);

    scanner.close();
    ```

### 4. Scanner for File I/O Basics:

`Scanner` can also be used for reading from files. Here's a simple example of reading from a text file:

```java
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class FileScannerExample {
    public static void main(String[] args) {
        try {
            // Specify the file path
            File file = new File("example.txt");

            // Create a Scanner to read from the file
            Scanner fileScanner = new Scanner(file);

            // Read and print each line from the file
            while (fileScanner.hasNextLine()) {
                String line = fileScanner.nextLine();
                System.out.println(line);
            }

            // Close the file scanner
            fileScanner.close();
        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + e.getMessage());
        }
    }
}
```

This example assumes there's a file named "example.txt" in the same directory as the Java program.

Feel free to adapt these examples to your needs, and let me know if you have any further questions or if there's anything else I can assist you with!