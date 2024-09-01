import 'package:flutter/material.dart';

class CPlusPlusIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C++ Introduction',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900], // Set background color to blue-grey
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Title
            
            SizedBox(height: 20.0),
            
            // Introductory Text
            Text(
              'C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or "C with Classes".',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'It has imperative, object-oriented and generic programming features, while also providing facilities for low-level memory manipulation.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'C++ is standardized by the International Organization for Standardization (ISO), with the latest standard version published by ISO in December 2020 as ISO/IEC 14882:2020 (informally known as C++20).',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            
            // Why Use C++?
            _buildSectionTitle('Why Use C++?'),
            Text(
              'C++ is known for its performance, which makes it an excellent choice for building high-performance applications such as operating systems, games, and browsers.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Here are some reasons to use C++:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildBulletPoint('C++ is very close to hardware, so you get a lot of control in terms of memory management, better performance, and ultimately a robust software development environment.'),
            _buildBulletPoint('C++ programming gives you a clear understanding of object-oriented programming (OOP) concepts like classes, objects, inheritance, polymorphism, etc.'),
            _buildBulletPoint('It is very well suited for developing resource-constrained applications such as embedded software or game development.'),
            _buildBulletPoint('C++ has rich function libraries and the support of Standard Template Libraries (STL).'),
            SizedBox(height: 20.0),

            // Applications of C++
            _buildSectionTitle('Applications of C++'),
            Text(
              'C++ is widely used across many industries. Some areas where C++ is predominantly used include:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildBulletPoint('Operating Systems'),
            _buildBulletPoint('Games'),
            _buildBulletPoint('Graphics and Simulations'),
            _buildBulletPoint('Database Software'),
            _buildBulletPoint('Embedded Systems'),
            _buildBulletPoint('Web Browsers'),
            SizedBox(height: 20.0),

            // Conclusion
            _buildSectionTitle('Conclusion'),
            Text(
              'C++ is a powerful language that offers an ideal combination of speed and power, with a wide range of applications from operating systems to game development.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
