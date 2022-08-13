# twitter_clone

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



TabBarView(
children: [
Card(
color: Colors.black,
child: ListTile(
leading: Row(
children: [
Icon(
Icons.notifications,
color: Colors.blue,
),
SizedBox(width: 20),
CircleAvatar(
backgroundImage:
AssetImage('images/profile_photo.JPEG}'),
),
],
),
subtitle: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
padding:
const EdgeInsets.symmetric(vertical: 10.0),
child: Row(
children: [
Text(
'blaaaaaaaa',
style: TextStyle(color: Colors.white),
),
Text(
'blaaaaaaaa',
style: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.white),
),
],
),
),
Padding(
padding:
const EdgeInsets.symmetric(vertical: 10.0),
child: Text(
'blaaaaaaaa',
style: TextStyle(color: Colors.grey),
),
),
Padding(
padding: const EdgeInsets.all(8.0),
child: Row(
children: [
Icon(
Icons.mode_comment_outlined,
color: Colors.grey,
),
SizedBox(width: 10),
Text('blaaaaaaaa',
style: TextStyle(color: Colors.grey)),
SizedBox(width: 20),
Icon(
Icons.repeat,
color: Colors.grey,
),
SizedBox(width: 10),
Text('blaaaaaaaa',
style: TextStyle(color: Colors.grey)),
SizedBox(width: 20),
Icon(
Icons.favorite_border_outlined,
color: Colors.grey,
),
SizedBox(width: 10),
Text('blaaaaaaaa',
style: TextStyle(color: Colors.grey)),
SizedBox(width: 20),
Icon(
Icons.file_upload_outlined,
color: Colors.grey,
),
],
),
)
],
),
),
),
Text(
'second slide',
style: TextStyle(color: Colors.white),
),
Text('third slide'),
Text('fourth slide')
],
),