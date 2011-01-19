Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A59994C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 07:16:05 -0600 (CST)
Received: by wye20 with SMTP id 20so857947wye.35
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 05:15:59 -0800 (PST)
Received: by 10.216.19.207 with SMTP id n57mr726811wen.30.1295442939657;
	Wed, 19 Jan 2011 05:15:39 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	n18sm3652942wee.16.2011.01.19.05.15.38
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 19 Jan 2011 05:15:38 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <201101191251.41864.paul.eggleton@linux.intel.com>
Date: Wed, 19 Jan 2011 14:15:37 +0100
Message-Id: <F6BAAAE9-5327-4555-9957-64DCCA436B8C@dominion.thruhere.net>
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
	<70F8AFBB-708E-44C2-8C07-BA394242B311@dominion.thruhere.net>
	<201101191251.41864.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] Add meta-toolchain-qte from OE
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
X-List-Received-Date: Wed, 19 Jan 2011 13:16:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 19 jan 2011, om 13:51 heeft Paul Eggleton het volgende geschreven:

> On Monday 17 January 2011 17:14:59 Koen Kooi wrote:
>> FWIW, there's a more comprehensive integration for qt 4.6.3 and qt =
4.7.1
>> available at http://cgit.openembedded.org/cgit.cgi/meta-openembedded/ =
.
>=20
> Having now set up meta-openembedded as a layer on top of poky master, =
when I=20
> attempt to build qt4-tools-sdk the first thing I run into is a problem =
I worked=20
> around in my patchset (failure at do_configure). Do you not get this =
error?

I get the same error, I only built the target bits of qt and same apps, =
no sdk yet.

regards,

Koen

>=20
> ------------------ snip -----------------
> Which edition of Qt do you want to use ?
>=20
> Type 'c' if you want to use the Commercial Edition.
> Type 'o' if you want to use the Open Source Edition.
>=20
>=20
> Determining system architecture... =
(Linux:2.6.35.6-45.fc14.x86_64:x86_64)
>    64-bit AMD 80x86 (x86_64)
>    'x86_64' is supported
> System architecture: 'x86_64'
> Host architecture: 'x86_64'
> Precompiled-headers support enabled.
> =
/media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-linux/qt4-tools-
> sdk-4.7.1-r2.0/qt-everywhere-opensource-
> src-4.7.1/config.tests/unix/fvisibility.test: line 28: ccache =
x86_64-pokysdk-
> linux-g++  =
--sysroot=3D/media/large/tmp-meta-oe/sysroots/x86_64-nativesdk-
> pokysdk-linux: No such file or directory
> Symbol visibility control disabled.
>=20
> This is the Qt for Embedded Linux Open Source Edition.
>=20
> You are licensed to use this software under the terms of
> the Lesser GNU General Public License (LGPL) versions 2.1.
> You are also licensed to use this software under the terms of
> the GNU General Public License (GPL) versions 3.
>=20
> Type '3' to view the GNU General Public License version 3.
> Type 'L' to view the Lesser GNU General Public License version 2.1.
> Type 'yes' to accept this license offer.
> Type 'no' to decline this license offer.
>=20
> Do you accept the terms of either license?=20
> Creating qmake. Please wait...
> ccache x86_64-pokysdk-linux-g++  --sysroot=3D/media/large/tmp-meta-
> oe/sysroots/x86_64-nativesdk-pokysdk-linux -c -o project.o -pipe -m64 =
-m64 -
> DQMAKE_OPENSOURCE_EDITION -I. -Igenerators -Igenerators/unix -
> Igenerators/win32 -Igenerators/mac -Igenerators/symbian =
-I/media/large/tmp-
> =
meta-oe/work/x86_64-nativesdk-pokysdk-linux/qt4-tools-sdk-4.7.1-r2.0/qt-
> everywhere-opensource-src-4.7.1/include -I/media/large/tmp-meta-
> =
oe/work/x86_64-nativesdk-pokysdk-linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywh=
ere-
> opensource-src-4.7.1/include/QtCore =
-I/media/large/tmp-meta-oe/work/x86_64-
> =
nativesdk-pokysdk-linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-=

> src-4.7.1/src/corelib/global =
-I/media/large/tmp-meta-oe/work/x86_64-nativesdk-
> pokysdk-linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
> src-4.7.1/src/corelib/xml =
-I/media/large/tmp-meta-oe/work/x86_64-nativesdk-
> pokysdk-linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
> src-4.7.1/tools/shared -DQT_NO_PCRE -DQT_BUILD_QMAKE -DQT_BOOTSTRAPPED =
-
> DQT_NO_TEXTCODEC -DQT_NO_UNICODETABLES -DQT_NO_COMPONENT -DQT_NO_STL -
> DQT_NO_COMPRESS =
-I/media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-
> linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
> src-4.7.1/mkspecs/qws/linux-x86_64-g++ -DHAVE_QCONFIG_CPP =
-DQT_NO_THREAD -
> DQT_NO_QOBJECT -DQT_NO_GEOM_VARIANT  project.cpp
> In file included from =
/media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-
> linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
> src-4.7.1/include/QtCore/qlist.h:1:0,
>                 from =
/media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-
> linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
> src-4.7.1/include/QtCore/../../src/corelib/tools/qstringlist.h:47,
>                 from =
/media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-
> linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
> src-4.7.1/include/QtCore/qstringlist.h:1,
>                 from project.h:45,
>                 from project.cpp:42:
> =
/media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-linux/qt4-tools-
> sdk-4.7.1-r2.0/qt-everywhere-opensource-
> src-4.7.1/include/QtCore/../../src/corelib/tools/qlist.h:54:15: fatal =
error:=20
> new: No such file or directory
> compilation terminated.
> make: *** [project.o] Error 1
> FATAL: Configuring qt failed. EXTRA_OECONF was -prefix=20
> /opt/poky/0.9+snapshot/sysroots/x86_64-pokysdk-linux/usr               =
  -qt-
> libjpeg -qt-gif -system-zlib                 -no-libjpeg -no-libpng =
-no-libmng=20
> -no-libtiff                 -no-accessibility                 -no-cups =
               =20
> -no-exceptions                  -no-nas-sound                 -no-nis =
-no-
> openssl                 -verbose -release -fast -static                =
 -
> embedded -no-freetype -no-glib -no-iconv                 -qt3support   =
             =20
> -I/media/large/tmp-meta-oe/sysroots/x86_64-linux/usr/include           =
      -
> I/media/large/tmp-meta-oe/sysroots/x86_64-linux/usr/include/dbus-1.0   =
             =20
> =
-I/media/large/tmp-meta-oe/sysroots/x86_64-linux/usr/lib/dbus-1.0/include
> ------------------ snip -----------------
>=20
> Cheers,
> Paul


