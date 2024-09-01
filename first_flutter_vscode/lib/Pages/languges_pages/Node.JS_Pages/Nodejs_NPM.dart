import 'package:flutter/material.dart';

class NodeJSNPMPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Node.js NPM',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildHeader('Node.js NPM'),
          _buildParagraph(
              'NPM is the package manager for Node.js. It allows you to install and manage packages (libraries or modules) that you can use in your Node.js applications. NPM is also used to manage dependencies in your project.'),
          _buildHeader('Installing NPM'),
          _buildParagraph(
              'NPM is automatically installed when you install Node.js. You can check if NPM is installed by typing the following command in your terminal:'),
          _buildCodeBlock('npm -v'),
          _buildParagraph(
              'The command will output the version number of NPM installed on your system.'),
          _buildHeader('Using NPM'),
          _buildParagraph(
              'To use NPM in your project, you can create a `package.json` file. This file contains metadata about your project and the dependencies it uses. You can create a `package.json` file using the following command:'),
          _buildCodeBlock('npm init'),
          _buildParagraph(
              'This command will prompt you with a series of questions to set up your `package.json` file. You can press Enter to accept the default values.'),
          _buildHeader('Installing Packages'),
          _buildParagraph(
              'You can install packages using the `npm install` command. For example, to install the "express" package, you can use the following command:'),
          _buildCodeBlock('npm install express'),
          _buildParagraph(
              'This will install the "express" package and add it to the `node_modules` folder in your project. The dependency will also be added to your `package.json` file.'),
          _buildHeader('Global vs Local Installation'),
          _buildParagraph(
              'NPM packages can be installed globally or locally. By default, packages are installed locally in the `node_modules` folder of your project. To install a package globally, use the `-g` flag:'),
          _buildCodeBlock('npm install -g nodemon'),
          _buildParagraph(
              'Global packages are available for use in any project, while local packages are only available within the project where they were installed.'),
          _buildHeader('Updating Packages'),
          _buildParagraph(
              'To update a package to the latest version, you can use the following command:'),
          _buildCodeBlock('npm update package_name'),
          _buildParagraph(
              'This command will update the specified package to the latest version available.'),
          _buildHeader('Uninstalling Packages'),
          _buildParagraph(
              'To uninstall a package, you can use the following command:'),
          _buildCodeBlock('npm uninstall package_name'),
          _buildParagraph(
              'This will remove the package from the `node_modules` folder and also remove the dependency from your `package.json` file.'),
          _buildHeader('NPM Commands Summary'),
          _buildParagraph(
              'Here is a summary of the most commonly used NPM commands:'),
          _buildList([
            'npm init - Initialize a new Node.js project and create a `package.json` file',
            'npm install - Install a package and add it to the `node_modules` folder',
            'npm install -g - Install a package globally',
            'npm update - Update a package to the latest version',
            'npm uninstall - Uninstall a package',
            'npm -v - Check the version of NPM installed'
          ]),
          _buildHeader('Using npm with Existing Projects'),
          _buildParagraph(
              'If you clone a Node.js project from a repository, you might find a `package.json` file but no `node_modules` folder. To install all the dependencies listed in the `package.json` file, simply run:'),
          _buildCodeBlock('npm install'),
          _buildParagraph(
              'This command will install all the dependencies listed in `package.json`.'),
          _buildHeader('The "package-lock.json" File'),
          _buildParagraph(
              'When you install a package, npm also generates a `package-lock.json` file. This file locks the versions of the installed packages and their dependencies. It ensures that the same versions are installed if the project is installed again.'),
          _buildParagraph(
              'You should commit both the `package.json` and `package-lock.json` files to your version control system, so others can install the exact same dependencies.'),
        ],
      ),
    );
  }

  Widget _buildHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
          fontFamily: 'Times New Roman',
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Courier New',
          color: Colors.greenAccent,
        ),
      ),
    );
  }

  Widget _buildList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '• $item',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: 'Times New Roman',
            ),
          ),
        );
      }).toList(),
    );
  }
}
