import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ───────── APP BAR ─────────
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.search, color: Colors.black),
        title: Image.asset(
          'assets/logo_spotify.png',
          height: 40,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
      ),

      // ───────── BODY ─────────
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 20),

            // ───────── BANNER ─────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color(0xFF42C83C),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Album',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Happier Than\nEver',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Billie Eilish',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    right: -10,
                    bottom: -15,
                    child: Image.asset(
                      'assets/Cantora.png',
                      width: 210,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // ───────── TABS ─────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  _TabItem('News', true),
                  _TabItem('Video', false),
                  _TabItem('Artists', false),
                  _TabItem('Podcast', false),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ───────── CARDS HORIZONTAIS ─────────
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  _MusicCard(
                    image: 'assets/billie2.png',
                    title: 'Bad Guy',
                    subtitle: 'Billie Eilish',
                  ),
                  SizedBox(width: 12),
                  _MusicCard(
                    image: 'assets/drake.png',
                    title: 'Scorpion',
                    subtitle: 'Drake',
                  ),
                  SizedBox(width: 12),
                  _MusicCard(
                    image: 'assets/billie3.png',
                    title: 'When...',
                    subtitle: 'Billie',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // ───────── PLAYLIST HEADER ─────────
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Playlist',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            const _PlaylistItem('As It Was', 'Harry Styles', '5:33'),
            const _PlaylistItem('God Did', 'DJ Khaled', '3:43'),

            const SizedBox(height: 80),
          ],
        ),
      ),

      // ───────── BOTTOM NAV ─────────
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: const Color(0xFF1DB954),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }
}

// ───────── TAB ─────────
class _TabItem extends StatelessWidget {
  final String title;
  final bool selected;

  const _TabItem(this.title, this.selected);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: selected ? FontWeight.bold : FontWeight.normal,
            color: selected ? Colors.black : Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
        if (selected)
          Container(
            width: 20,
            height: 3,
            decoration: const BoxDecoration(
              color: Color(0xFF1DB954),
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
          ),
      ],
    );
  }
}

class _MusicCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const _MusicCard({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              height: 140,
              width: 140,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class _PlaylistItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String duration;

  const _PlaylistItem(this.title, this.subtitle, this.duration);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.play_arrow),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(duration),
          const SizedBox(width: 10),
          const Icon(Icons.favorite_border, size: 18),
        ],
      ),
    );
  }
}