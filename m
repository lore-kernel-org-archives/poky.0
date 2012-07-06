Return-Path: <cristian.iorga@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 982EFE01396
	for <poky@yoctoproject.org>; Fri,  6 Jul 2012 07:44:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Jul 2012 07:44:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119540874"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Jul 2012 07:44:28 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 6 Jul 2012 15:44:26 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.176]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.240]) with mapi id
	14.01.0355.002; Fri, 6 Jul 2012 15:44:26 +0100
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [PATCH] Upstream tracking partial updates - observations while
	doing the updates
Thread-Index: AQHNW4XXzXgyfqqvpkK+viZM6JsNLw==
Date: Fri, 6 Jul 2012 14:44:26 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB16165C71@IRSMSX102.ger.corp.intel.com>
References: <1341585314-3345-1-git-send-email-cristian.iorga@intel.com>
In-Reply-To: <1341585314-3345-1-git-send-email-cristian.iorga@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: [PATCH] Upstream tracking partial updates - observations while doing the updates
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
X-List-Received-Date: Fri, 06 Jul 2012 14:44:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

My observations related to the upstream tracking activity:

1.I don't know how to proceed with matchbox-keyboard.
2. Idem for web-webkit.
Please advise.

3. usbutils recipe seems broken. Http 404 while trying to access the archiv=
e. Will investigate further. Our usbutils seems to be an old/unspecified/ob=
solete version. No exact package found.
Please advise.

4. kmod version is now 9. Not added to upstream_tracking.inc. Please advise=
.

5. btrfs is git access only. Needs to checked later on.

6. python-scons not found in upstream_tracking.inc. Please advise.

7. libgsmd not updated; needs to be checked via SVN. Is deprecated -> shoul=
d be replaced with something else; please advise

8. tinylogin is now integrated into busybox; please advise.

Regards,
Cristian Iorga

Cristian Iorga
Linux Software Engineer
Open Source Technology Center
System Software Division Romania


-----Original Message-----
From: Iorga, Cristian=20
Sent: Friday, July 06, 2012 5:35 PM
To: poky@yoctoproject.org
Cc: Iorga, Cristian
Subject: [PATCH] Upstream tracking partial updates

Manually checked packages for updates.
Changed the necessary fields with updated values.
Added missing recording where necessary.
Beautified some packages info.
Removed small typos in distro_alias.inc and recipe_color.inc.
All changes easy detectable in the diff.

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc    |    2 +-
 meta-yocto/conf/distro/include/recipe_color.inc    |    4 +-
 .../conf/distro/include/upstream_tracking.inc      |  111 ++++++++++++----=
----
 3 files changed, 68 insertions(+), 49 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/c=
onf/distro/include/distro_alias.inc
index 0f97986..0c0684b 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -1,7 +1,7 @@
 #
 # This is a list for tracking status of package relative to Major  # distr=
ibutions such as Fedora, Ubuntu, Debian, ... The package -# name is the maj=
or distribution equivlant to the name used in oe-core
+# name is the major distribution equivalent to the name used in oe-core
 #
 # The format is as a bitbake variable override for each recipe  # diff --g=
it a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/dist=
ro/include/recipe_color.inc
index 9dc5dd1..b3f9b46 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -1,6 +1,6 @@
 # This is a "burndown" list of recipes that need to be reviewed  # and cor=
rected based on their color they may have some issues.
-# If a recipe is fixed and OK, then their entry can be removed.
+# If a recipe is fixed and OK, then its entry can be removed.
 #
 # The format is as a bitbake variable override for each recipe  # @@ -13,7=
 +13,7 @@  # Please keep this list in alphabetical order.
 #
=20
-# Default for all recipes not speficied here
+# Default for all recipes not specified here
 RECIPE_COLOR =3D "green"
=20
 RECIPE_COLOR_pn-aaina =3D "red"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yo=
cto/conf/distro/include/upstream_tracking.inc
index fa46a5a..6a67734 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -21,7 +21,7 @@ RECIPE_UPSTREAM_VERSION_pn-acl =3D "2.2.49"
 RECIPE_UPSTREAM_DATE_pn-acl =3D "Nov 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-acpid =3D "1.0.10"
 RECIPE_UPSTREAM_DATE_pn-acpid =3D "Apr 22, 2009"
-CHECK_DATE_pn-acpid =3D "Apr 25, 2012"
+CHECK_DATE_pn-acpid =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-adt-installer =3D "1.1"
 RECIPE_UPSTREAM_DATE_pn-alsa-utils=3D"Jan 25, 2012"
 RECIPE_UPSTREAM_VERSION_pn-apmd =3D "3.2.2-14"
@@ -61,8 +61,8 @@ RECIPE_UPSTREAM_VERSION_pn-bdwgc =3D "20110107"
 RECIPE_NO_UPDATE_REASON_pn-bdwgc =3D "20110107 is same as the 7.2alpha5"
 CHECK_DATE_pn-bdwgc =3D "Feb 01, 2012"
 RECIPE_UPSTREAM_VERSION_pn-beecrypt =3D "4.2.1"
-CHECK_DATE_pn-beecrypt =3D "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-beecrypt =3D "Jul 12, 2009"
+CHECK_DATE_pn-beecrypt =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-bigreqsproto=3D"1.1.0"
 RECIPE_UPSTREAM_DATE_pn-bigreqsproto=3D"Aug 26, 2009"
 RECIPE_UPSTREAM_VERSION_pn-bind =3D "9.7.2-P3"
@@ -145,7 +145,8 @@ CHECK_DATE_pn-cups =3D "Sep 28, 2011"
 RECIPE_UPSTREAM_VERSION_pn-curl =3D "7.23.1"
 RECIPE_UPSTREAM_DATE_pn-curl =3D "Nov 17, 2011"
 RECIPE_UPSTREAM_VERSION_pn-cwautomacros =3D "20110201"
-CHECK_DATE_pn-cwautomacros =3D "Apr 25, 2012"
+RECIPE_UPSTREAM_DATE_pn-cwautomacros =3D "Feb 01, 2011"
+CHECK_DATE_pn-cwautomacros =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-cwautomacros =3D "Feb 01, 2011"
 RECIPE_UPSTREAM_VERSION_pn-damageproto =3D "1.2.1"
 RECIPE_UPSTREAM_DATE_pn-damageproto =3D "Oct 29, 2010"
@@ -189,8 +190,8 @@ RECIPE_UPSTREAM_DATE_pn-ed =3D "Jan 01, 2012"
 RECIPE_UPSTREAM_VERSION_pn-eds-tools =3D "git"
 RECIPE_UPSTREAM_VERSION_pn-eee-acpi-scripts =3D "1.1.12+9d4cdedca25b396405=
f8587f9c4fbf8229e041c2"
 RECIPE_UPSTREAM_VERSION_pn-eggdbus =3D "0.6"
-CHECK_DATE_pn-eggdbus =3D "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-eggdbus =3D "Nov 01, 2009"
+CHECK_DATE_pn-eggdbus =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-eglibc =3D "git:16540"
 CHECK_DATE_pn-eglibc =3D "Jan 01, 2012"
 RECIPE_UPSTREAM_VERSION_pn-elfutils=3D"0.148"
@@ -219,10 +220,12 @@ RECIPE_UPSTREAM_DATE_pn-findutils =3D "Jun 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-fixesproto =3D "5.0"
 RECIPE_UPSTREAM_DATE_pn-fixesproto =3D "Mar 8, 2011"
 RECIPE_UPSTREAM_VERSION_pn-flac=3D"1.2.1"
-CHECK_DATE_pn-flac =3D "Apr 25, 2012"
+RECIPE_UPSTREAM_DATE_pn-flac=3D "Sep 8, 2007"
+CHECK_DATE_pn-flac =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-flac=3D"Sep 16, 2007"
-RECIPE_UPSTREAM_VERSION_pn-flex=3D"2.5.35"
-CHECK_DATE_pn-flex =3D "Feb 01, 2012"
+RECIPE_UPSTREAM_VERSION_pn-flex =3D "2.5.35"
+RECIPE_UPSTREAM_DATE_pn-flex =3D "Feb 02, 2008"
+CHECK_DATE_pn-flex =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-font-alias =3D "Oct 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-fontcacheproto =3D "0.1.3"
 RECIPE_UPSTREAM_DATE_pn-fontcacheproto =3D "Oct 01, 2009"
@@ -235,9 +238,9 @@ RECIPE_UPSTREAM_DATE_pn-formfactor =3D "n/a"
 RECIPE_UPSTREAM_VERSION_pn-fotowall=3D""
 RECIPE_UPSTREAM_VERSION_pn-fotowall=3D"0.9"
 RECIPE_UPSTREAM_DATE_pn-fotowall=3D"Dec 08, 2009"
-RECIPE_UPSTREAM_VERSION_pn-freetype =3D "2.4.9"
-CHECK_DATE_pn-freetype =3D "Apr 25, 2012"
-RECIPE_UPSTREAM_DATE_pn-freetype =3D "Mar 08, 2012"
+RECIPE_UPSTREAM_VERSION_pn-freetype =3D "2.4.10"
+RECIPE_UPSTREAM_DATE_pn-freetype =3D "Jun 15, 2012"
+CHECK_DATE_pn-freetype =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-fstests=3D"0.0+svnr426"
 CHECK_DATE_pn-fstests =3D "Jul 06, 2011"
 RECIPE_UPSTREAM_VERSION_pn-fuse =3D "2.8.4"
@@ -248,8 +251,8 @@ RECIPE_UPSTREAM_VERSION_pn-gamin =3D "0.1.10"
 RECIPE_UPSTREAM_DATE_pn-gamin =3D "Nov 01, 2008"
 RECIPE_UPSTREAM_VERSION_pn-gawk =3D "4.0.0"
 RECIPE_UPSTREAM_VERSION_pn-gcc-runtime =3D "4.6.2+git"
-RECIPE_UPSTREAM_VERSION_pn-gcc=3D"4.6.2+git"
-CHECK_DATE_pn-gcc =3D "Feb 01, 2012"
+RECIPE_UPSTREAM_VERSION_pn-gcc=3D"4.7.1+svnr188658"
+CHECK_DATE_pn-gcc =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-gccmakedep =3D "1.0.2"
 RECIPE_UPSTREAM_DATE_pn-gccmakedep =3D "May 19, 2006"
 RECIPE_UPSTREAM_DATE_pn-gconf-dbus =3D "n/a"
@@ -320,8 +323,8 @@ RECIPE_UPSTREAM_DATE_pn-hal-info =3D "Nov 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-hal =3D "0.5.14"
 RECIPE_UPSTREAM_DATE_pn-hal =3D "Nov 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-hdparm =3D "9.39"
-CHECK_DATE_pn-hdparm =3D "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-hdparm =3D "Feb 03, 2012"
+CHECK_DATE_pn-hdparm =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-hicolor-icon-theme =3D "Sep 01, 2009"
 RECIPE_UPSTREAM_DATE_pn-hostap-utils=3D"Dec 03, 2008"
 RECIPE_UPSTREAM_VERSION_pn-icu =3D "3.6"
@@ -344,7 +347,9 @@ RECIPE_UPSTREAM_DATE_pn-iproute2 =3D "Mar 20, 2012"
 RECIPE_UPSTREAM_VERSION_pn-iptables =3D "1.4.13"
 RECIPE_UPSTREAM_DATE_pn-iptables =3D "Apr 28, 2012"
 RECIPE_UPSTREAM_VERSION_pn-iputils=3D"s20100418"
+RECIPE_UPSTREAM_VERSION_pn-irda-utils =3D "0.9.18"
 RECIPE_UPSTREAM_DATE_pn-irda-utils=3D"Jul 10, 2006"
+CHECK_DATE_pn-irda-utils =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-iso-codes =3D "3.16"
 RECIPE_UPSTREAM_VERSION_pn-jpeg =3D "8c"
 CHECK_DATE_pn-jpeg =3D "Dec 24, 2011"
@@ -364,8 +369,8 @@ RECIPE_UPSTREAM_VERSION_pn-keymaps =3D "1.0"
 RECIPE_UPSTREAM_DATE_pn-keymaps =3D "n/a"
 RECIPE_UPSTREAM_VERSION_pn-kf =3D "n/a"
 RECIPE_UPSTREAM_VERSION_pn-lame =3D "3.99.5"
-CHECK_DATE_pn-lame =3D "Apr 18, 2012"
 RECIPE_UPSTREAM_DATE_pn-lame =3D "Feb 28, 2012"
+CHECK_DATE_pn-lame =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-latencytop =3D "0.5"
 CHECK_DATE_pn-latencytop =3D "Apr 20, 2011"
 RECIPE_UPSTREAM_DATE_pn-latencytop =3D "Apr 28, 2009"
@@ -419,8 +424,8 @@ RECIPE_UPSTREAM_VERSION_pn-libffi  =3D "3.0.10"
 RECIPE_NO_UPDATE_REASON_pn-libffi=3D"3.0.11 is still RC"
 RECIPE_UPSTREAM_DATE_pn-libffi =3D "Aug 23, 2011"
 RECIPE_UPSTREAM_VERSION_pn-libfm =3D "0.1.17"
-CHECK_DATE_pn-libfm =3D "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-libfm =3D "Oct 24, 2011"
+CHECK_DATE_pn-libfm =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libfontenc =3D "1.0.5"
 RECIPE_UPSTREAM_DATE_pn-libfontenc =3D "Aug 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-libfribidi =3D "0.19.2"
@@ -443,10 +448,11 @@ RECIPE_UPSTREAM_DATE_pn-libgpg-error =3D "Jul 01, 201=
0"
 RECIPE_UPSTREAM_VERSION_pn-libgsf =3D "1.14.18"
 RECIPE_UPSTREAM_VERSION_pn-libgsmd =3D "5394"
 RECIPE_UPSTREAM_DATE_pn-libgsmd =3D"Aug 06, 2009"
-CHECK_DATE_pn-libgsmd =3D "Jun 29, 2011"
+CHECK_DATE_pn-libgsmd =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libgtkstylus =3D "0.5"
 RECIPE_UPSTREAM_VERSION_pn-libical =3D "0.48"
-CHECK_DATE_pn-libical =3D "Apr 25, 2012"
+RECIPE_UPSTREAM_DATE_pn-libical =3D"Dec 13, 2011"
+CHECK_DATE_pn-libical =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-libical =3D "Dec 13, 2011"
 RECIPE_UPSTREAM_VERSION_pn-libice =3D "1.0.6"
 RECIPE_UPSTREAM_DATE_pn-libice =3D "Aug 01, 2009"
@@ -483,8 +489,8 @@ RECIPE_UPSTREAM_DATE_pn-libogg=3D"Aug 04, 2011"
 RECIPE_UPSTREAM_VERSION_pn-liboil =3D "0.3.17"
 RECIPE_UPSTREAM_DATE_pn-liboil =3D "Feb 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-libomxil =3D "0.9.3"
-CHECK_DATE_pn-libomxil =3D "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-libomxil =3D "May 20, 2011"
+CHECK_DATE_pn-libomxil =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libopensync-plugin-evolution2 =3D "0.39"
 RECIPE_UPSTREAM_VERSION_pn-libopensync =3D "0.39"
 RECIPE_UPSTREAM_DATE_pn-libowl-av =3D "Dec 01, 2008"
@@ -497,8 +503,9 @@ RECIPE_UPSTREAM_VERSION_pn-libpcap=3D"1.2.0"
 RECIPE_UPSTREAM_DATE_pn-libpcap=3D"Jul 24, 2011"
 RECIPE_UPSTREAM_VERSION_pn-libpciaccess =3D "0.13.1"
 RECIPE_UPSTREAM_DATE_pn-libpciaccess =3D "Apr 09, 2012"
-RECIPE_UPSTREAM_VERSION_pn-libpcre =3D "8.21"
-CHECK_DATE_pn-libpcre =3D "Feb 01, 2012"
+RECIPE_UPSTREAM_VERSION_pn-libpcre =3D "8.30"
+RECIPE_UPSTREAM_DATE_pn-libpcre =3D "Mar 01, 2012"
+CHECK_DATE_pn-libpcre =3D "Jul 06, 2012"
 RECIPE_NO_UPDATE_REASON_pn-libpng =3D "1.4.3 and later changes the API and=
 breaks libmatchbox. Sticking with the 1.2.x series instead"
 RECIPE_UPSTREAM_VERSION_pn-libpng =3D "1.5.10"
 RECIPE_UPSTREAM_DATE_pn-libpng =3D "Mar 29, 2012"
@@ -510,8 +517,8 @@ RECIPE_UPSTREAM_DATE_pn-libpthread-stubs =3D "Oct 01, 2=
009"
 RECIPE_UPSTREAM_VERSION_pn-librsvg =3D "2.32.1"
 RECIPE_UPSTREAM_DATE_pn-librsvg =3D "Nov 13, 2010"
 RECIPE_UPSTREAM_VERSION_pn-libsamplerate0 =3D "0.1.8"
-CHECK_DATE_pn-libsamplerate0 =3D "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-libsamplerate0 =3D "Aug 15, 2011"
+CHECK_DATE_pn-libsamplerate0 =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libsdl =3D "1.2.15"
 CHECK_DATE_pn-libsdl =3D "Mar 14, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libsm =3D "1.1.1"
@@ -527,8 +534,8 @@ RECIPE_NO_UPDATE_REASON_pn-libtheora =3D "1.1.1 is late=
st stable release not 1.2.0  RECIPE_UPSTREAM_VERSION_pn-libtheora =3D "1.2.=
0"
 RECIPE_UPSTREAM_VERSION_pn-libtimedate-perl =3D "1.20"
 RECIPE_UPSTREAM_VERSION_pn-libtirpc =3D "0.2.2"
-CHECK_DATE_pn-libtirpc =3D "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-libtirpc =3D "May 02, 2011"
+CHECK_DATE_pn-libtirpc =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libtool=3D"2.4.2"
 CHECK_DATE_pn-libtool =3D "Nov 28, 2011"
 RECIPE_UPSTREAM_VERSION_pn-libunique =3D "2.91.4"
@@ -668,15 +675,17 @@ RECIPE_UPSTREAM_VERSION_pn-mc =3D "4.8.1"
 RECIPE_UPSTREAM_DATE_pn-mc =3D "Dec 1, 2011"
 RECIPE_UPSTREAM_VERSION_pn-mdadm =3D "3.2.5"
 RECIPE_UPSTREAM_DATE_pn-mdadm =3D "May 18, 2012"
-RECIPE_UPSTREAM_DATE_pn-menu-cache =3D "Feb 01, 2010"
+RECIPE_UPSTREAM_VERSION_pn-menu-cache =3D "0.3.3"
+RECIPE_UPSTREAM_DATE_pn-menu-cache =3D "May 20, 2012"
+CHECK_DATE_pn-minicom =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-mesa-dri=3D"Jun 17, 2010"
 RECIPE_UPSTREAM_VERSION_pn-meta-ide-support =3D "check"
 RECIPE_UPSTREAM_VERSION_pn-metacity =3D "2.30.3"
 RECIPE_UPSTREAM_VERSION_pn-mingetty =3D "1.08"
 CHECK_DATE_pn-mingetty =3D "Jan 12, 2012"
 RECIPE_UPSTREAM_VERSION_pn-minicom =3D "2.6.1"
-CHECK_DATE_pn-minicom =3D "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-minicom =3D "Feb 11, 2012"
+CHECK_DATE_pn-minicom =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-mkfontdir=3D"1.0.7"
 RECIPE_UPSTREAM_DATE_pn-mkfontdir=3D"Feb 10, 2012"
 RECIPE_UPSTREAM_VERSION_pn-mkfontscale=3D"1.10.0"
@@ -688,8 +697,9 @@ RECIPE_UPSTREAM_DATE_pn-modutils-initscripts =3D "n/a"
 RECIPE_UPSTREAM_VERSION_pn-mpeg2dec =3D "0.5.1"
 CHECK_DATE_pn-mpeg2dec =3D "May 24, 2011"
 RECIPE_NO_UPDATE_REASON_pn-mpeg2dec =3D "Why are we currently at 0.4.1?"
-RECIPE_UPSTREAM_VERSION_pn-mpfr=3D"3.1.0"
-CHECK_DATE_pn-mpfr =3D "Jan 10, 2012"
+RECIPE_UPSTREAM_VERSION_pn-mpfr=3D"3.1.1"
+RECIPE_UPSTREAM_DATE_pn-mpfr =3D "Jul 04, 2012"
+CHECK_DATE_pn-mpfr =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-msynctool =3D "0.38"
 RECIPE_UPSTREAM_DATE_pn-msynctool =3D "Nov 11, 2008"
 RECIPE_UPSTREAM_DATE_pn-mtd-utils =3D "Dec 17, 2011"
@@ -725,13 +735,13 @@ RECIPE_UPSTREAM_DATE_pn-openssl =3D "Apr 26, 2012"
 RECIPE_UPSTREAM_VERSION_pn-openswan =3D "2.6.26"
 RECIPE_UPSTREAM_DATE_pn-opkg-collateral =3D "n/a"
 RECIPE_UPSTREAM_VERSION_pn-opkg =3D "0.1.8"
-CHECK_DATE_pn-opkg =3D "Apr 25, 2012"
+CHECK_DATE_pn-opkg =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-opkg =3D "Feb 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-opkg_nogpg =3D "0.1.8"
 RECIPE_UPSTREAM_DATE_pn-opkg_nogpg =3D "Feb 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-oprofile =3D "0.9.7"
-CHECK_DATE_pn-oprofile =3D "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-oprofile =3D "Aug 12, 2011"
+CHECK_DATE_pn-oprofile =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-oprofileui =3D "0.0+git0+82ecf8c6b53b84f80682a8=
312f9defa83a95f2a3"
 CHECK_DATE_pn-oprofileui =3D "Dec 24, 2011"
 RECIPE_UPSTREAM_DATE_pn-oprofileui =3D "Nov 14, 2011"
@@ -749,7 +759,8 @@ RECIPE_UPSTREAM_DATE_pn-pax =3D "Aug 01, 2005"
 RECIPE_UPSTREAM_VERSION_pn-pciutils =3D "3.1.9"
 RECIPE_UPSTREAM_DATE_pn-pciutils =3D "Jan 14, 2012"
 RECIPE_UPSTREAM_VERSION_pn-pcmanfm =3D "0.9.10"
-CHECK_DATE_pn-pcmanfm =3D "Apr 25, 2012"
+RECIPE_UPSTREAM_DATE_pn-pcmanfm =3D "Oct 24, 2011"
+CHECK_DATE_pn-pcmanfm =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-pcmanfm =3D "Oct 24, 2011"
 RECIPE_UPSTREAM_VERSION_pn-pcmciautils =3D "017"
 RECIPE_UPSTREAM_DATE_pn-pcmciautils =3D "Jan 01, 2010"
@@ -798,8 +809,8 @@ RECIPE_UPSTREAM_VERSION_pn-pth =3D "2.0.7"
 RECIPE_UPSTREAM_DATE_pn-pth =3D "Jun 01, 2006"
 RECIPE_UPSTREAM_VERSION_pn-pulseaudio =3D "0.9.22"
 RECIPE_UPSTREAM_DATE_pn-pulseaudio =3D "Nov 26, 2010"
-CHECK_DATE_pn-puzzles =3D "Apr 25, 2012"
-RECIPE_UPSTREAM_VERSION_pn-puzzles =3D "r9455"
+RECIPE_UPSTREAM_VERSION_pn-puzzles =3D "r9561"
+CHECK_DATE_pn-puzzles =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-python-pycurl =3D "Sep 01, 2008"
 RECIPE_UPSTREAM_VERSION_pn-python=3D"2.7.3"
 CHECK_DATE_pn-python =3D "May 01, 2012"
@@ -818,8 +829,8 @@ RECIPE_UPSTREAM_VERSION_pn-quicky =3D "0.4"
 RECIPE_UPSTREAM_DATE_pn-quicky =3D "Jun 18, 2008"
 RECIPE_UPSTREAM_VERSION_pn-quilt=3D"0.60"
 RECIPE_UPSTREAM_VERSION_pn-quota =3D "4.00"
-CHECK_DATE_pn-quota =3D "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-quota =3D "Aug 17, 2011"
+CHECK_DATE_pn-quota =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-randrproto =3D "1.3.2"
 RECIPE_UPSTREAM_DATE_pn-randrproto =3D "Oct 29, 2010"
 RECIPE_UPSTREAM_VERSION_pn-readline =3D "6.2"
@@ -833,7 +844,8 @@ RECIPE_UPSTREAM_DATE_pn-resolvconf =3D "Jun 19, 2012"
 RECIPE_UPSTREAM_VERSION_pn-resourceproto =3D "1.2.0"
 RECIPE_UPSTREAM_DATE_pn-resourceproto =3D "May 27, 2011"
 RECIPE_UPSTREAM_VERSION_pn-rpcbind =3D "0.2.0"
-CHECK_DATE_pn-rpcbind =3D "Apr 25, 2012"
+RECIPE_UPSTREAM_DATE_pn-rpcbind =3D "May 29, 2009"
+CHECK_DATE_pn-rpcbind =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-rpcbind =3D "May 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-rpm =3D "5.1.10"
 RECIPE_UPSTREAM_DATE_pn-rpm =3D "Jan 01, 2010"
@@ -875,13 +887,15 @@ RECIPE_UPSTREAM_DATE_pn-speex=3D"Jul 24, 2008"
 RECIPE_UPSTREAM_VERSION_pn-sqlite3 =3D "3.7.13"
 RECIPE_UPSTREAM_DATE_pn-sqlite3 =3D "Jun 11, 2012"
 CHECK_DATE_pn-sqlite3=3D "Jun 22, 2012"
+RECIPE_UPSTREAM_VERSION_pn-squashfs-tools =3D "4.2"
 RECIPE_UPSTREAM_DATE_pn-squashfs-tools =3D "Feb 28, 2011"
+CHECK_DATE_pn-squashfs-tools =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-startup-notification =3D "May 16, 2011"
 RECIPE_UPSTREAM_VERSION_pn-stat =3D "3.3"
 CHECK_DATE_pn-stat =3D "Dec 30, 2011"
-RECIPE_UPSTREAM_VERSION_pn-strace =3D "4.6"
-CHECK_DATE_pn-strace =3D "Apr 25, 2012"
-RECIPE_UPSTREAM_DATE_pn-strace =3D "Mar 15, 2011"
+RECIPE_UPSTREAM_VERSION_pn-strace =3D "4.7"
+RECIPE_UPSTREAM_DATE_pn-strace =3D "May 02, 2012"
+CHECK_DATE_pn-strace =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-subversion =3D "1.6.15"
 CHECK_DATE_pn-subversion =3D "Jan 25, 2011"
 RECIPE_UPSTREAM_VERSION_pn-sudo =3D "1.8.4p4"
@@ -914,7 +928,8 @@ RECIPE_UPSTREAM_VERSION_pn-tasks =3D "0.18"
 RECIPE_UPSTREAM_DATE_pn-tasks =3D "Jul 01, 2010"
 RECIPE_UPSTREAM_DATE_pn-tcf-agent =3D "Jul 07, 2011"
 RECIPE_UPSTREAM_VERSION_pn-tcl=3D"8.5.11"
-CHECK_DATE_pn-tcl =3D "Feb 01, 2012"
+RECIPE_UPSTREAM_DATE_pn-tcl =3D "Jul 07, 2011"
+CHECK_DATE_pn-tcl =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-tcp-wrappers =3D "Apr 08, 1997"
 RECIPE_UPSTREAM_DATE_pn-telepathy-glib =3D "Apr 20, 2012"
 RECIPE_UPSTREAM_VERSION_pn-texi2html =3D "5.0"
@@ -932,7 +947,6 @@ RECIPE_UPSTREAM_DATE_pn-time =3D "Jul 01, 1996"
 RECIPE_UPSTREAM_VERSION_pn-tinylogin =3D "1.4"
 CHECK_DATE_pn-tinylogin =3D "Dec 24, 2011"
 RECIPE_UPSTREAM_DATE_pn-tinylogin =3D "Jan 03, 2003"
-RECIPE_UPSTREAM_DATE_pn-tinylogin =3D "n/a"
 RECIPE_UPSTREAM_DATE_pn-trace-cmd =3D "Nov 7, 2011"
 RECIPE_UPSTREAM_VERSION_pn-transfig =3D "3.2.5d"
 RECIPE_UPSTREAM_DATE_pn-transfig =3D "Jul 23, 2010"
@@ -941,12 +955,13 @@ RECIPE_UPSTREAM_DATE_pn-trapproto =3D "Jan 01, 2006"
 RECIPE_UPSTREAM_VERSION_pn-tremor=3D"20120122"
 RECIPE_UPSTREAM_DATE_pn-tremor=3D"Jan 22, 2012"
 RECIPE_UPSTREAM_VERSION_pn-tslib =3D "1.0"
-CHECK_DATE_pn-tslib =3D "Apr 25, 2012"
+RECIPE_UPSTREAM_DATE_pn-tslib =3D"Sep 09, 2006"
+CHECK_DATE_pn-tslib =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-tslib =3D "Aug 01, 2006"
 RECIPE_UPSTREAM_DATE_pn-ttf-bitstream-vera =3D "Apr 16, 2003"
 RECIPE_UPSTREAM_VERSION_pn-tzdata =3D "2012c"
 RECIPE_UPSTREAM_DATE_pn-tzdata =3D "Apr 02, 2012"
-CHECK_DATE_pn-tzdata =3D "Apr 25, 2012"
+CHECK_DATE_pn-tzdata =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-u-boot-fw-utils =3D "Dec 23, 2011"
 RECIPE_UPSTREAM_VERSION_pn-ubootchart =3D "0.0+r12"
 RECIPE_UPSTREAM_DATE_pn-udev-extraconf =3D "n/a"
@@ -954,13 +969,13 @@ RECIPE_UPSTREAM_VERSION_pn-udev =3D "164"
 RECIPE_UPSTREAM_DATE_pn-udev =3D "Jan 11, 2012"
 RECIPE_UPSTREAM_VERSION_pn-unifdef=3D"2.6.18+git"
 RECIPE_UPSTREAM_VERSION_pn-unzip =3D "6.0"
-CHECK_DATE_pn-unzip =3D "Apr 18, 2012"
 RECIPE_UPSTREAM_DATE_pn-unzip =3D "Apr 25, 2009"
+CHECK_DATE_pn-unzip =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-update-rc.d =3D "unknown"
 RECIPE_UPSTREAM_VERSION_pn-usbinit =3D "n/a"
 RECIPE_UPSTREAM_VERSION_pn-usbutils =3D "0.91"
-CHECK_DATE_pn-usbutils =3D "Apr 18, 2012"
 RECIPE_UPSTREAM_DATE_pn-usbutils =3D "Oct 22, 2010"
+CHECK_DATE_pn-usbutils =3D "Apr 18, 2012"
 RECIPE_UPSTREAM_DATE_pn-util-linux =3D "Feb 24, 2012"
 RECIPE_UPSTREAM_VERSION_pn-v86d =3D "0.1.10"
 RECIPE_UPSTREAM_DATE_pn-v86d =3D "Feb 25, 2011"
@@ -972,22 +987,26 @@ RECIPE_UPSTREAM_VERSION_pn-vte=3D"0.24.3"
 RECIPE_UPSTREAM_DATE_pn-vte=3D"Jul 12, 2010"
 RECIPE_UPSTREAM_VERSION_pn-watchdog =3D "5.12"
 RECIPE_UPSTREAM_DATE_pn-watchdog =3D "Apr 05, 2012"
-CHECK_DATE_pn-watchdog =3D "Apr 25, 2012"
+CHECK_DATE_pn-watchdog =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-wbxml2 =3D "0.10.8"
 RECIPE_UPSTREAM_DATE_pn-web-webkit =3D "Aug 01, 2008"
 RECIPE_UPSTREAM_VERSION_pn-web =3D "0.0+svnr129"
-RECIPE_UPSTREAM_DATE_pn-webkit-gtk =3D "Jun 01, 2011"
+RECIPE_UPSTREAM_VERSION_pn-webkit-gtk =3D "1.8.1"
+RECIPE_UPSTREAM_DATE_pn-webkit-gtk =3D "Apr 24, 2012"
+CHECK_DATE_pn-webkit-gtk =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-which =3D "2.20"
 RECIPE_UPSTREAM_DATE_pn-which =3D "Aug 01, 2008"
 CHECK_DATE_pn-which =3D "Nov 22, 2011"
+RECIPE_UPSTREAM_VERSION_pn-wireless-tools =3D "29"
 RECIPE_UPSTREAM_DATE_pn-wireless-tools=3D"Sep 18, 2007"
+CHECK_DATE_pn-wireless-tools =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_DATE_pn-wpa-supplicant=3D"Sep 07, 2010"
 RECIPE_UPSTREAM_VERSION_pn-wv =3D "1.2.1"
 RECIPE_UPSTREAM_DATE_pn-x11-common=3D"Sep 22, 2008"
 RECIPE_UPSTREAM_VERSION_pn-x11perf =3D "1.5.4"
 RECIPE_UPSTREAM_VERSION_pn-x11vnc =3D "0.9.13"
-CHECK_DATE_pn-x11vnc =3D "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-x11vnc =3D "Sep 13, 2011"
+CHECK_DATE_pn-x11vnc =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-xauth=3D"1.0.5"
 RECIPE_UPSTREAM_DATE_pn-xauth=3D"Sep 24, 2010"
 RECIPE_UPSTREAM_VERSION_pn-xbacklight =3D "1.1.1"
@@ -1063,8 +1082,8 @@ CHECK_DATE_pn-zaurusd =3D "Jul 12, 2011"
 RECIPE_NO_UPDATE_REASON_pn-zaurusd =3D "SVN rev 426 is last Stable release=
"
 RECIPE_UPSTREAM_VERSION_pn-zeroconf =3D "0.9"
 RECIPE_UPSTREAM_VERSION_pn-zip =3D "3.0"
-CHECK_DATE_pn-zip =3D "Apr 18, 2012"
 RECIPE_UPSTREAM_DATE_pn-zip =3D "Sep 01, 2009"
+CHECK_DATE_pn-zip =3D "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-zlib =3D "1.2.5"
 RECIPE_UPSTREAM_DATE_pn-zlib =3D "Mar 01, 2010"
 RECIPE_NO_UPDATE_REASON_pn-zlib =3D "zlib-1.2.5 is latest, version parser =
reports 121 in error"
--
1.7.9.5


