
### Basics of File I/O in Java:

File Input/Output (I/O) operations in Java are commonly used for reading from and writing to files. The core classes for File I/O are part of the `java.io` package.

#### 1. **Reading from a File:**

To read from a file, you typically use classes like `FileReader` and `BufferedReader`:

```java
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class ReadFileExample {
    public static void main(String[] args) {
        try (BufferedReader reader = new BufferedReader(new FileReader("example.txt"))) {
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

#### 2. **Writing to a File:**

To write to a file, you use classes like `FileWriter` and `BufferedWriter`:

```java
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class WriteFileExample {
    public static void main(String[] args) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter("output.txt"))) {
            writer.write("Hello, this is a line in the file.");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

### Most Used File I/O Methods:

#### Reading from a File:

1. **`FileReader(String fileName)`:** Creates a new `FileReader`, given the name of the file to read from.

2. **`BufferedReader(Reader in)`:** Wraps an existing `Reader` (like `FileReader`) and adds buffering for efficient reading.

3. **`readLine()` (in `BufferedReader`):** Reads a line of text from the input stream.

#### Writing to a File:

1. **`FileWriter(String fileName)`:** Creates a new `FileWriter`, given the name of the file to write to.

2. **`BufferedWriter(Writer out)`:** Wraps an existing `Writer` (like `FileWriter`) and adds buffering for efficient writing.

3. **`write(String str)` (in `BufferedWriter`):** Writes a string to the output stream.

### Additional Methods:

1. **File Existence Check:**
   - **`exists()` (in `File`):** Checks if the file exists.

   ```java
   File file = new File("example.txt");
   if (file.exists()) {
       // File exists
   } else {
       // File does not exist
   }
   ```

2. **Reading All Lines from a File (Java 8 and later):**
   - **`Files.readAllLines(Path path)` (in `java.nio.file.Files`):** Reads all lines from a file as a `List<String>`.

   ```java
   import java.nio.file.Files;
   import java.nio.file.Path;
   import java.nio.file.Paths;
   import java.io.IOException;
   import java.util.List;

   public class ReadAllLinesExample {
       public static void main(String[] args) {
           try {
               Path path = Paths.get("example.txt");
               List<String> lines = Files.readAllLines(path);
               for (String line : lines) {
                   System.out.println(line);
               }
           } catch (IOException e) {
               e.printStackTrace();
           }
       }
   }
   ```

These examples cover basic File I/O operations in Java. Always ensure proper exception handling when dealing with file operations, as IOExceptions can occur due to various reasons like file not found, permissions issues, etc.