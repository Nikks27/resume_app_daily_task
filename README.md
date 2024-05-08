# resume_app_daily_task
 <h3>What is List?</h3>

=> The list is an ordered collection of objects and the List can contain duplicate values. 

 <h3>Predefined functions of list</h3>
add()
addAll()
insert()
insertAll()
<br>
remove()
removeAt()
removeLast()
removeRange()

# Example

```bash
 List sports = ['Naresh', 'Sumit', 'Rohon', 'Harsh']
```
<h3>What is Map</h3><br>
Map :  A Map is an object that maps keys to values or is a collection of attribute-value pairs.

Example

```bash
Map details = {'Usrname':'tom','Password':'pass@123'}
```

<h4>functions</h4>
List.addAll()<br>
List.remove()<br>
List.forEach()<br>
List.update()<br><br>



# Generics

Generics in Dart provide a way to write reusable code that can work with different types. They allow you to define classes, functions, and interfaces that can operate on a variety of data types without sacrificing type safety. Generics are denoted by using angle brackets < > and a type parameter.
# ResumeAppTask
# Status Bar & Device Orientation
## AppBar Both
```bash
 return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.blue),
      ),
    );
```
## Globle 
```bash
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:StatusBar(),
    );
  }
}
```
