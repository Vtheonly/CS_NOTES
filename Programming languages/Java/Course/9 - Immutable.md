
[[01 - Clear]]
--- 


In Java, immutable types are types whose instances cannot be modified after they are created. Once an instance of an immutable type is created, its state cannot be changed. This is achieved by not providing any methods that allow modification of the internal state, and by ensuring that any operations that might seem to modify the object actually return a new instance.

Here are some common examples of immutable types in Java:

### 1. String

```java
String str = "Hello, World!";
str = str.pconcat(" Welcome"); // This creates a new string, original string remains unchanged
```

### 2. Integer

```java
Integer num = 42;
num = num + 10; // This creates a new Integer object, original Integer remains unchanged
```

### 3. Long

```java
Long longNum = 1000L;
longNum++; // This creates a new Long object, original Long remains unchanged
```

### 4. Double

```java
Double doubleNum = 3.14;
doubleNum = Math.sqrt(doubleNum); // This creates a new Double object, original Double remains unchanged
```

### 5. BigDecimal

```java
import java.math.BigDecimal;

BigDecimal bigDecimal = new BigDecimal("123.45");
bigDecimal = bigDecimal.multiply(new BigDecimal("2")); // This creates a new BigDecimal, original BigDecimal remains unchanged
```

### 6. LocalDate (from `java.time` package)

```java
import java.time.LocalDate;

LocalDate date = LocalDate.of(2022, 1, 1);
date = date.plusMonths(3); // This creates a new LocalDate, original LocalDate remains unchanged
```

### 7. LocalTime (from `java.time` package)

```java
import java.time.LocalTime;

LocalTime time = LocalTime.of(12, 0);
time = time.plusHours(1); // This creates a new LocalTime, original LocalTime remains unchanged
```

### 8. LocalDateTime (from `java.time` package)

```java
import java.time.LocalDateTime;

LocalDateTime dateTime = LocalDateTime.of(2022, 1, 1, 12, 0);
dateTime = dateTime.plusDays(7); // This creates a new LocalDateTime, original LocalDateTime remains unchanged
```

### 9. Duration (from `java.time` package)

```java
import java.time.Duration;

Duration duration = Duration.ofHours(2);
duration = duration.plusMinutes(30); // This creates a new Duration, original Duration remains unchanged
```

### 10. Instant (from `java.time` package)

```java
import java.time.Instant;

Instant instant = Instant.now();
instant = instant.plusSeconds(60); // This creates a new Instant, original Instant remains unchanged
```

Immutable types are often preferred in scenarios where thread safety, simplicity, and predictability are important. They eliminate the need for synchronization in a multithreaded environment and reduce the risk of unintended side effects caused by mutable state changes.