import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

import 'dart:io';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {

  File? _file;
  final ImagePicker _picker = ImagePicker();
  bool _is_Video = false;


  VideoPlayerController ? _videoPlayerController;

  Future<void> _pick_image_camera() async{
    final XFile? picked_file =
      await _picker.pickImage(source: ImageSource.camera);

      if (picked_file!=null) {
        _disposeVideo(); 
        setState(() {
          _file = File(picked_file.path);
          _is_Video = false;
        });
      }
  }


  Future<void> _pick_image_from_gallery() async{
    final XFile? picked_file= await _picker.pickImage(source: ImageSource.gallery);
    if (picked_file != null) {
      _disposeVideo();
      setState(() {
        _file = File(picked_file.path);
        _is_Video = false ;
      });
    }
  }

  Future<void> _pick_video_camera() async{
    final XFile ? picked_file = await _picker.pickVideo(source: ImageSource.camera);
    if (picked_file != null) {
      _disposeVideo();
      // setState(() {
      //   _file = File(picked_file.path);
      //   _is_Video = true;
      // });
      _initializeVideo(File(picked_file.path));
    }
  }

  Future<void> _pick_video_gallery() async{
    final XFile ? picked_file = await _picker.pickVideo(source: ImageSource.gallery);
    if (picked_file != null) {
      // setState(() {
      //   _file = File(picked_file.path);
      //   _is_Video = true ;
      // });
      _initializeVideo(File(picked_file.path));
      
    }
  }


  void _disposeVideo(){
    if (_videoPlayerController != null) {
      _videoPlayerController!.pause();
      _videoPlayerController!.dispose();
      _videoPlayerController = null ;
    }
  }

  Widget _buildFilePreview(){
    if (_file != null) {
      return const Text("ga ada file yang di pilih");
    }

    // return _is_Video ? 
    // const Text("video sudah terpilih") : 
    // Image.file(_file!, fit: BoxFit.cover);}
    
   if (_is_Video) {
     if (_videoPlayerController == null || !_videoPlayerController!.value.isInitialized) {
       return const CircularProgressIndicator();
     }
     return AspectRatio(aspectRatio: 
     _videoPlayerController!.value.aspectRatio,
     child: VideoPlayer(_videoPlayerController!),
     );
   } 

   return Image.file(
    _file!,
    fit: BoxFit.cover,
    width: double.infinity,
    height: 250,
   );
  }

  @override
  void dispose(){
    _disposeVideo(); //pastikan videoo tertutup
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: const Text("contoh kamera dan galeri"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              Container(
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
                ),
                alignment: Alignment.center,
                child: _buildFilePreview(),
              ),

              const SizedBox(height: 20),

              ElevatedButton(onPressed: _pick_image_camera, 
              child: const Text("pick image from kamera")),

              ElevatedButton(onPressed: _pick_image_from_gallery, 
              child: const Text("pik gambar dari galeri")),

              ElevatedButton(onPressed: _pick_video_camera, 
              child: const Text("pilih video dari galer9i")),

              ElevatedButton(onPressed: _pick_video_gallery, 
              child: const Text("pilih video dari galeri")),

            ],
          ),
        ),
      ),
    );
  }
  
  void _initializeVideo(File file) {
    _disposeVideo(); //hapus controller lama

    _videoPlayerController = VideoPlayerController.file(file)
     ..initialize().then((_){
      setState(() {
        _file = file;
        _is_Video = true;
      });
      _videoPlayerController!.play();
     });
  }
}