import 'package:flutter/material.dart';
import 'home_screen.dart';

class AddChurchPage extends StatelessWidget {
  const AddChurchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController flatController = TextEditingController();
    final TextEditingController streetController = TextEditingController();
    final TextEditingController areaController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    final TextEditingController stateController = TextEditingController();
    final TextEditingController pinController = TextEditingController();
    final TextEditingController idController = TextEditingController();
    final TextEditingController eventController = TextEditingController();
    final TextEditingController eventOnController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Church", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
         actions: [
          IconButton(
              icon: Icon(Icons.home_outlined), //SizedBox(width: 12),
              color: Colors.deepOrange,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => HomePage()),
                );
              })
      
       ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTextField(label: "Church Name", controller: nameController),
                    _buildTextField(label: "Flat / Plot no", controller: flatController),
                    _buildTextField(label: "Street Name", controller: streetController),
                    _buildTextField(label: "Area Name", controller: areaController),
                    _buildTextField(label: "City", controller: cityController),
                    _buildTextField(label: "State", controller: stateController),
                    _buildTextField(label: "Pin code", controller: pinController),
                    
                    const SizedBox(height: 16),
                    const Text("Attach photo :", style: TextStyle(color: Colors.grey)),
                    const SizedBox(height: 10),
                    OutlinedButton.icon(
                      onPressed: () {
                        // Handle image pick
                      },
                      icon: const Icon(Icons.attach_file),
                      label: const Text("Choose File"),
                    ),

                    const SizedBox(height: 20),
                    _buildTextField(label: "Id", controller: idController),
                    _buildTextField(label: "Event", controller: eventController),
                    _buildTextField(label: "Event On", controller: eventOnController),

                    const Spacer(),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Submit logic
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Church added successfully")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 4,
                        ),
                        child: const Text("Add Church", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$label :", style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 6),
          TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: "Enter $label",
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

