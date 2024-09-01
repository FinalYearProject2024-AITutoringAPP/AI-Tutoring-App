import 'package:flutter/material.dart';

class NodeJSEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Node.js Events',
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
          _buildHeader('Node.js Events'),
          _buildParagraph(
              'Node.js is an event-driven platform. It uses events to handle asynchronous operations. All I/O activities are based on events, and these events are handled by event handlers.'),
          _buildParagraph(
              'In Node.js, the `EventEmitter` class, which is a part of the "events" module, is used to handle events. An instance of `EventEmitter` can emit named events and register listeners (functions) for these events.'),
          _buildHeader('Including the "events" Module'),
          _buildParagraph(
              'To use events in Node.js, you must include the "events" module. You can create an `EventEmitter` object and handle events as follows:'),
          _buildCodeBlock(
              '''const events = require('events');\nconst eventEmitter = new events.EventEmitter();'''),
          _buildHeader('Creating and Handling Events'),
          _buildParagraph(
              'You can create an event using the `emit` method and handle it using the `on` method. For example, let\'s create a simple "scream" event:'),
          _buildCodeBlock(
              '''// Include the 'events' module\nconst events = require('events');\n\n// Create an eventEmitter object\nconst eventEmitter = new events.EventEmitter();\n\n// Create an event handler\nconst myEventHandler = () => {\n  console.log('I hear a scream!');\n}\n\n// Assign the event handler to an event\neventEmitter.on('scream', myEventHandler);\n\n// Fire the 'scream' event\neventEmitter.emit('scream');'''),
          _buildParagraph(
              'In this example, the event handler `myEventHandler` is triggered whenever the "scream" event is fired using the `emit` method. The event handler function then logs a message to the console.'),
          _buildHeader('Events Module Methods'),
          _buildParagraph(
              'The "events" module contains several methods to work with event emitters:'),
          _buildList([
            '`on(event, listener)` - Adds a listener function for the specified event.',
            '`emit(event)` - Fires an event, causing all the listeners for that event to be called in the order they were registered.',
            '`once(event, listener)` - Adds a listener that is called at most once for the specified event. If the event is fired more than once, the listener will not be called again.',
            '`removeListener(event, listener)` - Removes a listener function from the specified event.',
            '`removeAllListeners([event])` - Removes all listeners, or those of the specified event, from the emitter.',
          ]),
          _buildHeader('Example: Raising and Handling Multiple Events'),
          _buildParagraph(
              'You can raise multiple events and handle them with different listeners. Here\'s an example:'),
          _buildCodeBlock(
              '''const events = require('events');\nconst eventEmitter = new events.EventEmitter();\n\n// First event handler\nconst firstHandler = () => {\n  console.log('First handler executed.');\n}\n\n// Second event handler\nconst secondHandler = () => {\n  console.log('Second handler executed.');\n}\n\n// Assigning handlers to events\neventEmitter.on('event1', firstHandler);\neventEmitter.on('event2', secondHandler);\n\n// Firing the events\neventEmitter.emit('event1');\neventEmitter.emit('event2');'''),
          _buildParagraph(
              'In this example, two different events, "event1" and "event2", are fired. Each event has its own handler, which logs a message when the event is triggered.'),
          _buildHeader('Removing Listeners'),
          _buildParagraph(
              'If you need to remove a specific listener from an event, you can use the `removeListener` method. Here\'s how it works:'),
          _buildCodeBlock(
              '''const events = require('events');\nconst eventEmitter = new events.EventEmitter();\n\nconst myHandler = () => {\n  console.log('This will not be logged after removal.');\n}\n\n// Assign the handler to an event\neventEmitter.on('event', myHandler);\n\n// Fire the event\neventEmitter.emit('event');\n\n// Remove the handler\neventEmitter.removeListener('event', myHandler);\n\n// Fire the event again\neventEmitter.emit('event');'''),
          _buildParagraph(
              'In this example, the event handler `myHandler` is removed after the first event is fired. The second time the event is fired, the handler will not be called, and nothing will be logged.'),
          _buildHeader('Conclusion'),
          _buildParagraph(
              'Node.js\'s event-driven architecture allows for efficient handling of asynchronous operations. The `EventEmitter` class is at the heart of this architecture, enabling you to create, handle, and manage events with ease.'),
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
