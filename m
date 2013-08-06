Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EA98E0156E
	for <poky@yoctoproject.org>; Tue,  6 Aug 2013 02:54:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Aug 2013 02:54:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,825,1367996400"; d="scan'208";a="376843912"
Received: from ema-vostro-460.rb.intel.com ([10.237.105.147])
	by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2013 02:54:47 -0700
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Tue,  6 Aug 2013 13:02:52 +0300
Message-Id: <1375783372-13774-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] package_regex.inc: Add/Update regexes
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 Aug 2013 09:54:49 -0000

Update REGEX_URI and REGEX for intltool package.

Add REGEX for filtering unstable versions for the following packages:
        * gstreamer
        * gstreamer1.0
        * gst-ffmpeg
        * gst-fluendo-mpegdemux
        * gst-fluendo-mp3
        * gstreamer1.0-plugins-base
        * gst-plugins-base
        * gstreamer1.0-plugins-bad
        * gst-plugins-bad
        * gst-plugins-gl
        * gstreamer1.0-plugins-good
        * gst-plugins-good
        * gstreamer1.0-libav
        * gstreamer1.0-omx
        * gst-openmax
        * gstreamer1.0-plugins-ugly
        * gst-plugins-ugly

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |   26 ++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 1572729..b03601d 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -81,6 +81,24 @@ REGEX_pn-gcc-crosssdk = "[hH][rR][eE][fF]=\"ftp://ftp.gnu.org:21/gnu/gcc/gcc\-(?
 REGEX_URI_pn-glew = "http://sourceforge.net/projects/glew/files/glew"
 REGEX_pn-glew  = " [hH][rR][eE][fF]=\"/projects/glew/files/glew/(?P<pver>((\d+[\.\-_]*)+))/\""
 #REGEX_pn-gnutls = "ftp://ftp.gnutls.org/gcrypt/gnutls/"
+REGEX_pn-gstreamer = "[hH][rR][eE][fF]=\"gstreamer\-(?P<pver>(0\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gstreamer1.0 = "[hH][rR][eE][fF]=\"gstreamer\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gst-ffmpeg = "[hH][rR][eE][fF]=\"gst-ffmpeg\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gst-fluendo-mpegdemux = "[hH][rR][eE][fF]=\"gst-fluendo-mpegdemux\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gst-fluendo-mp3 = "[hH][rR][eE][fF]=\"gst-fluendo-mp3\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gstreamer1.0-plugins-base = "[hH][rR][eE][fF]=\"gst\-plugins\-base\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gst-plugins-base = "[hH][rR][eE][fF]=\"gst\-plugins\-base\-(?P<pver>(0\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gstreamer1.0-plugins-bad = "[hH][rR][eE][fF]=\"gst\-plugins\-bad\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gst-plugins-bad = "[hH][rR][eE][fF]=\"gst\-plugins\-bad\-(?P<pver>(0\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gst-plugins-gl = "[hH][rR][eE][fF]=\"gst\-plugins\-gl\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gstreamer1.0-plugins-good = "[hH][rR][eE][fF]=\"gst\-plugins\-good\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gst-plugins-good = "[hH][rR][eE][fF]=\"gst\-plugins\-good\-(?P<pver>(0\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gstreamer1.0-libav = "[hH][rR][eE][fF]=\"gst\-libav\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gstreamer1.0-omx = "[hH][rR][eE][fF]=\"gst\-omx\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gst-openmax = "[hH][rR][eE][fF]=\"gst\-openmax\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gstreamer1.0-plugins-ugly = "[hH][rR][eE][fF]=\"gst\-plugins\-ugly\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+REGEX_pn-gst-plugins-ugly = "[hH][rR][eE][fF]=\"gst\-plugins\-ugly\-(?P<pver>(0\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
+
 REGEX_URI_pn-hdparm = "http://sourceforge.net/projects/hdparm/files/hdparm/"
 REGEX_pn-hdparm = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/hdparm/files/hdparm/hdparm-(?P<pver>((\d+[\.\-_]*)+)).tar.gz/download\""
 REGEX_URI_pn-icu = "http://site.icu-project.org/download"
@@ -310,10 +328,10 @@ REGEX_URI_pn-createrepo-native = "http://createrepo.baseurl.org/download/"
 REGEX_pn-createrepo-native = "[hH][rR][eE][fF]=\"createrepo\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-apmd = "ftp://ftp.debian.org/debian/pool/main/a/apmd/"
 REGEX_pn-apmd = "[hH][rR][eE][fF]=\"ftp://ftp.debian.org:21/debian/pool/main/a/apmd/apmd_(?P<pver>((\d+[\.\-_]*)+))\.(orig\.tar|diff)\.gz\""
-REGEX_URI_pn-intltool = "https://launchpad.net/intltool/trunk"
-REGEX_pn-intltool = "[hH][rR][eE][fF]=\"/intltool/\+milestone/(?P<pver>((\d+[\.\-_]*)+))\""
-REGEX_URI_pn-intltool-native = "https://launchpad.net/intltool/trunk"
-REGEX_pn-intltool-native = "[hH][rR][eE][fF]=\"/intltool/\+milestone/(?P<pver>((\d+[\.\-_]*)+))\""
+REGEX_URI_pn-intltool = "https://launchpad.net/intltool/+download"
+REGEX_pn-intltool = "[hH][rR][eE][fF]=\"https://launchpad.net/intltool/trunk/(?P<pver>((\d+[\.\-_]*)+))/\+download/intltool\-(\d+[\.\-_]*)+\.tar\.gz\""
+REGEX_URI_pn-intltool-native = "https://launchpad.net/intltool/+download"
+REGEX_pn-intltool-native = "[hH][rR][eE][fF]=\"https://launchpad.net/intltool/trunk/(?P<pver>((\d+[\.\-_]*)+))/\+download/intltool\-(\d+[\.\-_]*)+\.tar\.gz\""
 REGEX_URI_pn-distcc = "http://code.google.com/p/distcc/downloads/list"
 REGEX_pn-distcc = "[hH][rR][eE][fF]=\"//distcc.googlecode.com/files/distcc-(?P<pver>((\d+[\.\-_]*)+))\.tar\.bz2\""
 REGEX_URI_pn-git = "http://code.google.com/p/git-core/downloads/list"
-- 
1.7.9.5


