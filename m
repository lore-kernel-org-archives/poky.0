Return-Path: <cristian.iorga@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5934E003DA
	for <poky@yoctoproject.org>; Thu,  8 Nov 2012 10:45:50 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Nov 2012 10:45:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,739,1344236400"; d="scan'208";a="246029377"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 08 Nov 2012 10:45:49 -0800
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 8 Nov 2012 18:45:48 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.248]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.52]) with mapi id
	14.01.0355.002; Thu, 8 Nov 2012 18:45:48 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: "Iorga, Cristian" <cristian.iorga@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [PATCH] upstream_tracking.inc: update according to YP 1.4
Thread-Index: AQHNveDnV6blEu6ck0K2WxPFuLUfpJfgRi2Q
Date: Thu, 8 Nov 2012 18:45:45 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB161B566D@IRSMSX102.ger.corp.intel.com>
References: <1352400125-5264-1-git-send-email-cristian.iorga@intel.com>
In-Reply-To: <1352400125-5264-1-git-send-email-cristian.iorga@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: [PATCH] upstream_tracking.inc: update according to YP 1.4
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
X-List-Received-Date: Thu, 08 Nov 2012 18:45:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Also my comments:

Comments about manual Pus for maintainer Cristian Iorga:

1. db cannot be upgraded due to compatibility issues; Who can enlighten me =
into this one?
2. libpcap versioning seems wrong libpcap 1.3.0 =3D tcpdump 4.3.0?? Cand so=
meone clarify this one for me?
3. gssdp 0.13.1 is unstable/beta one. 0.12.2. is stable one.
4. situation unclear with tremor; there is a newer svn head than what YP ha=
s. However, I don't know the release date or if it is stable. Please help.

Regards,
Cristian

-----Original Message-----
From: Iorga, Cristian=20
Sent: Thursday, November 08, 2012 8:42 PM
To: poky@yoctoproject.org
Cc: Iorga, Cristian
Subject: [PATCH] upstream_tracking.inc: update according to YP 1.4

Updated upstream_tracking.inc with manually checked packages.

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      |   61 +++++++++++-----=
----
 1 file changed, 35 insertions(+), 26 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yo=
cto/conf/distro/include/upstream_tracking.inc
index fd422cf..a6af9dd 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -27,7 +27,12 @@ RECIPE_UPSTREAM_DATE_pn-acpid =3D "Apr 22, 2009"
 CHECK_DATE_pn-acpid =3D "Aug 27, 2012"
 RECIPE_UPSTREAM_VERSION_pn-adt-installer =3D "1.1"
 CHECK_DATE_pn-adt-installer =3D "Sep 11, 2012"
-RECIPE_UPSTREAM_DATE_pn-alsa-utils=3D"Jan 25, 2012"
+RECIPE_UPSTREAM_VERSION_pn-alsa-utils =3D "1.0.26"
+RECIPE_UPSTREAM_DATE_pn-alsa-utils =3D "Jan 25, 2012"
+CHECK_DATE_pn-alsa-utils =3D "Nov 08, 2012"
+RECIPE_UPSTREAM_VERSION_pn-alsa-lib =3D "1.0.26"
+RECIPE_UPSTREAM_DATE_pn-alsa-lib =3D "Jan 25, 2012"
+CHECK_DATE_pn-alsa-lib =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-apmd =3D "3.2.2-14"
 RECIPE_UPSTREAM_DATE_pn-apmd =3D "Jul 01, 2009"
 CHECK_DATE_pn-apmd =3D "Aug 27, 2012"
@@ -165,7 +170,7 @@ RECIPE_UPSTREAM_DATE_pn-curl =3D "Jul 27, 2012"
 CHECK_DATE_pn-curl =3D "Aug 28, 2012"
 RECIPE_UPSTREAM_VERSION_pn-cwautomacros =3D "20110201"
 RECIPE_UPSTREAM_DATE_pn-cwautomacros =3D "Feb 01, 2011"
-CHECK_DATE_pn-cwautomacros =3D "Aug 28, 2012"
+CHECK_DATE_pn-cwautomacros =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-damageproto =3D "1.2.1"
 RECIPE_UPSTREAM_DATE_pn-damageproto =3D "Oct 29, 2010"
 CHECK_DATE_pn-damageproto =3D "Aug 28, 2012"
@@ -262,7 +267,7 @@ RECIPE_UPSTREAM_VERSION_pn-fixesproto =3D "5.0"
 RECIPE_UPSTREAM_DATE_pn-fixesproto =3D "Mar 8, 2011"
 CHECK_DATE_pn-fixesproto =3D "Aug 28, 2012"
 RECIPE_UPSTREAM_VERSION_pn-flac=3D"1.2.1"
-CHECK_DATE_pn-flac =3D "Aug 28, 2012"
+CHECK_DATE_pn-flac =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_DATE_pn-flac=3D"Sep 16, 2007"
 RECIPE_UPSTREAM_VERSION_pn-flex =3D "2.5.37"
 RECIPE_UPSTREAM_DATE_pn-flex =3D "Aug 08, 2012"
@@ -367,9 +372,9 @@ CHECK_DATE_pn-groff =3D "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-grub =3D "0.97"
 RECIPE_UPSTREAM_DATE_pn-grub =3D "Dec 01, 2005"
 RECIPE_NO_UPDATE_REASON_pn-grub=3D"grub2 is a different thing"
-RECIPE_UPSTREAM_VERSION_pn-gssdp =3D "0.10.0"
-RECIPE_UPSTREAM_DATE_pn-gssdp=3D"Apr 07, 2011"
-CHECK_DATE_pn-gssdp =3D "Aug 29, 2012"
+RECIPE_UPSTREAM_VERSION_pn-gssdp =3D "0.12.2"
+RECIPE_UPSTREAM_DATE_pn-gssdp=3D"Aug 19, 2012"
+CHECK_DATE_pn-gssdp =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_DATE_pn-gst-meta-base=3D"n/a"
 RECIPE_NO_UPDATE_REASON_pn-gst-plugins-base =3D "not compatible with gst-f=
luendo 0.10.x"
 RECIPE_UPSTREAM_VERSION_pn-gst-plugins-base =3D "0.11.90"
@@ -400,10 +405,13 @@ RECIPE_UPSTREAM_DATE_pn-guile =3D "Jul 07, 2012"
 CHECK_DATE_pn-guile =3D "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-gupnp-av =3D "0.10.3"
 RECIPE_UPSTREAM_DATE_pn-gupnp-av=3D "Aug 19, 2012"
-CHECK_DATE_pn-gupnp-av =3D "Aug 29, 2012"
+CHECK_DATE_pn-gupnp-av =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-gupnp =3D "0.18.4"
 RECIPE_UPSTREAM_DATE_pn-gupnp=3D "Aug 19, 2012"
 CHECK_DATE_pn-gupnp =3D "Aug 29, 2012"
+RECIPE_UPSTREAM_VERSION_pn-gupnp-tools =3D "0.8.4"
+RECIPE_UPSTREAM_DATE_pn-gupnp-tools =3D "Dec 12, 2011"
+CHECK_DATE_pn-gupnp-tools  =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-gypsy=3D"0.9"
 RECIPE_UPSTREAM_DATE_pn-gypsy=3D"Aug 28, 2012"
 CHECK_DATE_pn-gypsy =3D "Aug 29, 2012"
@@ -455,7 +463,7 @@ RECIPE_UPSTREAM_DATE_pn-iputils =3D "Oct 06, 2010"
 CHECK_DATE_pn-iputils =3D "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-irda-utils =3D "0.9.18"
 RECIPE_UPSTREAM_DATE_pn-irda-utils=3D"Jul 10, 2006"
-CHECK_DATE_pn-irda-utils =3D "Aug 29, 2012"
+CHECK_DATE_pn-irda-utils =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-iso-codes =3D "3.38"
 RECIPE_UPSTREAM_DATE_pn-iso-codes =3D "Aug 08, 2012"
 CHECK_DATE_pn-iso-codes =3D "Aug 29, 2012"
@@ -500,8 +508,8 @@ RECIPE_UPSTREAM_VERSION_pn-less =3D "444"
 CHECK_DATE_pn-less =3D "Aug 29, 2012"
 RECIPE_UPSTREAM_DATE_pn-less =3D "Jun 9, 2011"
 RECIPE_UPSTREAM_VERSION_pn-liba52=3D"0.7.4"
-CHECK_DATE_pn-liba52 =3D "Aug 29, 2012"
 RECIPE_UPSTREAM_DATE_pn-liba52=3D"Jul 27, 2002"
+CHECK_DATE_pn-liba52 =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libacpi =3D "0.2"
 RECIPE_UPSTREAM_DATE_pn-libacpi =3D "unknown"
 CHECK_DATE_pn-libacpi =3D "Aug 29, 2012"
@@ -615,7 +623,7 @@ RECIPE_UPSTREAM_DATE_pn-libgtkstylus =3D "Jun 1, 2012"
 CHECK_DATE_pn-libgtkstylus =3D "Aug 30, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libical =3D "0.48"
 RECIPE_UPSTREAM_DATE_pn-libical =3D"Dec 13, 2011"
-CHECK_DATE_pn-libical =3D "Aug 30, 2012"
+CHECK_DATE_pn-libical =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libice =3D "1.0.8"
 RECIPE_UPSTREAM_DATE_pn-libice =3D "Mar 02, 2012"
 CHECK_DATE_pn-libice =3D "Aug 30, 2012"
@@ -624,7 +632,7 @@ RECIPE_UPSTREAM_DATE_pn-libiconv =3D "Aug 07, 2011"
 CHECK_DATE_pn-libiconv =3D "Aug 30, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libid3tag=3D"0.15.1b"
 RECIPE_UPSTREAM_DATE_pn-libid3tag=3D"Feb 18, 2004"
-CHECK_DATE_pn-libid3tag =3D "Aug 30, 2012"
+CHECK_DATE_pn-libid3tag =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libidn =3D "1.25"
 RECIPE_UPSTREAM_DATE_pn-libidn =3D "May 23, 2012"
 CHECK_DATE_pn-libidn =3D "Aug 30, 2012"
@@ -669,7 +677,7 @@ RECIPE_UPSTREAM_DATE_pn-liboil =3D "Feb 01, 2010"
 CHECK_DATE_pn-liboil =3D "Aug 30, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libomxil =3D "0.9.3"
 RECIPE_UPSTREAM_DATE_pn-libomxil =3D "May 20, 2011"
-CHECK_DATE_pn-libomxil =3D "Aug 30, 2012"
+CHECK_DATE_pn-libomxil =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libopensync-plugin-evolution2 =3D "0.39"
 RECIPE_UPSTREAM_DATE_pn-libopensyc-plugin-evolution2 =3D "Aug 26, 2011"
 CHECK_DATE_pn-libopensync-plugin-evolution2 =3D "Aug 30, 2012"
@@ -685,7 +693,7 @@ CHECK_DATE_pn-libpam =3D "Aug 30, 2012"
 RECIPE_UPSTREAM_DATE_pn-libpam =3D "Oct 25, 2011"
 RECIPE_UPSTREAM_VERSION_pn-libpcap=3D"4.3.0"
 RECIPE_UPSTREAM_DATE_pn-libpcap=3D"Jun 12, 2012"
-CHECK_DATE_pn-libpcap =3D "Aug 30, 2012"
+CHECK_DATE_pn-libpcap =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libpciaccess =3D "0.13.1"
 RECIPE_UPSTREAM_DATE_pn-libpciaccess =3D "Apr 09, 2012"
 CHECK_DATE_pn-libpciaccess =3D "Aug 30, 2012"
@@ -696,8 +704,9 @@ RECIPE_NO_UPDATE_REASON_pn-libpng =3D "1.4.3 and later =
changes the API and breaks  RECIPE_UPSTREAM_VERSION_pn-libpng =3D "1.5.11"
 RECIPE_UPSTREAM_DATE_pn-libpng =3D "Jun 14, 2012"
 CHECK_DATE_pn-libpng =3D "Jul 05, 2012"
-RECIPE_UPSTREAM_VERSION_pn-libproxy=3D"0.4.7"
-CHECK_DATE_pn-libproxy =3D "Aug 30, 2012"
+RECIPE_UPSTREAM_VERSION_pn-libproxy =3D "0.4.10"
+RECIPE_UPSTREAM_DATE_pn-libproxy =3D "Oct 15, 2012"
+CHECK_DATE_pn-libproxy =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_DATE_pn-libproxy=3D"Jun 01, 2011"
 RECIPE_UPSTREAM_DATE_pn-libpthread-stubs =3D "Oct 14, 2009"
 RECIPE_UPSTREAM_VERSION_pn-libpthread-stubs =3D "0.3"
@@ -707,7 +716,7 @@ RECIPE_UPSTREAM_DATE_pn-librsvg =3D "Aug 19, 2012"
 CHECK_DATE_pn-librsvg =3D "Aug 30, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libsamplerate0 =3D "0.1.8"
 RECIPE_UPSTREAM_DATE_pn-libsamplerate0 =3D "Aug 15, 2011"
-CHECK_DATE_pn-libsamplerate0 =3D "Aug 30, 2012"
+CHECK_DATE_pn-libsamplerate0 =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libsdl =3D "1.2.15"
 CHECK_DATE_pn-libsdl =3D "Mar 14, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libsm =3D "1.2.1"
@@ -732,7 +741,7 @@ CHECK_DATE_pn-libtheora =3D "Aug 30, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libtimedate-perl =3D "1.20"
 RECIPE_UPSTREAM_VERSION_pn-libtirpc =3D "0.2.2"
 RECIPE_UPSTREAM_DATE_pn-libtirpc =3D "May 02, 2011"
-CHECK_DATE_pn-libtirpc =3D "Aug 30, 2012"
+CHECK_DATE_pn-libtirpc =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libtool=3D"2.4.2"
 CHECK_DATE_pn-libtool =3D "Aug 30, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libunique =3D "2.91.4"
@@ -905,7 +914,7 @@ RECIPE_UPSTREAM_DATE_pn-loudmouth =3D "Mar 27, 2012"
 CHECK_DATE_pn-loudmouth =3D "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-lrzsz=3D"0.12.20"
 RECIPE_UPSTREAM_DATE_pn-lrzsz=3D"Dec 31, 1998"
-CHECK_DATE_pn-lrzsz =3D "Aug 31, 2012"
+CHECK_DATE_pn-lrzsz =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-lsb =3D "4.1"
 CHECK_DATE_pn-lsb =3D "Sep 5, 2012"
 RECIPE_UPSTREAM_DATE_pn-lsb =3D "Jan 04, 2001"
@@ -951,7 +960,7 @@ RECIPE_UPSTREAM_DATE_pn-menu-cache =3D "May 20, 2012"
 CHECK_DATE_pn-menu-cache =3D "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-minicom =3D "2.6.1"
 RECIPE_UPSTREAM_DATE_pn-minicom =3D "Mar 29, 2012"
-CHECK_DATE_pn-minicom =3D "Aug 31, 2012"
+CHECK_DATE_pn-minicom =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-mesa-dri =3D "8.0.3"
 RECIPE_UPSTREAM_DATE_pn-mesa-dri=3D"May 18, 2012"
 CHECK_DATE_pn-mesa-dri =3D "Aug 31, 2012"
@@ -1175,7 +1184,7 @@ RECIPE_UPSTREAM_DATE_pn-quilt =3D "Feb 29, 2012"
 CHECK_DATE_pn-quilt =3D "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-quota =3D "4.00"
 RECIPE_UPSTREAM_DATE_pn-quota =3D "Aug 17, 2011"
-CHECK_DATE_pn-quota =3D "Sep 03, 2012"
+CHECK_DATE_pn-quota =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-randrproto =3D "1.4.0"
 RECIPE_UPSTREAM_DATE_pn-randrproto =3D "Jul 12, 2012"
 CHECK_DATE_pn-randrproto =3D "Sep 03, 2012"
@@ -1196,7 +1205,7 @@ RECIPE_UPSTREAM_DATE_pn-resourceproto =3D "May 27, 20=
11"
 CHECK_DATE_pn-resourceproto =3D "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-rpcbind =3D "0.2.0"
 RECIPE_UPSTREAM_DATE_pn-rpcbind =3D "May 29, 2009"
-CHECK_DATE_pn-rpcbind =3D "Sep 03, 2012"
+CHECK_DATE_pn-rpcbind =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-rpm =3D "5.4.10"
 RECIPE_UPSTREAM_DATE_pn-rpm =3D "Jul 06, 2012"
 CHECK_DATE_pn-rpm =3D "Sep 03, 2012"
@@ -1293,9 +1302,9 @@ RECIPE_UPSTREAM_VERSION_pn-sysvinit =3D "2.86"
 RECIPE_UPSTREAM_DATE_pn-sysvinit =3D "Oct 10, 2006"
 CHECK_DATE_pn-sysvinit =3D "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-table =3D "d42a44938699ee30a998fc42bc149aebf693=
89db"
-RECIPE_UPSTREAM_VERSION_pn-taglib =3D "1.7.2"
-RECIPE_UPSTREAM_DATE_pn-taglib =3D "Apr 19, 2010"
-CHECK_DATE_pn-taglib =3D "Sep 03, 2012"
+RECIPE_UPSTREAM_VERSION_pn-taglib =3D "1.8"
+RECIPE_UPSTREAM_DATE_pn-taglib =3D "Sep 05, 2012"
+CHECK_DATE_pn-taglib =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-talloc =3D "2.0.7"
 RECIPE_UPSTREAM_DATE_pn-talloc =3D "Sep 16, 2011"
 CHECK_DATE_pn-talloc =3D "Sep 03, 2012"
@@ -1344,7 +1353,7 @@ RECIPE_UPSTREAM_DATE_pn-trapproto =3D "Jan 01, 2006"
 CHECK_DATE_pn-trapproto =3D "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-tremor=3D"20120122"
 RECIPE_UPSTREAM_DATE_pn-tremor=3D"Jan 22, 2012"
-CHECK_DATE_pn-tremor =3D "Sep 03, 2012"
+CHECK_DATE_pn-tremor =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-tslib =3D "1.0"
 RECIPE_UPSTREAM_DATE_pn-tslib =3D"Sep 09, 2006"
 CHECK_DATE_pn-tslib =3D "Sep 03, 2012"
@@ -1406,7 +1415,7 @@ RECIPE_UPSTREAM_DATE_pn-which =3D "Aug 01, 2008"
 CHECK_DATE_pn-which =3D "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-wireless-tools =3D "29"
 RECIPE_UPSTREAM_DATE_pn-wireless-tools=3D"Sep 18, 2007"
-CHECK_DATE_pn-wireless-tools =3D "Sep 03, 2012"
+CHECK_DATE_pn-wireless-tools =3D "Nov 08, 2012"
 RECIPE_UPSTREAM_DATE_pn-wpa-supplicant=3D"Sep 07, 2010"
 RECIPE_UPSTREAM_VERSION_pn-wpa-supplicant =3D "1.0"
 CHECK_DATE_pn-wpa-supplicant =3D "Sep 03, 2012"
--
1.7.10.4


