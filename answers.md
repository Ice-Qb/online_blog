# Answers
### 1. What advantages and disadvantages does Ruby exception handling system have?

###### Advantages of exception handling in Ruby:
1) Provision to complete program execution - the execution of a Ruby program does not terminate when an exception occurs. Once the exception is resolved, program execution continues till completion.
2) Easy identification of program code and error-handling code - he use of rescue blocks segregates error-handling code and program code making it easier to identify the logical flow of a program. Unlike many traditional programming languages that include confusing error reporting and error handling code in between the program code, Ruby allows you to create well-organized code. Separating error handling and program logic in this way makes it easier to understand and maintain programs in the long run.
3) Propagation of errors - when a program includes several calls between methods, propagation of exceptions up the call stack ensures that exceptions are caught by the right methods.
4) Meaningful error reporting - traditional programming languages use error codes for error reporting. In the case of large programs, debugging errors using their error codes gets complex. The meaningful descriptions provided by Ruby's exception handling mechanism are helpful when you are need to debug large programs or experiment with complex code.
5) Identifying error types - Ruby provides several super classes and sub classes that group exceptions based on their type.

###### Disadvantages of exception handling in Ruby:
1) Exception handling introduces a hidden, "out-of-band" control-flow possibility at essentially every line of code. When such an oversight occurs, and an exception is then thrown, program state can quickly become corrupt, inconsistent and/or difficult to predict.
2) Exception handling does not fit well with most of the highly parallel programming models currently in use or being explored (fork/join, thread pools and task queues, the CSP/actor model etc), because exception handling essentially advocates a kind of single-threaded "rollback" approach to error handling, where the path of execution – implicitly a single path – is traversed in reverse by unwinding the call stack to find the appropriate error handling code.

###2. What Ruby debugging and profiling tools are you familiar with?
###### Debugging tools:
1) pry
2) byebug

###### Profiling tools:
1) Ruby’s default profiler
2) ruby-prof
3) rack-mini-profiler
4) flamegraph
5) memory_profiler
6) New Relic service

### 3. What third-party libraries and frameworks do you use in your Ruby    projects? What are their pros and cons?
###### Gems:
1) better_errors
pros: allows you to inspect source code live through a console that works on every stack frame.
2) devise
pros: simple HTTP authentication system
cons: hard to modify
3) cancancan
pros: lets you define what a user can do on your website
4) delayed_job
pros: it's easy solution when you need to extract some longer-running actions in background tasks
5) refile
pros: easy to deal with file attachments
cons: not so popular as other gems (such as Paperclip)
6) simple_form
pros: easy to build web forms
7) nokogiri
8) pdf_net_utils
9) aws-sdk
10) roo

###### Frameworks:
1) rails
2) rspec
3) capybara

### 4. What are the differences between using forks and threads?
Fork is nothing but a new process that looks exactly like the old or the parent process but still it is a different process with different process ID and having  it’s own memory.
Threads are Light Weight Processes (LWPs). Traditionally, a thread is just a CPU (and some other minimal state) state with the process containing the remains (data, stack, I/O, signals).

#### When is each option preferable to use?
If the child will do an identical task to the parent, with identical code, use fork. For smaller subtasks use threads. For separate external processes use neither, just call them with the proper API calls.
Use fork on a *nix system where you're doing a far more complex task than just instantiating a worker, or you want the implicit security sandboxing of separate processes. Fork creates a new process which then takes advantage of all features available to processes in the OS task scheduler. Forking is more heavy-weight than threading, and have a higher startup and shutdown cost. Interprocess communication (IPC) is also harder and slower than interthread communication. Actually threads really win the race when it comes to inter communication. Conversely, whereas if a thread crashes, it takes down all of the other threads in the process, and if a thread has a buffer overrun, it opens up a security hole in all of the threads.

### 5. How  should asynchronous Ruby applications be developed?
We need to build asynchronous apps when long time app response is not acceptable. Usually we use background processing libraries. Asynchronous tasks are those that may be started from a normal web request, but require a longer time to complete than the normal request. In order to not interrupt the normal synchronous workflow of an application, asynchronous tasks are normally processed on a separate thread or are spawned as a separate process entirely. Asynchronous jobs that are also retryable that allow your application to recover gracefully from failures and retry at a later time.

### 6. If you were to develop a Ruby back-end app for mobile reporting application (which is used to generate reports from some corporate data mining engine) what technologies and data formats would you prefer to use to  minimize traffic volume and why?
I'll use rails or grape frameworks to build RESTful API backend app. To minimize traffic volume I'll use json format instead of xml because its structure is cleaner.

