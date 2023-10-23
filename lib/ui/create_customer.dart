import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatCustomer extends StatefulWidget {
  const CreatCustomer({super.key});

  @override
  State<CreatCustomer> createState() => _CreatCustomerState();
}

class _CreatCustomerState extends State<CreatCustomer> {
  TextEditingController _controller = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Create Customer'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomerTextField(controller: _controller, hintText: 'Name',),
                const SizedBox(height: 16),
                CustomerTextField(controller: _controller, hintText: 'Name',),
                const SizedBox(height: 16),
                CustomerTextField(controller: _controller, hintText: 'Name',),
                const SizedBox(height: 16),
                CustomerTextField(controller: _controller, hintText: 'Name',),
                const SizedBox(height: 16),
                CustomerTextField(controller: _controller, hintText: 'Name',),
                const SizedBox(height: 16),
                CustomerTextField(controller: _controller, hintText: 'Name',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomerTextField extends StatelessWidget {
   CustomerTextField({
    super.key,
    required this.controller,
    this.hintText
  }) ;

  final TextEditingController controller;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple)

        ),
        filled: true,
        fillColor: Colors.white,
        label: Text(hintText!),
        // hintText: 'name'
      ),
    );
  }
}
