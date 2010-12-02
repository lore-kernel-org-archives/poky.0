Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 599DE4C80FAC
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 13:16:38 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Dec 2010 11:16:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="632504231"
Received: from unknown (HELO [10.255.13.208]) ([10.255.13.208])
	by fmsmga002.fm.intel.com with ESMTP; 02 Dec 2010 11:16:37 -0800
Message-ID: <4CF7F092.9020703@linux.intel.com>
Date: Thu, 02 Dec 2010 11:16:34 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
	Dongxiao Xu <dongxiao.xu@intel.com>
Subject: gst-ffmpeg linker failure
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
X-List-Received-Date: Thu, 02 Dec 2010 19:16:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I see the following failure trying to build gst-ffmpeg for qemux86-64 on both Ubuntu 10.10 and Fedora 13. It seems to be complaining that things aren't being built with -fPIC.

From log.do_compile:

x86_64-poky-linux-libtool: link:  ccache  x86_64-poky-linux-gcc -L/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib -shared  -fPIC -DPIC  .libs/libgstffmpeg_la-gstffmpeg.o .libs/libgstffmpeg_la-gstffmpegprotocol.o .libs/libgstffmpeg_la-gstffmpegcodecmap.o .libs/libgstffmpeg_la-gstffmpegenc.o .libs/libgstffmpeg_la-gstffmpegdec.o .libs/libgstffmpeg_la-gstffmpegdemux.o .libs/libgstffmpeg_la-gstffmpegdeinterlace.o .libs/libgstffmpeg_la-gstffmpegscale.o  -Wl,--whole-archive ../../gst-libs/ext/ffmpeg/libavformat/.libs/libavformat.a -Wl,--no-whole-archive  -Wl,-rpath -Wl,/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib -L/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/.libs -L/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libvorbisenc.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libvorbis.so /vol/1/dvhart/poky.git
/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libogg.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libgstbase-0.10.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libgstreamer-0.10.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libgobject-2.0.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libgmodule-2.0.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libxml2.so -ldl /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libz.so -lm /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libgthread-2.0.so -lpthread /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libglib-2.0.so -lrt  -pthread -pthread -O2 -Wl,-O1 -Wl,--as-needed -pthread   -pthread -Wl,-soname -Wl,libgstffmpeg.so -Wl,-version-script -Wl,.libs/libgstffmpeg.ver -o .libs/libgstffmpeg.so
/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.5.1/ld: .libs/libgstffmpeg_la-gstffmpeg.o: relocation R_X86_64_32 against `.text' can not be used when making a shared object; recompile with -fPIC
.libs/libgstffmpeg_la-gstffmpeg.o: could not read symbols: Bad value
collect2: ld returned 1 exit status
make[3]: *** [libgstffmpeg.la] Error 1
make[3]: Leaving directory `/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/gst-ffmpeg-0.10.1/ext/ffmpeg'
make[2]: *** [all-recursive] Error 1
make[2]: Leaving directory `/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/gst-ffmpeg-0.10.1/ext'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/gst-ffmpeg-0.10.1'
make: *** [all] Error 2
FATAL: oe_runmake failed
ERROR: Task failed: ('function do_compile failed', '/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/temp/log.do_compile.22338')


-- 
Darren Hart
Yocto Linux Kernel

