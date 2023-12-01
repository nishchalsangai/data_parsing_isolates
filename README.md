**Project Overview**
This project features an integration with an API, employing a robust architecture for efficient data handling and UI responsiveness. Key components include:

**State Management**: Implemented using Cubit, ensuring a clean and maintainable state management approach.
Data Parsing: To handle the API's continuous data stream, which lacks pagination, we have utilized Dart's isolates. This choice prevents UI blocking by offloading data parsing to a separate thread.

**Isolate Parser**
Our main innovation is the 'Isolate Parser'. Given the infinite nature of the data from the API, parsing it on the main thread posed significant risks of UI freezing. The isolate parser effectively addresses this issue, ensuring smooth user experience even with large data streams.
