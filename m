Return-Path: <rjohnweber@gmail.com>
Received: from mail-yh0-f47.google.com (mail-yh0-f47.google.com
	[209.85.213.47]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5438CE0123F
	for <poky@yoctoproject.org>; Sat,  2 Mar 2013 07:44:59 -0800 (PST)
Received: by mail-yh0-f47.google.com with SMTP id w68so600609yhw.34
	for <poky@yoctoproject.org>; Sat, 02 Mar 2013 07:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:x-forwarded-message-id:content-type
	:content-transfer-encoding;
	bh=O4sH8wGqwCNV/Tpg28DkkFcSdoWBFi41y7MX0QCqhMg=;
	b=Yxx556A4CUjxOc1cWCVwGNfVg+AdoKodO1Ek7HNo3wSHJf8EG2su5i40uQodgsMP/t
	81GsBjvTA6yBgawC7F3T/t1l9JnvJ/UvO8CTHua73Fu4JLIGraitHZ2NGfyQhHH0b9Ao
	mxyoSKBS+GdJf1DPjYVqOVfMxSPIiwsSr0JN6jCXOcnuqk1sV7dbEU9LnV1bET+2jjzD
	2VSIZ7RiRTLQYpf4+DxBI2CNX5wlD6D7V3CrWcjCH94s2yVeu9t7Fpie4gpnW1C/xMKo
	WM6/Oaic59epIC3UZ+4FGTGNNswhXV0So/uUG6mSotcoh13m6UK0HXzaA1lKJADyJYMU
	XZWw==
X-Received: by 10.236.146.39 with SMTP id q27mr10134571yhj.203.1362239098309; 
	Sat, 02 Mar 2013 07:44:58 -0800 (PST)
Received: from goober.local ([75.76.228.60])
	by mx.google.com with ESMTPS id k45sm24898673yhd.2.2013.03.02.07.44.57
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 02 Mar 2013 07:44:57 -0800 (PST)
Message-ID: <51321E78.7070107@gmail.com>
Date: Sat, 02 Mar 2013 09:44:56 -0600
From: John Weber <rjohnweber@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130216 Thunderbird/17.0.3
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <5130FC37.5020700@gmail.com>
In-Reply-To: <5130FC37.5020700@gmail.com>
X-Forwarded-Message-Id: <5130FC37.5020700@gmail.com>
Subject: [master] Qt build failing during build of fsl-image-gui
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
X-List-Received-Date: Sat, 02 Mar 2013 15:44:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I originally sent this to the meta-freescale list, but I thought I might see if 
someone on the main poky list might have some insight.


-------- Original Message --------
Subject: [master] Qt build failing during build of fsl-image-gui
Date: Fri, 01 Mar 2013 13:06:31 -0600
From: John Weber <rjohnweber@gmail.com>
To: meta-freescale@yoctoproject.org

I'm attempting to build fsl-image-gui and I'm using master (synced a couple of
days ago).  It's failing consistently when compiling Qt:

| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see
/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-gnueabi/qt4-x11-free/4.8.4-r51.3/temp/log.do_compile.1605 

for further information)
ERROR: Task 418
(/mnt/YOCTOFSL/fsl-community-bsp/sources/poky/meta/recipes-qt/qt4/qt4-x11-free_4.8.4.bb, 

do_compile) failed with exit code '1'

Avoiding posting the entire log here.  ;-)  But, here is the error from a
snipped of the log:

~~~~~~~~~~
| arm-poky-linux-gnueabi-g++  -march=armv7-a     -mthumb-interwork
-mfloat-abi=softfp -mfpu=neon
--sysroot=/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual -c
-O2 -pipe -g -feliminate-unused-debug-types -fpermissive
-fvisibility-inlines-hidden
-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/include/mysql 

-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/include/postgresql 

-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/src/kernel/include/ 

-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/include
-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/include/freetype2 

-O2 -O2 -Wall -W -Wall -W -Wall -W -D_REENTRANT -DQT_WEBKIT -DQT_OPENGL_SUPPORT
-D_LARGEFILE64_SOURCE -D_LARGEFILE_SOURCE -DQT_NO_DEBUG -DQT_OPENGL_LIB
-DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED -I../../mkspecs/linux-g++ -I.
-I../../include/QtCore -I../../include/QtGui -I../../include/QtOpenGL
-I../../include -I../shared
-I/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/sysroots/wandboard-dual/usr/include/freetype2 

-I.moc/release-shared -o .obj/release-shared/main.o main.cpp
| In file included from ../../include/QtCore/qtconcurrentmapkernel.h:1:0,
|                  from
../../include/QtCore/../../src/corelib/concurrent/qtconcurrentfilterkernel.h:50,
|                  from ../../include/QtCore/qtconcurrentfilterkernel.h:1,
|                  from
../../include/QtCore/../../src/corelib/concurrent/qtconcurrentfilter.h:49,
|                  from ../../include/QtCore/qtconcurrentfilter.h:1,
|                  from ../../include/QtCore/QtCore:53,
|                  from ../../include/QtGui/QtGui:3,
|                  from gradients.h:47,
|                  from main.cpp:42:
| ../../include/QtCore/../../src/corelib/concurrent/qtconcurrentmapkernel.h: In
function 'QtConcurrent::ThreadEngineStarter<ResultType>
QtConcurrent::startMappedReduced(Iterator, Iterator, MapFunctor, ReduceFunctor,
QtConcurrent::ReduceOptions)':
|
../../include/QtCore/../../src/corelib/concurrent/qtconcurrentmapkernel.h:262:1:
error: expected primary-expression before '}' token
|
../../include/QtCore/../../src/corelib/concurrent/qtconcurrentmapkernel.h:262:1:
error: expected ';' before '}' token
| make[2]: *** [.obj/release-shared/main.o] Error 1
| make[2]: Leaving directory
`/mnt/YOCTOFSL/fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-gnueabi/qt4-x11-free/4.8.4-r51.3/qt-everywhere-opensource-src-4.8.4/demos/gradients'
| make[1]: *** [sub-gradients-make_default] Error 2
~~~~~~~~~~

Taking a look at the source, I don't see a problem:
File:
fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-gnueabi/qt4-x11-free/4.8.4-r51.3/qt-everywhere-opensource-src-4.8.4/src/corelib/concurrent/qtconcurrentmapkernel.h:

~~~~~~~~
template <typename IntermediateType, typename ResultType, typename Iterator,
typename MapFunctor, typename ReduceFunctor>
inline ThreadEngineStarter<ResultType> startMappedReduced(Iterator begin,
Iterator end,
                                                            MapFunctor
mapFunctor, ReduceFunctor reduceFunctor,
                                                            ReduceOptions options)
{
     typedef ReduceKernel<ReduceFunctor, ResultType, IntermediateType> Reducer;
     typedef MappedReducedKernel<ResultType, Iterator, MapFunctor,
ReduceFunctor, Reducer> MappedReduceType;
     return startThreadEngine(new MappedReduceType(begin, end, mapFunctor,
reduceFunctor, options));   <<<<----- Line in question
}

} // namespace QtConcurrent
~~~~~~~~~

Is it possible that the problem is related to the toolchain?

John



