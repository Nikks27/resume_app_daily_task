# resume_app_daily_task

# What is List and Map ?
## ⚫ List :

- ```List is collection of multiple values which can have multiple datatype.``` 
- List is an ordered collection of values, which contains index values to access it's inner attributes.
- fixed-length & growable.
- List have indexes like arrays.
- List can be created using '[]'.

### How to declration List :

- ```Syntax : ``` List variableName = [Values];

### Example
```
void main() {
  
    List listName = ["Naresh", 1, 22.22, "C"];

    print(listName[0]);
}
```

#### To know length of List :
```
  void main() {
     List listName = ["Naresh", 1, 22.22, "C"];
  
    print(name.length);
}
```
#### How to add in List Syntax:

- ```Syntax : ``` listName.add(value);
#### To add in List :
```
  void main() {
     List listName = ["Naresh", 1, 22.22, "C"];
  
    print(name[0]);
  
    name.add(2);
  
    print(name);
}
```
#### How to add multiple in List Syntax:

- ```Syntax : ``` listName.addAll(value,value);
  
#### To add Multiple values :
```
  void main() {
    List listName = ["Naresh", 1, 22.22, "C"];
  
    print(name[0]);
  
    name.addAll(['Om', 22, 11]);
  
    print(name);
}
```
#### How to insert in List Syntax:

- ```Syntax : ``` listName.insert(index,value);
  
#### To Insert to value :
```
  void main() {
    List listName = ["Sumit", 1, 22.22, "C"];
    print(name[0]);

    name.insert(2, 50);

    print(name);
}
```
#### How to insert mutiple value in List Syntax:

- ```Syntax : ``` listName.insertAll(value,value);
  
#### To Insert Multiple values :
```
  void main() {
    List listName = ["Naresh", 1, 22.22, "C"];
  
    print(name[0]);
  
    name.insertAll(2, [1, 2, 3, 4]);
  
    print(name);
}
```
#### How to remove value in List Syntax:

- ```Syntax : ``` listName.remove(value);
  
#### To Remove a Value :
```
  void main() {
    List listName = ["Sumit", 1, 22.22, "C"];
  
    print(name[0]);
  
    name.remove("c");
  
    print(name);
}
```
#### How to value of specific index in List Syntax:

- ```Syntax : ``` listName.removeAt(index);
  
#### To Remove a value for Index :
```
  void main() {
    List listName = ["Rohan", 1, 22.22, "C"];
  
    print(name[0]);
  
    name.removeAt(3);
  
    print(name);
}

```
#### How to reverse List Syntax:

- ```Syntax : ``` listName.reversed.toList();
  
#### To Reverse a List :
```
  void main() {
    List listName = ["Naresh", 1, 22.22, "C"];
  
    print(name[0]);
  
    print(name.reversed.toList());
}
```

## ⚫ Generics   

- Generics will be used to fix the datatype in the list.
- fix any one data type in the collection data types.
- it can be applied to either data types, value or both.
- ``` Example : ``` List <int> number = [10,20,30,40,50];

### Example

```
import 'dart:io';

  void main() {
    List <String> name = [];

    print("Enter number of Name : ");
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      print("Enter Name : ");
      String val = stdin.readLineSync()!;
      name.add(val);
    }

    print(name);
  }
```
## ⚫ Map

- ```Map is collection of values. Map is store data in key value pair. which can have different datatype.``` 
- Map can be created using '{}'.

### syntax :
```
Map mapName = {
  key1 : value1, 
  key2 : value2, 
  ... 
  keyN : valueN, 
  };
```
### Example :
``` 
void main() {
    Map emp = {
      'name': "Sumit",
      'age': 20,
      'per': 89.23,
      'salary': 89000,
    };
    
    emp.forEach((key, value) {
      print("${key} : ${value}");
    });
  }
```

### List of Map :
``` 
void main() {
 
  List myData = [
    {
      'name': "Naresh",
      'age': 20,
      'per': 89.23,
      'salary': 89000,
    },
    {
      'name': "Sumit",
      'age': 19,
      'per': 90.23,
      'salary': 90000,
    },
    {
      'name': "Rohan",
      'age': 18,
      'per': 98.23,
      'salary': 50000,
    }
  ];

  myData.forEach((e) {
    e.forEach((key, val) {
      print("${key} : ${val}");
    });
    print("");
  });
}

###
<h1 align = "left"></h1>

# Status Bar
## In Build Context (Global) : 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.green),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
```

##  AppBar :
```
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('StatusBarTopic',style: TextStyle(color: Colors.white,fontSize: 26),),
        systemOverlayStyle:
        const SystemUiOverlayStyle(statusBarColor: Colors.grey),
      ),
    );
  }
}
```

# Global :
```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
```

#  Login Page UI

<h1 align="center"> 1. Login Page UI </h1>

<h1 align="left"></h1>


<div align ="center">

  <img src = "" height ="550">
    <img src = "" height ="550">
   
</div>



#  Google Login Page With Validation

<h1 align="center"> 1. Google Login Page With Validation </h1>

<h1 align="left"></h1>


<div align ="center">

  <img src = "https://github.com/Nikks27/resume_app_daily_task/assets/148762716/beae6817-7d8f-44e6-85b0-bde1f534c72e" height ="550">
    <img src = "https://github.com/Nikks27/resume_app_daily_task/assets/148762716/6a02d04b-f407-4f18-8fe0-38f5a053b7c3" height ="550">
     <img src = "https://github.com/Nikks27/resume_app_daily_task/assets/148762716/6f7edfc9-ffc9-4686-b9ad-3b8de983ad2f" height ="550">
   
</div>



#  SnackBar & TextFormField

<h1 align="center"> 1. SnackBar & TextFormField </h1>

<h1 align="left"></h1>

<div align ="center">

  <img src = "https://github.com/Nikks27/resume_app_daily_task/assets/148762716/6e692b94-51ad-4c4f-9932-67f6ce301950" height ="550">
   
</div>


#  Image Picker in Flutter

<h1 align="center"> 1. Image Picker in Flutter </h1>

<h1 align="left"></h1>

<div align ="center">

  <img src = "https://github.com/Nikks27/resume_app_daily_task/assets/148762716/a4c9cfb7-d437-4d8c-95ab-45c41c0c9eb0" height ="550">
   
</div>

#  Generate Dynamic Text Field

<h1 align="center"> 1. Generate Dynamic Text Field </h1>

<h1 align="left"></h1>

<div align ="center">

  <img src = "https://github.com/Nikks27/resume_app_daily_task/assets/148762716/01cb7122-d7dd-45c7-804a-8d931babd0cf" height ="550">
   

https://github.com/Nikks27/resume_app_daily_task/assets/148762716/a4e89b81-e3af-4cdd-a123-cdc19fa3ab52


</div>



