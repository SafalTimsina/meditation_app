import 'package:flutter/material.dart';

class AvatarScreen extends StatefulWidget {
  const AvatarScreen({super.key});

  @override
  _AvatarScreenState createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

 
  final List<String> favourites = [
    'Favourite Item 1',
    'Favourite Item 2',
    'Favourite Item 3',
  ];

  final List<String> downloads = [
    'Download Item A',
    'Download Item B',
    'Download Item C',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildList(List<String> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.star), // icon can be customized
          title: Text(items[index]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          // Avatar
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=3'), // example avatar image
          ),
          SizedBox(height: 10),
          Text(
            'Safal Timsina',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          // Tabs for Favourites and Downloads
          TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(text: 'Favourites'),
              Tab(text: 'Downloads'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Favourites List
                _buildList(favourites),

                // Downloads List
                _buildList(downloads),
              ],
            ),
          ),
        ],
      ),
    );
  }
}