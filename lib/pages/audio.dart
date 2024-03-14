import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'song.dart';

import 'playlistProvider.dart';
import 'sura_page.dart';



class audio extends StatefulWidget {
  const audio({super.key});

  @override
  State<audio> createState() => _audioState();
}

class _audioState extends State<audio> {

      late final dynamic playlistProvider;
   
     
      

      @override
      void initState() {
       
        super.initState();
       playlistProvider = Provider.of<PlaylistProvider>(context,listen:false);
      }
      void goToSong(int songIndex){
        playlistProvider.currentSongIndex =songIndex;
       
        Navigator.push(
          context,
         MaterialPageRoute(
          builder: (context)=> SuraPage(),

         ),
         ); 
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title: const Text("P L A Y L I S T")),
      body: Consumer<PlaylistProvider>(
        builder: (context, value,child){
          //get the playlist
          final List<Song>playlist =value.playlist;
          //return listview ui
          return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: (contex,index){
              //get individual sura
              final Song sura = playlist[index];
                final bool isPlaying = index == playlistProvider.currentSongIndex;
              return Card(
                      color: isPlaying ? Colors.blue.withOpacity(0.3) : null,        
                child: ListTile(
                  title: Text(sura.suraName),
                  subtitle: Text(sura.artistname),
                  onTap: ()=>goToSong(index),
                             
                ),
              );
            }
            );
           

        }
          
          ),
         

      );
    
  }
}

/*
Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> UserPage(user: user),
                ));*/