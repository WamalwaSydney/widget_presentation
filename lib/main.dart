import 'package:flutter/material.dart';

void main() {
  runApp(const AspectRatioApp());
}

class AspectRatioApp extends StatelessWidget {
  const AspectRatioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aspect Ratio Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const AspectRatioDemo(),
    );
  }
}

class AspectRatioDemo extends StatefulWidget {
  const AspectRatioDemo({Key? key}) : super(key: key);

  @override
  State<AspectRatioDemo> createState() => _AspectRatioDemoState();
}

class _AspectRatioDemoState extends State<AspectRatioDemo> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _aspectRatios = [
    {'ratio': 16 / 9, 'name': '16:9', 'desc': 'Widescreen (YouTube, TV)', 'color': Colors.blue},
    {'ratio': 4 / 3, 'name': '4:3', 'desc': 'Standard (Old TV)', 'color': Colors.green},
    {'ratio': 1 / 1, 'name': '1:1', 'desc': 'Square (Instagram)', 'color': Colors.purple},
    {'ratio': 9 / 16, 'name': '9:16', 'desc': 'Portrait (Stories, Reels)', 'color': Colors.orange},
    {'ratio': 21 / 9, 'name': '21:9', 'desc': 'Ultra Wide (Cinema)', 'color': Colors.red},
    {'ratio': 3 / 2, 'name': '3:2', 'desc': 'Photography', 'color': Colors.teal},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aspect Ratio Presentation'),
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(
        children: [
          // Info Card
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blue.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'What is Aspect Ratio?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Aspect ratio is the proportional relationship between width and height.',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 4),
                Text(
                  'Formula: Aspect Ratio = Width : Height',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade900,
                  ),
                ),
              ],
            ),
          ),

          // Selected Aspect Ratio Display
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _aspectRatios[_selectedIndex]['name'],
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _aspectRatios[_selectedIndex]['desc'],
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    const SizedBox(height: 32),
                    // Visual representation
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      padding: const EdgeInsets.all(16),
                      child: AspectRatio(
                        aspectRatio: _aspectRatios[_selectedIndex]['ratio'],
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                _aspectRatios[_selectedIndex]['color'],
                                _aspectRatios[_selectedIndex]['color'].withOpacity(0.6),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.crop,
                                  size: 48,
                                  color: Colors.white,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  _aspectRatios[_selectedIndex]['name'],
                                  style: const TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bottom Grid of Options
          Container(
            height: 140,
            padding: const EdgeInsets.all(16),
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 12,
                childAspectRatio: 1.2,
              ),
              itemCount: _aspectRatios.length,
              itemBuilder: (context, index) {
                final isSelected = index == _selectedIndex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected
                          ? _aspectRatios[index]['color']
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isSelected
                            ? _aspectRatios[index]['color']
                            : Colors.grey.shade400,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _aspectRatios[index]['name'],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: isSelected ? Colors.white : Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _aspectRatios[index]['desc'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11,
                            color: isSelected
                                ? Colors.white.withOpacity(0.9)
                                : Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}