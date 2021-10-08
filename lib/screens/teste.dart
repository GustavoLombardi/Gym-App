import 'package:flutter/material.dart';
import 'package:gym/data/data.dart';

class PlaylistHeader extends StatelessWidget {
  final Playlist? playlist;

  const PlaylistHeader({Key? key, this.playlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
           
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PLAYLIST',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(playlist!.name, style: TextStyle(color: Colors.white)),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(playlist!.description,
                      style: TextStyle(color: Colors.white)),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                      'Create by ${playlist!.creator}' +
                          ' ${playlist!.songs.length} songs,  ${playlist!.duration}',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        _PlaylistButtons(followers: playlist!.followers),
      ],
    );
  }
}

class _PlaylistButtons extends StatelessWidget {
  final String? followers;
  const _PlaylistButtons({Key? key, this.followers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: const Color(0xFF1DB954),
              primary: Colors.white,
              textStyle:TextStyle (fontSize: 12, letterSpacing: 2)),
          onPressed: () {},
          child: const Text('PLAY'),
        ),
        const SizedBox(
          width: 8,
        ),
        
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz, color: Colors.white,),
          iconSize: 30,
        ),
        const Spacer(),
        Text('Followers\n$followers', style: TextStyle(color: Colors.white, fontSize: 12),
        textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
