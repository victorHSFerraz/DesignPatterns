import 'media_library/audio_mixer.dart';
import 'media_library/bitrate_reader.dart';
import 'media_library/codec.dart';
import 'media_library/codec_factory.dart';
import 'media_library/file.dart';
import 'media_library/mpeg4_compression_codec.dart';
import 'media_library/ogg_compression_codec.dart';
import 'media_library/video_file.dart';

class VideoConversionFacade {
  File convertVideo(String fileName, String format) {
    print('VideoConversionFacade: conversion started.');
    VideoFile file = VideoFile(name: fileName);
    Codec sourceCodec = CodecFactory.extract(file);
    Codec destinationCodec;
    if (format == "mp4") {
      destinationCodec = MPEG4CompressionCodec();
    } else {
      destinationCodec = OggCompressionCodec();
    }
    VideoFile buffer = BitrateReader.read(file, sourceCodec);
    VideoFile intermediateResult = BitrateReader.convert(buffer, destinationCodec);
    File result = AudioMixer().fix(intermediateResult);
    print('VideoConversionFacade: conversion completed.');
    return result;
  }
}
