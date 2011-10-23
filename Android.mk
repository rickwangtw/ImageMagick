LOCAL_PATH := $(call my-dir)

MAGICK_JPEG_MODULES = coders/jpeg.la
MAGICK_JPEG_SRCS = coders/jpeg.c
MAGICK_PNG_MODULES = coders/png.la
MAGICK_PNG_SRCS = coders/png.c

MAGICK_CODER_SRCS = \
	coders/aai.c \
	coders/art.c \
	coders/avs.c \
	coders/bgr.c \
	coders/bmp.c \
	coders/braille.c \
	coders/cals.c \
	coders/caption.c \
	coders/cin.c \
	coders/cip.c \
	coders/clip.c \
	coders/cmyk.c \
	coders/cut.c \
	coders/dcm.c \
	coders/dds.c \
	coders/debug.c \
	coders/dib.c \
	coders/dng.c \
	coders/dot.c \
	coders/dpx.c \
	coders/fax.c \
	coders/fits.c \
	coders/gif.c \
	coders/gradient.c \
	coders/gray.c \
	coders/hald.c \
	coders/hdr.c \
	coders/histogram.c \
	coders/hrz.c \
	coders/html.c \
	coders/icon.c \
	coders/info.c \
	coders/inline.c \
	coders/ipl.c \
	coders/label.c \
	coders/mac.c \
	coders/magick.c \
	coders/map.c \
	coders/mat.c \
	coders/matte.c \
	coders/meta.c \
	coders/miff.c \
	coders/mono.c \
	coders/mpc.c \
	coders/mpeg.c \
	coders/mpr.c \
	coders/msl.c \
	coders/mtv.c \
	coders/mvg.c \
	coders/null.c \
	coders/otb.c \
	coders/palm.c \
	coders/pattern.c \
	coders/pcd.c \
	coders/pcl.c \
	coders/pcx.c \
	coders/pdb.c \
	coders/pdf.c \
	coders/pes.c \
	coders/pict.c \
	coders/pix.c \
	coders/plasma.c \
	coders/pnm.c \
	coders/preview.c \
	coders/ps.c \
	coders/ps2.c \
	coders/ps3.c \
	coders/psd.c \
	coders/pwp.c \
	coders/raw.c \
	coders/rgb.c \
	coders/rla.c \
	coders/rle.c \
	coders/scr.c \
	coders/sct.c \
	coders/sfw.c \
	coders/sgi.c \
	coders/stegano.c \
	coders/sun.c \
	coders/svg.c \
	coders/tga.c \
	coders/thumbnail.c \
	coders/tile.c \
	coders/tim.c \
	coders/ttf.c \
	coders/txt.c \
	coders/uil.c \
	coders/url.c \
	coders/uyvy.c \
	coders/vicar.c \
	coders/vid.c \
	coders/viff.c \
	coders/wbmp.c \
	coders/wpg.c \
	coders/xbm.c \
	coders/xc.c \
	coders/xcf.c \
	coders/xpm.c \
	coders/xps.c \
	coders/ycbcr.c \
	coders/yuv.c \
  $(MAGICK_DPS_SRCS) \
  $(MAGICK_DJVU_SRCS) \
  $(MAGICK_EXR_SRCS) \
  $(MAGICK_FPX_SRCS) \
  $(MAGICK_GDI32_SRCS) \
  $(MAGICK_JBIG_SRCS) \
  $(MAGICK_JPEG_SRCS) \
  $(MAGICK_JP2_SRCS) \
  $(MAGICK_PNG_SRCS) \
  $(MAGICK_TIFF_SRCS) \
  $(MAGICK_WEBP_SRCS) \
  $(MAGICK_WMF_SRCS) \
  $(MAGICK_X11_SRCS)

# Library base sources
MAGICK_BASE_SRCS = \
	MagickCore/ImageMagick.h \
	MagickCore/MagickCore.h \
	MagickCore/accelerate.c \
	MagickCore/accelerate.h \
	MagickCore/animate.c \
	MagickCore/animate.h \
	MagickCore/animate-private.h \
	MagickCore/annotate.c \
	MagickCore/annotate.h \
	MagickCore/api.h \
	MagickCore/artifact.c \
	MagickCore/artifact.h \
	MagickCore/attribute.c \
	MagickCore/attribute.h \
	MagickCore/blob.c \
	MagickCore/blob.h \
	MagickCore/blob-private.h \
	MagickCore/cache.c \
	MagickCore/cache.h \
	MagickCore/cache-private.h \
	MagickCore/cache-view.c \
	MagickCore/cache-view.h \
	MagickCore/cipher.c \
	MagickCore/cipher.h \
	MagickCore/client.c \
	MagickCore/client.h \
	MagickCore/coder.c \
	MagickCore/coder.h \
	MagickCore/color.c \
	MagickCore/color.h \
	MagickCore/color-private.h \
	MagickCore/colormap.c \
	MagickCore/colormap.h \
	MagickCore/colormap-private.h \
	MagickCore/colorspace.c \
	MagickCore/colorspace.h \
	MagickCore/colorspace-private.h \
	MagickCore/compare.c \
	MagickCore/compare.h \
	MagickCore/composite.c \
	MagickCore/composite.h \
	MagickCore/composite-private.h \
	MagickCore/compress.c \
	MagickCore/compress.h \
	MagickCore/configure.c \
	MagickCore/configure.h \
	MagickCore/constitute.c \
	MagickCore/constitute.h \
	MagickCore/decorate.c \
	MagickCore/decorate.h \
	MagickCore/delegate.c \
	MagickCore/delegate.h \
	MagickCore/delegate-private.h \
	MagickCore/deprecate.c \
	MagickCore/deprecate.h \
	MagickCore/display.c \
	MagickCore/display.h \
	MagickCore/display-private.h \
	MagickCore/distort.c \
	MagickCore/distort.h \
	MagickCore/draw.c \
	MagickCore/draw.h \
	MagickCore/draw-private.h \
	MagickCore/effect.c \
	MagickCore/effect.h \
	MagickCore/enhance.c \
	MagickCore/enhance.h \
	MagickCore/exception.c \
	MagickCore/exception.h \
	MagickCore/exception-private.h \
	MagickCore/feature.c \
	MagickCore/feature.h \
	MagickCore/fourier.c \
	MagickCore/fourier.h \
	MagickCore/fx.c \
	MagickCore/fx.h \
	MagickCore/fx-private.h \
	MagickCore/gem.c \
	MagickCore/gem.h \
	MagickCore/geometry.c \
	MagickCore/geometry.h \
	MagickCore/hashmap.c \
	MagickCore/hashmap.h \
	MagickCore/histogram.c \
	MagickCore/histogram.h \
	MagickCore/identify.c \
	MagickCore/identify.h \
	MagickCore/image.c \
	MagickCore/image.h \
	MagickCore/image-private.h \
	MagickCore/image-view.c \
	MagickCore/image-view.h \
	MagickCore/layer.c \
	MagickCore/layer.h \
	MagickCore/list.c \
	MagickCore/list.h \
	MagickCore/locale.c \
	MagickCore/locale_.h \
	MagickCore/log.c \
	MagickCore/log.h \
	MagickCore/mac.h \
	MagickCore/magic.c \
	MagickCore/magic.h \
	MagickCore/magick.c \
	MagickCore/magick-config.h \
	MagickCore/magick-type.h \
	MagickCore/magick.h \
	MagickCore/matrix.c \
	MagickCore/matrix.h \
	MagickCore/memory.c \
	MagickCore/memory_.h \
	MagickCore/methods.h \
	MagickCore/mime.c \
	MagickCore/mime.h \
	MagickCore/module.c \
	MagickCore/module.h \
	MagickCore/monitor.c \
	MagickCore/monitor.h \
	MagickCore/monitor-private.h \
	MagickCore/montage.c \
	MagickCore/montage.h \
	MagickCore/morphology.c \
	MagickCore/morphology.h \
	MagickCore/morphology-private.h \
	MagickCore/nt-base.h \
	MagickCore/nt-feature.h \
	MagickCore/option.c \
	MagickCore/option.h \
	MagickCore/paint.c \
	MagickCore/paint.h \
	MagickCore/pixel.c \
	MagickCore/pixel.h \
	MagickCore/pixel-private.h \
	MagickCore/policy.c \
	MagickCore/policy.h \
	MagickCore/PreRvIcccm.c \
	MagickCore/PreRvIcccm.h \
	MagickCore/prepress.c \
	MagickCore/prepress.h \
	MagickCore/property.c \
	MagickCore/property.h \
	MagickCore/profile.c \
	MagickCore/profile.h \
	MagickCore/quantize.c \
	MagickCore/quantize.h \
	MagickCore/quantum.c \
	MagickCore/quantum.h \
	MagickCore/quantum-export.c \
	MagickCore/quantum-import.c \
	MagickCore/quantum-private.h \
	MagickCore/random.c \
	MagickCore/random_.h \
	MagickCore/random-private.h \
	MagickCore/registry.c \
	MagickCore/registry.h \
	MagickCore/resample.c \
	MagickCore/resample.h \
	MagickCore/resample-private.h \
	MagickCore/resize.c \
	MagickCore/resize.h \
	MagickCore/resize-private.h \
	MagickCore/resource.c \
	MagickCore/resource_.h \
	MagickCore/segment.c \
	MagickCore/segment.h \
	MagickCore/semaphore.c \
	MagickCore/semaphore.h \
	MagickCore/semaphore-private.h \
	MagickCore/shear.c \
	MagickCore/shear.h \
	MagickCore/signature.c \
	MagickCore/signature.h \
	MagickCore/signature-private.h \
	MagickCore/splay-tree.c \
	MagickCore/splay-tree.h \
	MagickCore/static.c \
	MagickCore/static.h \
	MagickCore/statistic.c \
	MagickCore/statistic.h \
	MagickCore/stream.c \
	MagickCore/stream.h \
	MagickCore/stream-private.h \
	MagickCore/string.c \
	MagickCore/string_.h \
	MagickCore/string-private.h \
	MagickCore/studio.h \
	MagickCore/thread.c \
	MagickCore/thread_.h \
	MagickCore/thread-private.h \
	MagickCore/timer.c \
	MagickCore/timer.h \
	MagickCore/token.c \
	MagickCore/token.h \
	MagickCore/token-private.h \
	MagickCore/transform.c \
	MagickCore/transform.h \
	MagickCore/threshold.c \
	MagickCore/threshold.h \
	MagickCore/type.c \
	MagickCore/type.h \
	MagickCore/utility.c \
	MagickCore/utility.h \
	MagickCore/version.c \
	MagickCore/version.h \
	MagickCore/vms.h \
	MagickCore/widget.c \
	MagickCore/widget.h \
	MagickCore/xml-tree.c \
	MagickCore/xml-tree.h \
	MagickCore/xwindow.c \
	MagickCore/xwindow.h 

MAGICK_FILTER_SRCS = \
	filters/analyze.c

WAND_SOURCES = \
	MagickWand/MagickWand.h \
	MagickWand/animate.c \
	MagickWand/animate.h \
	MagickWand/compare.c \
	MagickWand/compare.h \
	MagickWand/composite.c \
	MagickWand/composite.h \
	MagickWand/conjure.c \
	MagickWand/conjure.h \
	MagickWand/convert.c \
	MagickWand/convert.h \
	MagickWand/deprecate.h \
	MagickWand/deprecate.c \
	MagickWand/display.c \
	MagickWand/display.h \
	MagickWand/drawing-wand.c \
	MagickWand/drawing-wand.h \
	MagickWand/identify.c \
	MagickWand/identify.h \
	MagickWand/import.c \
	MagickWand/import.h \
	MagickWand/magick-image.c \
	MagickWand/magick-image.h \
	MagickWand/magick-property.c \
	MagickWand/magick-property.h \
	MagickWand/magick-wand.c \
	MagickWand/magick-wand.h \
	MagickWand/magick-wand-private.h \
	MagickWand/mogrify.c \
	MagickWand/mogrify.h \
	MagickWand/mogrify-private.h \
	MagickWand/montage.c \
	MagickWand/montage.h \
	MagickWand/pixel-iterator.c \
	MagickWand/pixel-iterator.h \
	MagickWand/pixel-wand.c \
	MagickWand/pixel-wand.h \
	MagickWand/pixel-wand-private.h \
	MagickWand/stream.c \
	MagickWand/stream.h \
	MagickWand/studio.h \
	MagickWand/wand.c \
	MagickWand/wand.h \
	MagickWand/wand-view.c \
	MagickWand/wand-view.h 

wand_drawtest_SOURCES = wand/drawtest.c
wand_wandtest_SOURCES = wand/wandtest.c

Magick___lib_libMagick___la_SOURCES = \
	Magick++/lib/Blob.cpp \
	Magick++/lib/BlobRef.cpp \
	Magick++/lib/CoderInfo.cpp \
	Magick++/lib/Color.cpp \
	Magick++/lib/Drawable.cpp \
	Magick++/lib/Exception.cpp \
	Magick++/lib/Functions.cpp \
	Magick++/lib/Geometry.cpp \
	Magick++/lib/Image.cpp \
	Magick++/lib/ImageRef.cpp \
	Magick++/lib/Montage.cpp \
	Magick++/lib/Options.cpp \
	Magick++/lib/Pixels.cpp \
	Magick++/lib/STL.cpp \
	Magick++/lib/Thread.cpp \
	Magick++/lib/TypeMetric.cpp \
	Magick++/lib/Magick++.h \
	Magick++/lib/Magick++/Blob.h \
	Magick++/lib/Magick++/BlobRef.h \
	Magick++/lib/Magick++/CoderInfo.h \
	Magick++/lib/Magick++/Color.h \
	Magick++/lib/Magick++/Drawable.h \
	Magick++/lib/Magick++/Exception.h \
	Magick++/lib/Magick++/Functions.h \
	Magick++/lib/Magick++/Geometry.h \
	Magick++/lib/Magick++/Image.h \
	Magick++/lib/Magick++/ImageRef.h \
	Magick++/lib/Magick++/Include.h \
	Magick++/lib/Magick++/Montage.h \
	Magick++/lib/Magick++/Options.h \
	Magick++/lib/Magick++/Pixels.h \
	Magick++/lib/Magick++/STL.h \
	Magick++/lib/Magick++/Thread.h \
	Magick++/lib/Magick++/TypeMetric.h

Magick___demo_analyze_SOURCES = Magick++/demo/analyze.cpp
Magick___demo_button_SOURCES = Magick++/demo/button.cpp
Magick___demo_demo_SOURCES = Magick++/demo/demo.cpp
Magick___demo_detrans_SOURCES = Magick++/demo/detrans.cpp
Magick___demo_flip_SOURCES = Magick++/demo/flip.cpp
Magick___demo_gravity_SOURCES = Magick++/demo/gravity.cpp
Magick___demo_piddle_SOURCES = Magick++/demo/piddle.cpp
Magick___demo_shapes_SOURCES = Magick++/demo/shapes.cpp
Magick___demo_zoom_SOURCES = Magick++/demo/zoom.cpp
Magick___tests_appendImages_SOURCES = Magick++/tests/appendImages.cpp
Magick___tests_attributes_SOURCES = Magick++/tests/attributes.cpp
Magick___tests_averageImages_SOURCES = Magick++/tests/averageImages.cpp
Magick___tests_coalesceImages_SOURCES = Magick++/tests/coalesceImages.cpp
Magick___tests_coderInfo_SOURCES = Magick++/tests/coderInfo.cpp
Magick___tests_color_SOURCES = Magick++/tests/color.cpp
Magick___tests_colorHistogram_SOURCES = Magick++/tests/colorHistogram.cpp
Magick___tests_exceptions_SOURCES = Magick++/tests/exceptions.cpp
Magick___tests_montageImages_SOURCES = Magick++/tests/montageImages.cpp
Magick___tests_morphImages_SOURCES = Magick++/tests/morphImages.cpp
Magick___tests_readWriteBlob_SOURCES = Magick++/tests/readWriteBlob.cpp
Magick___tests_readWriteImages_SOURCES = Magick++/tests/readWriteImages.cpp
utilities_animate_SOURCES = utilities/animate.c
utilities_compare_SOURCES = utilities/compare.c
utilities_composite_SOURCES = utilities/composite.c
utilities_conjure_SOURCES = utilities/conjure.c
utilities_convert_SOURCES = utilities/convert.c
utilities_display_SOURCES = utilities/display.c
utilities_identify_SOURCES = utilities/identify.c
utilities_import_SOURCES = utilities/import.c
utilities_mogrify_SOURCES = utilities/mogrify.c
utilities_montage_SOURCES = utilities/montage.c
utilities_stream_SOURCES = utilities/stream.c

# MAGICKWAND_LIBS = libMagickWand.so
# MAGICKCORE_LIBS = libMagickCore.so

# utilities_convert_DEPENDENCIES = $(MAGICKCORE_LIBS) $(MAGICKWAND_LIBS)

# LOCAL_MODULE := MagickWand
# include $(BUILD_SHARED_LIBRARY)

# LOCAL_MODULE := Magick++
# include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libMagickCore
LOCAL_SRC_FILES := 	\
	$(MAGICK_BASE_SRCS)	\
	$(MAGICK_PLATFORM_SRCS)	\
	$(MAGICK_CODER_SRCS)	\
	$(MAGICK_FILTER_SRCS)
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES +=	\
	external/freetype/include	\
	external/zlib/	\
	external/bzip2/	\
	external/libxml2/include	\
	external/icu4c/common	\
	external/jpeg/	\
	external/libpng/
LOCAL_STATIC_LIBRARIES += 	\
	libft2	\
	libz	\
	libbz	\
	libxml2	\
	libpng
LOCAL_SHARED_LIBRARIES +=	\
	libjpeg	\
	libicuuc
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libMagickWand
LOCAL_SRC_FILES := $(WAND_SOURCES)
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES +=	\
	libMagickCore
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := convert
LOCAL_SRC_FILES := $(utilities_convert_SOURCES)
LOCAL_SHARED_LIBRARIES +=	\
	libMagickCore	\
	libMagickWand
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)
