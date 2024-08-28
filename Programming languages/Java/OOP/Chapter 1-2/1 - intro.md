#### Procedural Programming:

1. **Fundamental Approach:**
   - Procedural programming, known in languages like Pascal and C, considers programs as a set of procedures acting on data.
   - Procedures are active and important, while data is passive, acting as streams of information.

2. **Program Design:**
   - Design close to Von Neuman machines, treating data and algorithms independently.
   - Introduction of modularity in top-down structured programming with autonomous abstract machines having their data structures.

3. **Modularity:**
   - Introduction of modularity in top-down structured programming with autonomous abstract machines having their data structures.

#### Object-Oriented Programming:

1. **Foundations:**
   - Based on the understanding of a single category of basic computer entity called an object.
   - Bottom-up design based on "messages" exchanged by objects.

2. **Objects and Data:**
   - Predominance of data in an object.
   - Initial question is "what are we talking about?" rather than "what do we want to do?" as in procedural programming.

3. **Data-Centric Approach:**
   - Data-centric with strong coupling with their function.
   - Everything revolves around "objects" representing sets of data with their properties.

### Comparison:

- **Procedural Programming:**
  - Centered on procedures (operations).
  - Weak coupling between procedures and data.
  - Algorithmic view close to machine language.
  - Maintenance is difficult, tendency to generate "spaghetti code."
  - Lack of modularity and abstraction.
  - Complex reuse, challenging teamwork.

- **Object-Oriented Programming:**
  - Data-centric with a strong coupling with their function.
  - Everything revolves around "objects" representing sets of data with their properties.
  - Combination of variables and processes in a single entity (object).
  - Bottom-up approach based on messages exchanged by objects.

In summary, object-oriented programming distinguishes itself by its focus on data, strong coupling between data and function, and the use of objects as fundamental entities, offering a more intuitive approach for designing complex software. In contrast, procedural programming is more centered on operations, with an algorithmic structure close to machine language but can become complex and less modular in complex contexts.




The description of an object is called an object class. It is practical to conceive a blueprint (a mold) of an object and to produce objects from this blueprint. In object-oriented programming (OOP), a blueprint is called a class. Therefore, the class describes the internal structure of an object (static structure + dynamic behavior), including the data it encapsulates (attributes) and the actions it can perform (methods). In a programming language, a class A introduces a new abstract type A added to the pre-defined basic types (primitives).



---
**Message (Exchange, Interaction Between Objects):**

An individual object alone is insufficient to design an application that meets the objectives of Object-Oriented Programming (OOP). A program in OOP is composed of classes that enable the creation of objects, and these objects communicate by sending messages (a mode of communication or interaction between objects).

- **Communication Between Objects:**
  - Objects in OOP interact by sending messages to each other. This interaction is crucial for achieving the goals of OOP.
  - A program in OOP is not just a collection of independent objects but a network of interconnected objects that collaborate through message passing.

- **Message Handling:**
  - An object can receive a message, and this message can trigger a method within the object. This method may alter the object's state or perform specific actions associated with the message.
  - Additionally, a method within an object may send a message to another object, initiating further interactions.

- **Composition of a Message:**
  - A message, in the context of OOP, is composed of several elements:
    - The name of the object receiving the message.
    - The name of the method to be executed in response to the message.
    - Parameters necessary for the execution of the method.

In summary, the concept of a "message" in Object-Oriented Programming signifies the means by which objects communicate and interact. Messages are the conduits through which objects collaborate, triggering methods and influencing the state and behavior of the objects involved. The composition of a message includes details such as the recipient object, the method to be executed, and any parameters needed for the method's execution.