Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 82A9D4C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 17:27:57 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 463321660874; Thu,  2 Dec 2010 16:27:57 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	URI_NOVOWEL autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5C8351660871;
	Thu,  2 Dec 2010 16:27:56 -0700 (MST)
Message-ID: <4CF82B7C.5000305@mlbassoc.com>
Date: Thu, 02 Dec 2010 16:27:56 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4CF7F092.9020703@linux.intel.com>
In-Reply-To: <4CF7F092.9020703@linux.intel.com>
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
X-List-Received-Date: Thu, 02 Dec 2010 23:27:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2010 12:16 PM, Darren Hart wrote:
> I see the following failure trying to build gst-ffmpeg for qemux86-64 on both Ubuntu 10.10 and Fedora 13. It seems to be complaining that things aren't being built with -fPIC.
>
>> From log.do_compile:
>
> x86_64-poky-linux-libtool: link:  ccache  x86_64-poky-linux-gcc -L/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib -shared  -fPIC -DPIC  .libs/libgstffmpeg_la-gstffmpeg.o .libs/libgstffmpeg_la-gstffmpegprotocol.o .libs/libgstffmpeg_la-gstffmpegcodecmap.o .libs/libgstffmpeg_la-gstffmpegenc.o .libs/libgstffmpeg_la-gstffmpegdec.o .libs/libgstffmpeg_la-gstffmpegdemux.o .libs/libgstffmpeg_la-gstffmpegdeinterlace.o .libs/libgstffmpeg_la-gstffmpegscale.o  -Wl,--whole-archive ../../gst-libs/ext/ffmpeg/libavformat/.libs/libavformat.a -Wl,--no-whole-archive  -Wl,-rpath -Wl,/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib -L/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/.libs -L/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libvorbisenc.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libvorbis.so /vol/1/dvhart/poky.g
it
> /build/tmp/sysroots/x86_64-poky-linux/usr/lib/libogg.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libgstbase-0.10.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libgstreamer-0.10.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libgobject-2.0.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libgmodule-2.0.so /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libxml2.so -ldl /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libz.so -lm /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libgthread-2.0.so -lpthread /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib/libglib-2.0.so -lrt  -pthread -pthread -O2 -Wl,-O1 -Wl,--as-needed -pthread   -pthread -Wl,-soname -Wl,libgstffmpeg.so -Wl,-version-script -Wl,.libs/libgstffmpeg.ver -o .libs/libgstffmpeg.so
> /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.5.1/ld: .libs/libgstffmpeg_la-gstffmpeg.o: relocation R_X86_64_32 against `.text' can not be used when making a shared object; recompile with -fPIC
> .libs/libgstffmpeg_la-gstffmpeg.o: could not read symbols: Bad value
> collect2: ld returned 1 exit status
> make[3]: *** [libgstffmpeg.la] Error 1
> make[3]: Leaving directory `/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/gst-ffmpeg-0.10.1/ext/ffmpeg'
> make[2]: *** [all-recursive] Error 1
> make[2]: Leaving directory `/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/gst-ffmpeg-0.10.1/ext'
> make[1]: *** [all-recursive] Error 1
> make[1]: Leaving directory `/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/gst-ffmpeg-0.10.1'
> make: *** [all] Error 2
> FATAL: oe_runmake failed
> ERROR: Task failed: ('function do_compile failed', '/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/temp/log.do_compile.22338')
>

Maybe you should try a newer version?  gst-ffmpeg_0.10.8 builds for me in Poky
(my layer of course)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

