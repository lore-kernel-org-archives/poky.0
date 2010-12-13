Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40B114C81212
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 13:38:59 -0600 (CST)
Received: from msp-mhatle-lx2.wrs.com (msp-mhatle-lx2.wrs.com [172.25.34.61])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDJcmLw002800; 
	Mon, 13 Dec 2010 11:38:56 -0800 (PST)
From: Mark Hatle <mark.hatle@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 13 Dec 2010 13:39:02 -0600
Message-Id: <327a1ad244d18b856ae0ccd7491e688a74618561.1292268594.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.2.3
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 7/7] recipes-multimedia: Update SUMMARY and DESCRIPTIONS
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 13 Dec 2010 19:38:59 -0000

Add SUMMARY and update DESCRIPTIONS as appropriate

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-multimedia/flac/flac_1.2.1.bb         |    1 +
 .../gstreamer/gstreamer_0.10.30.bb                 |    1 +
 meta/recipes-multimedia/libogg/libogg_1.2.1.bb     |    1 +
 .../libtheora/libtheora_1.1.1.bb                   |    1 +
 .../libvorbis/libvorbis_1.3.2.bb                   |    1 +
 .../musicbrainz/libmusicbrainz_3.0.3.bb            |    1 +
 .../pulseaudio/libcanberra_0.10.bb                 |    1 +
 meta/recipes-multimedia/speex/speex_1.2rc1.bb      |    1 +
 meta/recipes-multimedia/tremor/tremor_20101027.bb  |    1 +
 9 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-multimedia/flac/flac_1.2.1.bb b/meta/recipes-multimedia/flac/flac_1.2.1.bb
index d41d94e..92bcec6 100644
--- a/meta/recipes-multimedia/flac/flac_1.2.1.bb
+++ b/meta/recipes-multimedia/flac/flac_1.2.1.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Free Lossless Audio Codec"
 DESCRIPTION = "FLAC stands for Free Lossless Audio Codec, an audio format similar to MP3, but lossless."
 HOMEPAGE = "http://flac.sourceforge.net/"
 BUGTRACKER = "http://sourceforge.net/tracker/?group_id=13478&atid=113478"
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
index 7d2bfb8..923365f 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
@@ -1,3 +1,4 @@
+SUMMARY = "GStreamer multimedia framework"
 DESCRIPTION = "GStreamer is a multimedia framework for encoding and decoding video and sound. \
 It supports a wide range of formats including mp3, ogg, avi, mpeg and quicktime."
 HOMEPAGE = "http://gstreamer.freedesktop.org/"
diff --git a/meta/recipes-multimedia/libogg/libogg_1.2.1.bb b/meta/recipes-multimedia/libogg/libogg_1.2.1.bb
index 7223e4e..37b6c09 100644
--- a/meta/recipes-multimedia/libogg/libogg_1.2.1.bb
+++ b/meta/recipes-multimedia/libogg/libogg_1.2.1.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Ogg bitstream and framing libary"
 DESCRIPTION = "libogg is the bitstream and framing library \
 for the Ogg project. It provides functions which are \
 necessary to codec libraries like libvorbis."
diff --git a/meta/recipes-multimedia/libtheora/libtheora_1.1.1.bb b/meta/recipes-multimedia/libtheora/libtheora_1.1.1.bb
index 0dc68e9..18cb168 100644
--- a/meta/recipes-multimedia/libtheora/libtheora_1.1.1.bb
+++ b/meta/recipes-multimedia/libtheora/libtheora_1.1.1.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Theora Video Codec"
 DESCRIPTION = "The libtheora reference implementation provides the standard encoder and decoder under a BSD license."
 HOMEPAGE = "http://xiph.org/"
 BUGTRACKER = "https://trac.xiph.org/newticket"
diff --git a/meta/recipes-multimedia/libvorbis/libvorbis_1.3.2.bb b/meta/recipes-multimedia/libvorbis/libvorbis_1.3.2.bb
index d30057f..5961d9d 100644
--- a/meta/recipes-multimedia/libvorbis/libvorbis_1.3.2.bb
+++ b/meta/recipes-multimedia/libvorbis/libvorbis_1.3.2.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Ogg Vorbis Audio Codec"
 DESCRIPTION = "Ogg Vorbis is a high-quality lossy audio codec \
 that is free of intellectual property restrictions. libvorbis \
 is the main vorbis codec library."
diff --git a/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb b/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
index 8f6b1ba..080c1bf 100644
--- a/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
+++ b/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
@@ -1,3 +1,4 @@
+SUMMARY = "MusicBrainz Client"
 DESCRIPTION = "The MusicBrainz client is a library which can be built into other programs.  The library allows you to access the data held on the MusicBrainz server."
 HOMEPAGE = "http://musicbrainz.org"
 LICENSE = "LGPLv2.1+"
diff --git a/meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb b/meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb
index fc7ffe9..a94be20 100644
--- a/meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb
+++ b/meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Implementation of XDG Sound Theme and Name Specifications"
 DESCRIPTION = "Libcanberra is an implementation of the XDG Sound Theme and Name Specifications, for generating event sounds on free desktops."
 LICENSE = "LGPLv2.1"
 LIC_FILES_CHKSUM = "file://LGPL;md5=2d5025d4aa3495befef8f17206a5b0a1 \
diff --git a/meta/recipes-multimedia/speex/speex_1.2rc1.bb b/meta/recipes-multimedia/speex/speex_1.2rc1.bb
index 424f212..fe46a00 100644
--- a/meta/recipes-multimedia/speex/speex_1.2rc1.bb
+++ b/meta/recipes-multimedia/speex/speex_1.2rc1.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Speech Audio Codec"
 DESCRIPTION = "Speex is an Open Source/Free Software patent-free audio compression format designed for speech."
 HOMEPAGE = "http://www.speex.org"
 SECTION = "libs"
diff --git a/meta/recipes-multimedia/tremor/tremor_20101027.bb b/meta/recipes-multimedia/tremor/tremor_20101027.bb
index e5eab6c..c0a2464 100644
--- a/meta/recipes-multimedia/tremor/tremor_20101027.bb
+++ b/meta/recipes-multimedia/tremor/tremor_20101027.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Fixed-point decoder"
 DESCRIPTION = "tremor is a fixed point implementation of the vorbis codec."
 SECTION = "libs"
 PRIORITY = "optional"
-- 
1.7.2.2


