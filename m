Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f52.google.com (mail-pb0-f52.google.com
	[209.85.160.52]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3C40AE01404
	for <poky@yoctoproject.org>; Fri,  8 Mar 2013 00:50:26 -0800 (PST)
Received: by mail-pb0-f52.google.com with SMTP id ma3so1048286pbc.11
	for <poky@yoctoproject.org>; Fri, 08 Mar 2013 00:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=r5w/KzDW0suks9AoU4/XSVnzl1S+0I5mCaM+apI5Evg=;
	b=CP6X9e4rDeDQd4iwN5uZwGFymz48GlmGBxKGFPx1LYuN9qL6klSaA8V94hpeKQf+QB
	3qelHhJF/2BFprKAKASmjxH4f71HjkfQDUNvVbNNP7muF+A3K/Z4JdOs1ih12am10S6Z
	vj+kpxXdcIcDMXDK3LkrkUkbl5aLldOs2+Okv67UFcSnyPmuED+5eZRHkoHsYMni+Nra
	9Cb6bGjms9o+Xc+f3Xsj9e74nRdCVf8aAd08mUwOe0rbVv7RHPr5R0RVbp9dUON/H6bQ
	onOmF7s5a2PHf9E0AkLfoU/qkqg5aE0RoOnaMw+RMaNJhObrG/x+IJEIB5F8X2eR+3u9
	m6IQ==
X-Received: by 10.68.4.97 with SMTP id j1mr2034882pbj.157.1362732625976;
	Fri, 08 Mar 2013 00:50:25 -0800 (PST)
Received: from [192.168.1.91] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id td10sm4865001pbb.25.2013.03.08.00.50.24
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 00:50:25 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <51321E78.7070107@gmail.com>
Date: Fri, 8 Mar 2013 00:50:23 -0800
Message-Id: <20E80406-DD99-427F-956B-535EA047FFFB@gmail.com>
References: <5130FC37.5020700@gmail.com> <51321E78.7070107@gmail.com>
To: John Weber <rjohnweber@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: poky@yoctoproject.org
Subject: Re: [master] Qt build failing during build of fsl-image-gui
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
X-List-Received-Date: Fri, 08 Mar 2013 08:50:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Mar 2, 2013, at 7:44 AM, John Weber <rjohnweber@gmail.com> wrote:

> I originally sent this to the meta-freescale list, but I thought I =
might see if someone on the main poky list might have some insight.
>=20
>=20
> -------- Original Message --------
> Subject: [master] Qt build failing during build of fsl-image-gui
> Date: Fri, 01 Mar 2013 13:06:31 -0600
> From: John Weber <rjohnweber@gmail.com>
> To: meta-freescale@yoctoproject.org
>=20
> I'm attempting to build fsl-image-gui and I'm using master (synced a =
couple of
> days ago).  It's failing consistently when compiling Qt:
>=20
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (see
> =
/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-g=
nueabi/qt4-x11-free/4.8.4-r51.3/temp/log.do_compile.1605=20
> for further information)
> ERROR: Task 418
> =
(/mnt/YOCTOFSL/fsl-community-bsp/sources/poky/meta/recipes-qt/qt4/qt4-x11-=
free_4.8.4.bb,=20
> do_compile) failed with exit code '1'
>=20
> Avoiding posting the entire log here.  ;-)  But, here is the error =
from a
> snipped of the log:
>=20

preprocess this file and pastebin it

> ~~~~~~~~~~
> | arm-poky-linux-gnueabi-g++  -march=3Darmv7-a     -mthumb-interwork
> -mfloat-abi=3Dsoftfp -mfpu=3Dneon
> =
--sysroot=3D/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-d=
ual -c
> -O2 -pipe -g -feliminate-unused-debug-types -fpermissive
> -fvisibility-inlines-hidden
> =
-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/in=
clude/mysql=20
> =
-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/in=
clude/postgresql=20
> =
-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/sr=
c/kernel/include/=20
> =
-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/in=
clude
> =
-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/in=
clude/freetype2=20
> -O2 -O2 -Wall -W -Wall -W -Wall -W -D_REENTRANT -DQT_WEBKIT =
-DQT_OPENGL_SUPPORT
> -D_LARGEFILE64_SOURCE -D_LARGEFILE_SOURCE -DQT_NO_DEBUG =
-DQT_OPENGL_LIB
> -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED -I../../mkspecs/linux-g++ -I.
> -I../../include/QtCore -I../../include/QtGui -I../../include/QtOpenGL
> -I../../include -I../shared
> =
-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/in=
clude/freetype2=20
> -I.moc/release-shared -o .obj/release-shared/main.o main.cpp
> | In file included from =
../../include/QtCore/qtconcurrentmapkernel.h:1:0,
> |                  from
> =
../../include/QtCore/../../src/corelib/concurrent/qtconcurrentfilterkernel=
.h:50,
> |                  from =
../../include/QtCore/qtconcurrentfilterkernel.h:1,
> |                  from
> =
../../include/QtCore/../../src/corelib/concurrent/qtconcurrentfilter.h:49,=

> |                  from ../../include/QtCore/qtconcurrentfilter.h:1,
> |                  from ../../include/QtCore/QtCore:53,
> |                  from ../../include/QtGui/QtGui:3,
> |                  from gradients.h:47,
> |                  from main.cpp:42:
> | =
../../include/QtCore/../../src/corelib/concurrent/qtconcurrentmapkernel.h:=
 In
> function 'QtConcurrent::ThreadEngineStarter<ResultType>
> QtConcurrent::startMappedReduced(Iterator, Iterator, MapFunctor, =
ReduceFunctor,
> QtConcurrent::ReduceOptions)':
> |
> =
../../include/QtCore/../../src/corelib/concurrent/qtconcurrentmapkernel.h:=
262:1:
> error: expected primary-expression before '}' token
> |
> =
../../include/QtCore/../../src/corelib/concurrent/qtconcurrentmapkernel.h:=
262:1:
> error: expected ';' before '}' token
> | make[2]: *** [.obj/release-shared/main.o] Error 1
> | make[2]: Leaving directory
> =
`/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-=
gnueabi/qt4-x11-free/4.8.4-r51.3/qt-everywhere-opensource-src-4.8.4/demos/=
gradients'
> | make[1]: *** [sub-gradients-make_default] Error 2
> ~~~~~~~~~~
>=20
> Taking a look at the source, I don't see a problem:


sometimes typedefs or defines are missing elsewhere.

> File:
> =
fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-gnueabi/qt4-x11=
-free/4.8.4-r51.3/qt-everywhere-opensource-src-4.8.4/src/corelib/concurren=
t/qtconcurrentmapkernel.h:
>=20
> ~~~~~~~~
> template <typename IntermediateType, typename ResultType, typename =
Iterator,
> typename MapFunctor, typename ReduceFunctor>
> inline ThreadEngineStarter<ResultType> startMappedReduced(Iterator =
begin,
> Iterator end,
>                                                           MapFunctor
> mapFunctor, ReduceFunctor reduceFunctor,
>                                                           =
ReduceOptions options)
> {
>    typedef ReduceKernel<ReduceFunctor, ResultType, IntermediateType> =
Reducer;
>    typedef MappedReducedKernel<ResultType, Iterator, MapFunctor,
> ReduceFunctor, Reducer> MappedReduceType;
>    return startThreadEngine(new MappedReduceType(begin, end, =
mapFunctor,
> reduceFunctor, options));   <<<<----- Line in question
> }
>=20
> } // namespace QtConcurrent
> ~~~~~~~~~
>=20
> Is it possible that the problem is related to the toolchain?
>=20

less likely but could be.


> John
>=20
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


