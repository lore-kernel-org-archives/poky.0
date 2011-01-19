Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 965F64C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 06:51:46 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Jan 2011 04:51:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,344,1291622400"; d="scan'208";a="376743703"
Received: from unknown (HELO helios.localnet) ([10.255.16.92])
	by azsmga001.ch.intel.com with ESMTP; 19 Jan 2011 04:51:44 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Wed, 19 Jan 2011 12:51:41 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-24-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
	<70F8AFBB-708E-44C2-8C07-BA394242B311@dominion.thruhere.net>
In-Reply-To: <70F8AFBB-708E-44C2-8C07-BA394242B311@dominion.thruhere.net>
MIME-Version: 1.0
Message-Id: <201101191251.41864.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Wed, 19 Jan 2011 12:51:46 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Monday 17 January 2011 17:14:59 Koen Kooi wrote:
> FWIW, there's a more comprehensive integration for qt 4.6.3 and qt 4.7.1
> available at http://cgit.openembedded.org/cgit.cgi/meta-openembedded/ .

Having now set up meta-openembedded as a layer on top of poky master, when I 
attempt to build qt4-tools-sdk the first thing I run into is a problem I worked 
around in my patchset (failure at do_configure). Do you not get this error?

------------------ snip -----------------
Which edition of Qt do you want to use ?

Type 'c' if you want to use the Commercial Edition.
Type 'o' if you want to use the Open Source Edition.


Determining system architecture... (Linux:2.6.35.6-45.fc14.x86_64:x86_64)
    64-bit AMD 80x86 (x86_64)
    'x86_64' is supported
System architecture: 'x86_64'
Host architecture: 'x86_64'
Precompiled-headers support enabled.
/media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-linux/qt4-tools-
sdk-4.7.1-r2.0/qt-everywhere-opensource-
src-4.7.1/config.tests/unix/fvisibility.test: line 28: ccache x86_64-pokysdk-
linux-g++  --sysroot=/media/large/tmp-meta-oe/sysroots/x86_64-nativesdk-
pokysdk-linux: No such file or directory
Symbol visibility control disabled.

This is the Qt for Embedded Linux Open Source Edition.

You are licensed to use this software under the terms of
the Lesser GNU General Public License (LGPL) versions 2.1.
You are also licensed to use this software under the terms of
the GNU General Public License (GPL) versions 3.

Type '3' to view the GNU General Public License version 3.
Type 'L' to view the Lesser GNU General Public License version 2.1.
Type 'yes' to accept this license offer.
Type 'no' to decline this license offer.

Do you accept the terms of either license? 
Creating qmake. Please wait...
ccache x86_64-pokysdk-linux-g++  --sysroot=/media/large/tmp-meta-
oe/sysroots/x86_64-nativesdk-pokysdk-linux -c -o project.o -pipe -m64 -m64 -
DQMAKE_OPENSOURCE_EDITION -I. -Igenerators -Igenerators/unix -
Igenerators/win32 -Igenerators/mac -Igenerators/symbian -I/media/large/tmp-
meta-oe/work/x86_64-nativesdk-pokysdk-linux/qt4-tools-sdk-4.7.1-r2.0/qt-
everywhere-opensource-src-4.7.1/include -I/media/large/tmp-meta-
oe/work/x86_64-nativesdk-pokysdk-linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-
opensource-src-4.7.1/include/QtCore -I/media/large/tmp-meta-oe/work/x86_64-
nativesdk-pokysdk-linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
src-4.7.1/src/corelib/global -I/media/large/tmp-meta-oe/work/x86_64-nativesdk-
pokysdk-linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
src-4.7.1/src/corelib/xml -I/media/large/tmp-meta-oe/work/x86_64-nativesdk-
pokysdk-linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
src-4.7.1/tools/shared -DQT_NO_PCRE -DQT_BUILD_QMAKE -DQT_BOOTSTRAPPED -
DQT_NO_TEXTCODEC -DQT_NO_UNICODETABLES -DQT_NO_COMPONENT -DQT_NO_STL -
DQT_NO_COMPRESS -I/media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-
linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
src-4.7.1/mkspecs/qws/linux-x86_64-g++ -DHAVE_QCONFIG_CPP -DQT_NO_THREAD -
DQT_NO_QOBJECT -DQT_NO_GEOM_VARIANT  project.cpp
In file included from /media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-
linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
src-4.7.1/include/QtCore/qlist.h:1:0,
                 from /media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-
linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
src-4.7.1/include/QtCore/../../src/corelib/tools/qstringlist.h:47,
                 from /media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-
linux/qt4-tools-sdk-4.7.1-r2.0/qt-everywhere-opensource-
src-4.7.1/include/QtCore/qstringlist.h:1,
                 from project.h:45,
                 from project.cpp:42:
/media/large/tmp-meta-oe/work/x86_64-nativesdk-pokysdk-linux/qt4-tools-
sdk-4.7.1-r2.0/qt-everywhere-opensource-
src-4.7.1/include/QtCore/../../src/corelib/tools/qlist.h:54:15: fatal error: 
new: No such file or directory
compilation terminated.
make: *** [project.o] Error 1
FATAL: Configuring qt failed. EXTRA_OECONF was -prefix 
/opt/poky/0.9+snapshot/sysroots/x86_64-pokysdk-linux/usr                 -qt-
libjpeg -qt-gif -system-zlib                 -no-libjpeg -no-libpng -no-libmng 
-no-libtiff                 -no-accessibility                 -no-cups                 
-no-exceptions                  -no-nas-sound                 -no-nis -no-
openssl                 -verbose -release -fast -static                 -
embedded -no-freetype -no-glib -no-iconv                 -qt3support                 
-I/media/large/tmp-meta-oe/sysroots/x86_64-linux/usr/include                 -
I/media/large/tmp-meta-oe/sysroots/x86_64-linux/usr/include/dbus-1.0                 
-I/media/large/tmp-meta-oe/sysroots/x86_64-linux/usr/lib/dbus-1.0/include
------------------ snip -----------------

Cheers,
Paul

