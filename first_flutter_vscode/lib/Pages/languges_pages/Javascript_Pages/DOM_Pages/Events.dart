import 'package:flutter/material.dart';

class JSDOMEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript HTML DOM Events',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Introduction to Events'),
            _buildParagraph(
              'Events are actions that occur in the browser, such as a user clicking a button or loading a page. JavaScript can be used to respond to these events by executing code in response to specific actions.'
            ),
            _buildSectionTitle('Event Handling'),
            _buildParagraph(
              'Event handling involves defining functions that run in response to specific events. You can assign event handlers directly in HTML or dynamically with JavaScript.'
            ),
            _buildCodeSnippet(
              'HTML Example:\n'
              '```html\n'
              '<button onclick="showMessage()">Click Me</button>\n'
              '```\n'
              'JavaScript Example:\n'
              '```javascript\n'
              'function showMessage() {\n'
              '  alert("Button was clicked!");\n'
              '}\n'
              '```\n'
              'In this example, clicking the button triggers the `showMessage` function, which displays an alert.'
            ),
            _buildSectionTitle('Event Listeners'),
            _buildParagraph(
              'Event listeners are a more flexible way to handle events, allowing you to attach multiple listeners to a single element and to remove listeners when no longer needed.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'document.getElementById("myButton").addEventListener("click", function() {\n'
              '  alert("Button was clicked!");\n'
              '});\n'
              '```\n'
              'This code attaches an event listener to the element with the ID "myButton" that triggers an alert when clicked.'
            ),
            _buildSectionTitle('Event Object'),
            _buildParagraph(
              'The event object provides information about the event that occurred, such as the type of event and the target element. This object is automatically passed to event handler functions.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'document.getElementById("myButton").addEventListener("click", function(event) {\n'
              '  console.log("Event type: " + event.type);\n'
              '  console.log("Event target: " + event.target.tagName);\n'
              '});\n'
              '```\n'
              'In this example, the event object is used to log the type of event and the tag name of the target element.'
            ),
            _buildSectionTitle('Event Propagation'),
            _buildParagraph(
              'Event propagation refers to how events bubble up from child elements to parent elements or how they are captured before reaching the target element. This concept includes event bubbling and capturing.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'document.getElementById("parentDiv").addEventListener("click", function() {\n'
              '  alert("Parent div clicked!");\n'
              '}, false);\n'
              '\n'
              'document.getElementById("childDiv").addEventListener("click", function() {\n'
              '  alert("Child div clicked!");\n'
              '}, false);\n'
              '```\n'
              'This code demonstrates event bubbling, where a click on the child div will trigger events on both the child and parent divs.'
            ),
            _buildSectionTitle('Preventing Default Actions'),
            _buildParagraph(
              'Sometimes, you may want to prevent the default action of an event, such as stopping a form from submitting. This can be done using the `preventDefault` method on the event object.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'document.getElementById("myForm").addEventListener("submit", function(event) {\n'
              '  event.preventDefault();\n'
              '  alert("Form submission prevented!");\n'
              '});\n'
              '```\n'
              'In this example, the form submission is prevented, and an alert is displayed instead.'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'For more information on JavaScript events, check out these resources:\n'
              '- [W3Schools - HTML DOM Events](https://www.w3schools.com/js/js_htmldom_events.asp)\n'
              '- [MDN Web Docs - Event Reference](https://developer.mozilla.org/en-US/docs/Web/Events)'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white70,
        ),
      ),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(
          fontFamily: 'Courier',
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
