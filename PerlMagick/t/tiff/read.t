#!/usr/bin/perl
#
# Test reading TIFF images
#
# Contributed by Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
#
BEGIN { $| = 1; $test=1; print "1..16\n"; }
END {print "not ok $test\n" unless $loaded;}

use Image::Magick;
$loaded=1;

require 't/subroutines.pl';

chdir 't/tiff' || die 'Cd failed';

#
# 1) Test Reading Monochrome
# 
print("Monochrome ...\n");
testRead ( 'input_mono.tiff',
  '57fc672e7e231d3f92793d9b2073132def273f4be3115bcbed1c49a1c3131222' );

#
# 2) Test reading PseudoColor (16 color)
#
++$test;
print("PseudoColor (16 color)...\n");
testRead( 'input_16.tiff',
  '7e704fc1a99118630a92374ba27adf5baf69f30019016be2ed70eac79629e8b4' );

#
# 3) Test reading PseudoColor (16 color + matte channel)
#
++$test;
print("PseudoColor (16 color + matte channel)...\n");
testRead( 'input_16_matte.tiff',
  '7e704fc1a99118630a92374ba27adf5baf69f30019016be2ed70eac79629e8b4' );

#
# 4) Test reading PseudoColor (256 color)
#
++$test;
print("PseudoColor (256 color) ...\n");
testRead( 'input_256.tiff',
  '1280e7ed7094aaae47c0be1cb0b6d33660e59483a5500f5f40e34940346f7847' );

#
# 5) Test reading PseudoColor (256 color + matte channel)
#
++$test;
print("PseudoColor (256 color + matte channel) ...\n");
testRead( 'input_256_matte.tiff',
	'f3dc959e76f722bbc0a4338e2ed6650d73be3a81774c55210118531333fe6daa' );

#
# 6) Test reading PseudoColor using contiguous planar packing
#
++$test;
print("PseudoColor (256 color) contiguous planes ...\n");
testRead( 'input_256_planar_contig.tiff',
  '1280e7ed7094aaae47c0be1cb0b6d33660e59483a5500f5f40e34940346f7847' );

#
# 7) Test reading PseudoColor using seperate planes
#
++$test;
print("PseudoColor (256 color) seperate planes ...\n");
testRead( 'input_256_planar_separate.tiff',
  '1280e7ed7094aaae47c0be1cb0b6d33660e59483a5500f5f40e34940346f7847' );

#
# 8) Test Reading TrueColor (8-bit)
# 
++$test;
print("TrueColor (8-bit) image ...\n");
testRead( 'input_truecolor.tiff',
  '359291f6da6c9118bef6d75604be979b3267e4df0716e1bfc357f13cafd0acb8' );

#
# 9) Test Reading TrueColor (16-bit)
#
++$test;
print("TrueColor (16-bit) image ...\n");
testRead( 'input_truecolor_16.tiff',
  '0adb551c0d521ce9e502e7242040463543f1c84b55c6349d3aa4cbd093b1a410',
  '4c5c847c9e40a3ffc082f9fabadc29f87279008c9092fa749a9504c61f5e172a' );

#
# 10) Test Reading 8-bit TrueColor Tiled (32x32 tiles)
# 
++$test;
print("TrueColor (8-bit) tiled image, 32x32 tiles ...\n");
testRead( 'input_truecolor_tiled32x32.tiff',
  '359291f6da6c9118bef6d75604be979b3267e4df0716e1bfc357f13cafd0acb8' );

#
# 11) Test Reading 8-bit TrueColor Tiled (8 rows per strip)
# 
++$test;
print("TrueColor (8-bit) stripped, image, 8 rows per strip ...\n");
testRead( 'input_truecolor_stripped.tiff',
  '359291f6da6c9118bef6d75604be979b3267e4df0716e1bfc357f13cafd0acb8' );

#
# 12) Test Reading Grayscale 4-bit
#
++$test;
print("Grayscale (4-bit) ...\n");
testRead( 'input_gray_4bit.tiff',
  'a3ae7f6908bb538751f59565dd17f28f83201620ca3ccc8a87a388b3d4c50232');

#
# 13) Test Reading Grayscale 8-bit
# 
++$test;
print("Grayscale (8-bit) ...\n");
testRead( 'input_gray_8bit.tiff',
  '63783c30b21fca4cc94bb6c02ae37df722224a466d997db39bb7ddece5e236a8');

#
# 14) Test Reading Grayscale 8-bit + matte
# 
++$test;
print("Grayscale (8-bit + matte) ...\n");
testRead( 'input_gray_8bit_matte.tiff',
  'e87923c84a9140824abbb3683d603c19e8b1b08b926d78f794c5ea813db53615' );

#
# 15) Test Reading Grayscale 12-bit
# 
++$test;
print("Grayscale (12-bit) ...\n");
testRead( 'input_gray_12bit.tiff',
  'c29789db13969ddbfc9b588066d6578d87628566a60ffc33dbd43e6c4f747f51',
  '92fd45c62bf2641e0dd33eb05d215c9c15b5c5856aaa4a758bcde6d65ea16e4f',
  '92fd45c62bf2641e0dd33eb05d215c9c15b5c5856aaa4a758bcde6d65ea16e4f');

#
# 16) Test Reading Grayscale 16-bit
# 
++$test;
print("Grayscale (16-bit) ...\n");
testRead( 'input_gray_16bit.tiff',
  '7cc1f9e909cd671d0a4d32018fa885997a43de202eafdf4e0bec3dbff9f24a4e',
  '63783c30b21fca4cc94bb6c02ae37df722224a466d997db39bb7ddece5e236a8',
  '63783c30b21fca4cc94bb6c02ae37df722224a466d997db39bb7ddece5e236a8');
