import 'package:flutter/material.dart';

void main() => runApp(const MyApp2());

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image:'images/login.png',
              ),
              MyCustomForm(),
            ],
          ),
        ),
      ),
    );
  }
}
// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: TextFormField(
          decoration: InputDecoration(
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),          
          ),
          focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
          color: Colors.black,
          width: 2,  
        ),
          borderRadius: BorderRadius.circular(15),
          
        ),
          errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
          borderRadius: BorderRadius.circular(10),
      ),
      filled: true,
      hintStyle: TextStyle(color: Colors.grey[800]),
      labelText: "Name",
      labelStyle: const TextStyle(fontSize: 20),
      hintText: "Type in your text",
      fillColor: Colors.white70,
    ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  },
),
          ),
Padding(
                padding: const EdgeInsets.only(top: 10.0),
          child:TextFormField(
  decoration: InputDecoration(
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
          color: Colors.black,
          width: 2,
        ),
          borderRadius: BorderRadius.circular(15),
        ),
          errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
          borderRadius: BorderRadius.circular(10),
      ),
      filled: true,
      hintStyle: TextStyle(color: Colors.grey[800]),
      labelText: "Alamat",
      labelStyle: const TextStyle(fontSize: 20),
      hintText: "Type in your text",
      fillColor: Colors.white70,
    ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  },
),
),
Padding(
                padding: const EdgeInsets.only(top: 10.0),
          child:TextFormField(
          decoration: InputDecoration(
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
          color: Colors.black,
          width: 2, 
        ),
          borderRadius: BorderRadius.circular(15),
        ),
          errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
          borderRadius: BorderRadius.circular(10),
      ),
      filled: true,
      hintStyle: TextStyle(color: Colors.grey[800]),
      labelText: "No. HP",
      labelStyle: const TextStyle(fontSize: 20),
      hintText: "Type in your text",
      fillColor: Colors.white70,
    ),
    keyboardType: TextInputType.number,
    validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  },
),
),
ElevatedButton(

  onPressed: () {
    // Validate returns true if the form is valid, or false otherwise.
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Congrats')),
      );
    }
  },
  child: const Text('Enter'),
),
        ],
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}