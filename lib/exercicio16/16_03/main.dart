import 'package:flutter/material.dart';
import './photos.dart';
import './album.dart';

void main() => runApp(
      MaterialApp(
        home: Album(Photo.getPhotos()),
      ),
    );
