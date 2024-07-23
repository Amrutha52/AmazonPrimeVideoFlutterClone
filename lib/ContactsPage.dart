
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class Contact {
//   final String name;
//
//   Contact(this.name);
// }
//
// class ContactsPage extends StatefulWidget {
//   @override
//   _ContactsPageState createState() => _ContactsPageState();
// }
//
// class _ContactsPageState extends State<ContactsPage> {
//
//   final contacts = [
//     Contact("sahar"),
//     Contact("Joe"),
//     Contact("fo"),
//     Contact("Fifo"),
//     Contact("Moshe"),
//   ];
//
//   var _displayAll = false;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("contacts"),),
//       backgroundColor: Colors.white,
//       body: Center(
//         child:_gridContacts(),
//       ),
//     );
//   }
//
//   Widget _gridContacts() {
//     final size = _displayAll ? contacts.length : contacts.length - 2;
//     final contactsWidget = List.generate(
//         size, (index) => _contactItem(contacts[index]))
//       ..add(_seeNoSeeMore());
//     return GridView.count(
//       crossAxisCount: 3,
//       childAspectRatio: 2/1,
//       crossAxisSpacing: 10,
//       mainAxisSpacing: 10,
//       children: contactsWidget,);
//   }
//
//
//   Widget _contactItem(Contact item) {
//     return Container(
//       color: Colors.blue.withOpacity(0.5),
//       padding: EdgeInsets.all(5),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(Icons.person),
//           Text(item.name),
//         ],
//       ),
//     );
//   }
//
//   Widget _seeNoSeeMore() {
//     return InkWell(
//       onTap: ()=>setState(()=>_displayAll = !_displayAll),
//       child: Container(
//         color: Colors.blue.withOpacity(0.5),
//         padding: EdgeInsets.all(5),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(Icons.person),
//             Text(_displayAll?"hide":"Show all"),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class JioTVSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
          IconButton(
            icon: Icon(Icons.wifi),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search by actor, title...',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.mic),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text('Genres', style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildGenreButton('Action and adventure'),
                  _buildGenreButton('Anime'),
                  _buildGenreButton('Comedy'),
                  _buildGenreButton('Documentary'),
                  _buildGenreButton('Drama'),
                  _buildGenreButton('Fantasy'),
                  TextButton(
                    onPressed: () {},
                    child: Text('See more'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text('Featured collections', style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(height: 8),
              Column(
                children: [
                  _buildFeaturedCollection('Hindi'),
                  _buildFeaturedCollection('English'),
                  // Add more featured collections as needed
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            label: 'Live TV',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }

  Widget _buildGenreButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
    );
  }

  Widget _buildFeaturedCollection(String title) {
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}