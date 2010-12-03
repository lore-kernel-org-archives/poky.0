Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 393E24C80FAC
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 18:50:39 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 16:50:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,290,1288594800"; d="scan'208";a="580072948"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 16:50:37 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 3 Dec 2010 08:50:11 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 3 Dec 2010 08:50:11 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Fri, 3 Dec 2010
	08:50:06 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Darren Hart <dvhart@linux.intel.com>
Date: Fri, 3 Dec 2010 08:50:05 +0800
Thread-Topic: [poky] gst-ffmpeg linker failure
Thread-Index: AcuSeJofAlpoGLHMSS+t0D7s9kyCEwACz2yg
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A30410F2D@shsmsx501.ccr.corp.intel.com>
References: <4CF7F092.9020703@linux.intel.com> <4CF82B7C.5000305@mlbassoc.com>
In-Reply-To: <4CF82B7C.5000305@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: gst-ffmpeg linker failure
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
X-List-Received-Date: Fri, 03 Dec 2010 00:50:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Darren,

Gst-ffmpeg is to be upgrade in this round. I will do it and check the issue=
.=20

Thanks,
Dongxiao

Gary Thomas wrote:
> On 12/02/2010 12:16 PM, Darren Hart wrote:
>> I see the following failure trying to build gst-ffmpeg for
>> qemux86-64 on both Ubuntu 10.10 and Fedora 13. It seems to be
>> complaining that things aren't being built with -fPIC. =20
>>=20
>>> From log.do_compile:
>>=20
>> x86_64-poky-linux-libtool: link:  ccache  x86_64-poky-linux-gcc
>> -L/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib
>> -shared  -fPIC -DPIC  .libs/libgstffmpeg_la-gstffmpeg.o
>> .libs/libgstffmpeg_la-gstffmpegprotocol.o
>> .libs/libgstffmpeg_la-gstffmpegcodecmap.o
>> .libs/libgstffmpeg_la-gstffmpegenc.o
>> .libs/libgstffmpeg_la-gstffmpegdec.o
>> .libs/libgstffmpeg_la-gstffmpegdemux.o
>> .libs/libgstffmpeg_la-gstffmpegdeinterlace.o
>> .libs/libgstffmpeg_la-gstffmpegscale.o  -Wl,--whole-archive
>> ../../gst-libs/ext/ffmpeg/libavformat/.libs/libavformat.a
>> -Wl,--no-whole-archive  -Wl,-rpath
>> -Wl,/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/li
>> b
>> -L/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/
>> .libs=20
>> -L/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib
>> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/li
>> bvorbisenc.so
>> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/li
>> bvorbis.so /vol/1/dvhart/poky.g
> it
>> /build/tmp/sysroots/x86_64-poky-linux/usr/lib/libogg.so
>> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libg=
stbase-0.10.so
>> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libg=
streamer-0.10.so
>> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libg=
object-2.0.so
>> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libg=
module-2.0.so
>> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libx=
ml2.so
>> -ldl
>> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libz=
.so
>> -lm
>> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libg=
thread-2.0.so
>> -lpthread
>> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libg=
lib-2.0.so
>> -lrt  -pthread -pthread -O2 -Wl,-O1 -Wl,--as-needed -pthread =20
>> -pthread -Wl,-soname -Wl,libgstffmpeg.so -Wl,-version-script
>> -Wl,.libs/libgstffmpeg.ver -o .libs/libgstffmpeg.so
>> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-linux/usr/libexec/x86
>> _64-poky-linux/gcc/x86_64-poky-linux/4.5.1/ld:
>> .libs/libgstffmpeg_la-gstffmpeg.o: relocation R_X86_64_32 against
>> `.text' can not be used when making a shared object; recompile with
>> -fPIC .libs/libgstffmpeg_la-gstffmpeg.o: could not read symbols: Bad
>> value              =20
>> collect2: ld returned 1 exit status
>> make[3]: *** [libgstffmpeg.la] Error 1
>> make[3]: Leaving directory
>> `/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10=
.1-r5/gst-ffmpeg-0.10.1/ext/ffmpeg'
>> make[2]: *** [all-recursive] Error 1
>> make[2]: Leaving directory
>> `/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10=
.1-r5/gst-ffmpeg-0.10.1/ext'
>> make[1]: *** [all-recursive] Error 1
>> make[1]: Leaving directory
>> `/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10=
.1-r5/gst-ffmpeg-0.10.1'
>> make: *** [all] Error 2
>> FATAL: oe_runmake failed
>> ERROR: Task failed: ('function do_compile failed',
>> '/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.
>> 10.1-r5/temp/log.do_compile.22338')
>>=20
>=20
> Maybe you should try a newer version?  gst-ffmpeg_0.10.8 builds for
> me in Poky (my layer of course)=20


