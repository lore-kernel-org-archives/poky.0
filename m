Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews04.kpnxchange.com (cpsmtpb-ews04.kpnxchange.com
	[213.75.39.7])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46ABF4C8024E
	for <poky@yoctoproject.org>; Wed, 11 May 2011 05:23:58 -0500 (CDT)
Received: from cpbrm-ews27.kpnxchange.com ([10.94.84.158]) by
	cpsmtpb-ews04.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Wed, 11 May 2011 12:23:57 +0200
Received: from CPSMTPM-CMT102.kpnxchange.com ([195.121.3.18]) by
	cpbrm-ews27.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Wed, 11 May 2011 12:23:56 +0200
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT102.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Wed, 11 May 2011 12:23:56 +0200
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits))
	for poky@yoctoproject.org; Wed, 11 May 2011 12:23:54 +0200
Message-ID: <4DCA63B5.1000607@de-haardt.com>
Date: Wed, 11 May 2011 12:23:49 +0200
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4DCA58F8.1050104@de-haardt.com>
In-Reply-To: <4DCA58F8.1050104@de-haardt.com>
X-OriginalArrivalTime: 11 May 2011 10:23:56.0293 (UTC)
	FILETIME=[88AD3B50:01CC0FC5]
X-RcptDomain: yoctoproject.org
Subject: Re: gstreamer-ti linker crash
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
X-List-Received-Date: Wed, 11 May 2011 10:23:59 -0000
Content-Type: multipart/alternative;
	boundary="------------010908080601020509060808"

--------------010908080601020509060808
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Oops, forgot to comment the following in the recipe file:

# Angstrom 2008 breaks with -Wl,-T, while angstrom 2010 needs it
#if [ $(${TARGET_PREFIX}gcc -dumpversion | awk -F. '{print $2}') -gt 3 ] ; then
#   # Fix up linkerscripts, recent toolchains need -T to prepend the default script to the custom one
#   for makefile in $(find ${S} -name "Makefile.am") ; do
#       sed -i -e 's:-Wl,$(XDC_CONFIG_BASENAME)/linker.cmd:-Wl,-T,$(XDC_CONFIG_BASENAME)/linker.cmd:g' $makefile
#   done
#fi
It compiles now.

Regards,
Gerard

On 05/11/2011 11:38 AM, Gerard van den Bosch wrote:

> Hello,
>
> I am trying to get gstreamer-ti compiled into Poky Laverne from the 
> OpenEmbedded repository.
>
> I have the following dependency packages from meta-texasinstruments:
> ti-dspbios,ti-cgt6x,ti-local-power-manager,ti-dsplink and
> ti-xcdtools -> version 3.20.06.81 with the arm-linker-hack patch
>
> The following dependency packages I have got from OpenEmbedded repository:
> ti-framework-components,ti-biosutils,ti-edma3lld,ti-xdias,ti-codec-engine,ti-codecs-omap3530,ti-c6accel,ti-dmai 
> and
> ti-linuxutils -> version 2_26_01_02
>
> These packages are currently getting compiled, but it took some 
> changes to get there.
>
> But during the compilation of gstreamer-ti it crashes and I don't 
> understand what's exactly happening when it goes wrong.
>
> There are a lot of compile messages but the end of the log is:
> | arm-poky-linux-gnueabi-libtool: link: /bin/grep -E -e 
> "_*(gst_|Gst|GST_).*" ".libs/libgstticodecplugin.exp" > 
> ".libs/libgstticodecplugin.expT"
> | arm-poky-linux-gnueabi-libtool: link: mv -f 
> ".libs/libgstticodecplugin.expT" ".libs/libgstticodecplugin.exp"
> | arm-poky-linux-gnueabi-libtool: link: echo "{ global:" > 
> .libs/libgstticodecplugin.ver
> | arm-poky-linux-gnueabi-libtool: link:  cat 
> .libs/libgstticodecplugin.exp | sed -e "s/\(.*\)/\1;/" >> 
> .libs/libgstticodecplugin.ver
> | arm-poky-linux-gnueabi-libtool: link:  echo "local: *; };" >> 
> .libs/libgstticodecplugin.ver
> | arm-poky-linux-gnueabi-libtool: link:  arm-poky-linux-gnueabi-gcc 
> -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp 
> -fno-tree-vectorize 
> --sysroot=/home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi 
> -shared  .libs/libgstticodecplugin_la-gstticodecplugin.o 
> .libs/libgstticodecplugin_la-gsttiauddec1.o 
> .libs/libgstticodecplugin_la-gsttividdec2.o 
> .libs/libgstticodecplugin_la-gsttiimgenc1.o 
> .libs/libgstticodecplugin_la-gsttiimgdec1.o 
> .libs/libgstticodecplugin_la-gsttidmaibuffertransport.o 
> .libs/libgstticodecplugin_la-gsttidmaibuftab.o 
> .libs/libgstticodecplugin_la-gstticircbuffer.o 
> .libs/libgstticodecplugin_la-gsttidmaivideosink.o 
> .libs/libgstticodecplugin_la-gstticodecs.o 
> .libs/libgstticodecplugin_la-gstticodecs_platform.o 
> .libs/libgstticodecplugin_la-gsttiquicktime_aac.o 
> .libs/libgstticodecplugin_la-gsttiquicktime_h264.o 
> .libs/libgstticodecplugin_la-gsttividenc1.o 
> .libs/libgstticodecplugin_la-gsttiaudenc1.o 
> .libs/libgstticodecplugin_la-gstticommonutils.o 
> .libs/libgstticodecplugin_la-gsttividresize.o 
> .libs/libgstticodecplugin_la-gsttidmaiperf.o 
> .libs/libgstticodecplugin_la-gsttiquicktime_mpeg4.o   -Wl,-rpath 
> -Wl,/home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib 
> -L/home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/.libs 
> /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgstvideo-0.10.so 
> /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgstaudio-0.10.so 
> /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgstbase-0.10.so 
> /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgstinterfaces-0.10.so 
> /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgstreamer-0.10.so 
> /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgobject-2.0.so 
> /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgmodule-2.0.so 
> /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libxml2.so 
> -ldl 
> /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libz.so 
> /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgthread-2.0.so 
> -lpthread -lrt 
> /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libglib-2.0.so 
> -lm  -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp 
> -pthread -march=armv5t -Wl,-T -Wl,gstticodecplugin_omap3530/linker.cmd 
> -Wl,-O1 -Wl,--as-needed -pthread -pthread   -pthread -Wl,-soname 
> -Wl,libgstticodecplugin.so -Wl,-version-script 
> -Wl,.libs/libgstticodecplugin.ver -o .libs/libgstticodecplugin.so
> | collect2: ld terminated with signal 11 [Segmentation fault]
> | 
> /home/gerard/poky/build/tmp/sysroots/i686-linux/usr/libexec/armv7a-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.5.0/ld: 
> BFD (GNU Binutils) 2.20.1.20100303 assertion fail 
> /home/gerard/poky/build/tmp/work/armv7a-poky-linux-gnueabi/binutils-cross-2.20.1-r3/binutils-2.20.1/bfd/elf32-arm.c:12425
> | make[3]: *** [libgstticodecplugin.la] Error 1
> | make[3]: Leaving directory 
> `/home/gerard/poky/build/tmp/work/tao3530-poky-linux-gnueabi/gstreamer-ti-svnr822-r83+r1/gstreamer_ti/ti_build/ticodecplugin/src'
> | make[2]: *** [all] Error 2
> | make[2]: Leaving directory 
> `/home/gerard/poky/build/tmp/work/tao3530-poky-linux-gnueabi/gstreamer-ti-svnr822-r83+r1/gstreamer_ti/ti_build/ticodecplugin/src'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory 
> `/home/gerard/poky/build/tmp/work/tao3530-poky-linux-gnueabi/gstreamer-ti-svnr822-r83+r1/gstreamer_ti/ti_build/ticodecplugin'
> | make: *** [all] Error 2
> | FATAL: oe_runmake failed
> | ERROR: Task failed: ('function do_compile failed', 
> '/home/gerard/poky/build/tmp/work/tao3530-poky-linux-gnueabi/gstreamer-ti-svnr822-r83+r1/temp/log.do_compile.2778')
> NOTE: package gstreamer-ti-svnr822-r83+r1: task do_compile: Failed
> ERROR: Task 620 
> (/home/gerard/poky/meta/recipes-ti/gstreamer/gstreamer-ti_svn.bb, 
> do_compile) failed with 1
> ERROR: 
> '/home/gerard/poky/meta/recipes-ti/gstreamer/gstreamer-ti_svn.bb' failed
>
> It looks like the whole linker is crashing.
> Does someone know what's going wrong here or give me a direction where 
> to look?
> Would it be useful to upgrade the binutils package to 2.21 from the 
> poky repository?
>
> Regards,
> Gerard
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--------------010908080601020509060808
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    <pre>Oops, forgot to comment the following in the recipe file:

# Angstrom 2008 breaks with -Wl,-T, while angstrom 2010 needs it
#if [ $(${TARGET_PREFIX}gcc -dumpversion | awk -F. '{print $2}') -gt 3 ] ; then
#   # Fix up linkerscripts, recent toolchains need -T to prepend the default script to the custom one
#   for makefile in $(find ${S} -name "Makefile.am") ; do
#       sed -i -e 's:-Wl,$(XDC_CONFIG_BASENAME)/linker.cmd:-Wl,-T,$(XDC_CONFIG_BASENAME)/linker.cmd:g' $makefile
#   done
#fi
It compiles now.

Regards,
Gerard
</pre>
    <pre>On 05/11/2011 11:38 AM, Gerard van den Bosch wrote:</pre>
    <blockquote cite="mid:4DCA58F8.1050104@de-haardt.com" type="cite">
      <meta http-equiv="content-type" content="text/html;
        charset=ISO-8859-1">
      <font face="Courier New, Courier, monospace"><small><small>Hello,<br>
            <br>
            I am trying to get gstreamer-ti compiled into Poky Laverne
            from the OpenEmbedded repository.<br>
            <br>
            I have the following dependency packages from
            meta-texasinstruments:<br>
            ti-dspbios,ti-cgt6x,ti-local-power-manager,</small></small></font><font
        face="Courier New, Courier, monospace"><small><small>ti-dsplink
            and</small></small></font><br>
      <font face="Courier New, Courier, monospace"><small><small>ti-xcdtools


            -&gt; version 3.20.06.81 with the arm-linker-hack patch<br>
            <br>
            The following dependency packages I have got from
            OpenEmbedded repository:<br>
            ti-framework-components,ti-biosutils,ti-edma3lld,ti-xdias,ti-codec-engine,ti-codecs-omap3530,ti-c6accel,ti-dmai


            and<br>
            ti-linuxutils -&gt; version 2_26_01_02</small> <small><br>
            <br>
            These packages are currently getting compiled, but it took
            some changes to get there.<br>
            <br>
            But during the compilation of gstreamer-ti it crashes and I
            don't understand what's exactly happening when it goes
            wrong.<br>
            <br>
            There are a lot of compile messages but the end of the log
            is:<br>
            | arm-poky-linux-gnueabi-libtool: link: /bin/grep -E -e
            "_*(gst_|Gst|GST_).*" ".libs/libgstticodecplugin.exp" &gt;
            ".libs/libgstticodecplugin.expT"<br>
            | arm-poky-linux-gnueabi-libtool: link: mv -f
            ".libs/libgstticodecplugin.expT"
            ".libs/libgstticodecplugin.exp"<br>
            | arm-poky-linux-gnueabi-libtool: link: echo "{ global:"
            &gt; .libs/libgstticodecplugin.ver<br>
            | arm-poky-linux-gnueabi-libtool: link:&nbsp; cat
            .libs/libgstticodecplugin.exp | sed -e "s/\(.*\)/\1;/"
            &gt;&gt; .libs/libgstticodecplugin.ver<br>
            | arm-poky-linux-gnueabi-libtool: link:&nbsp; echo "local: *; };"
            &gt;&gt; .libs/libgstticodecplugin.ver<br>
            | arm-poky-linux-gnueabi-libtool: link:&nbsp;
            arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8
            -mfpu=neon -mfloat-abi=softfp -fno-tree-vectorize
            --sysroot=/home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi
            -shared&nbsp; .libs/libgstticodecplugin_la-gstticodecplugin.o
            .libs/libgstticodecplugin_la-gsttiauddec1.o
            .libs/libgstticodecplugin_la-gsttividdec2.o
            .libs/libgstticodecplugin_la-gsttiimgenc1.o
            .libs/libgstticodecplugin_la-gsttiimgdec1.o
            .libs/libgstticodecplugin_la-gsttidmaibuffertransport.o
            .libs/libgstticodecplugin_la-gsttidmaibuftab.o
            .libs/libgstticodecplugin_la-gstticircbuffer.o
            .libs/libgstticodecplugin_la-gsttidmaivideosink.o
            .libs/libgstticodecplugin_la-gstticodecs.o
            .libs/libgstticodecplugin_la-gstticodecs_platform.o
            .libs/libgstticodecplugin_la-gsttiquicktime_aac.o
            .libs/libgstticodecplugin_la-gsttiquicktime_h264.o
            .libs/libgstticodecplugin_la-gsttividenc1.o
            .libs/libgstticodecplugin_la-gsttiaudenc1.o
            .libs/libgstticodecplugin_la-gstticommonutils.o
            .libs/libgstticodecplugin_la-gsttividresize.o
            .libs/libgstticodecplugin_la-gsttidmaiperf.o
            .libs/libgstticodecplugin_la-gsttiquicktime_mpeg4.o&nbsp;&nbsp;
            -Wl,-rpath
            -Wl,/home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib

            -L/home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/.libs

            /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgstvideo-0.10.so

            /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgstaudio-0.10.so

            /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgstbase-0.10.so

            /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgstinterfaces-0.10.so

            /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgstreamer-0.10.so

            /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgobject-2.0.so

            /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgmodule-2.0.so

            /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libxml2.so

            -ldl
            /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libz.so

            /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libgthread-2.0.so

            -lpthread -lrt
            /home/gerard/poky/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib/libglib-2.0.so

            -lm&nbsp; -march=armv7-a -mtune=cortex-a8 -mfpu=neon
            -mfloat-abi=softfp -pthread -march=armv5t -Wl,-T
            -Wl,gstticodecplugin_omap3530/linker.cmd -Wl,-O1
            -Wl,--as-needed -pthread -pthread&nbsp;&nbsp; -pthread -Wl,-soname
            -Wl,libgstticodecplugin.so -Wl,-version-script
            -Wl,.libs/libgstticodecplugin.ver -o
            .libs/libgstticodecplugin.so<br>
            | collect2: ld terminated with signal 11 [Segmentation
            fault]<br>
            |
            /home/gerard/poky/build/tmp/sysroots/i686-linux/usr/libexec/armv7a-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.5.0/ld:

            BFD (GNU Binutils) 2.20.1.20100303 assertion fail
/home/gerard/poky/build/tmp/work/armv7a-poky-linux-gnueabi/binutils-cross-2.20.1-r3/binutils-2.20.1/bfd/elf32-arm.c:12425<br>
            | make[3]: *** [libgstticodecplugin.la] Error 1<br>
            | make[3]: Leaving directory
`/home/gerard/poky/build/tmp/work/tao3530-poky-linux-gnueabi/gstreamer-ti-svnr822-r83+r1/gstreamer_ti/ti_build/ticodecplugin/src'<br>
            | make[2]: *** [all] Error 2<br>
            | make[2]: Leaving directory
`/home/gerard/poky/build/tmp/work/tao3530-poky-linux-gnueabi/gstreamer-ti-svnr822-r83+r1/gstreamer_ti/ti_build/ticodecplugin/src'<br>
            | make[1]: *** [all-recursive] Error 1<br>
            | make[1]: Leaving directory
`/home/gerard/poky/build/tmp/work/tao3530-poky-linux-gnueabi/gstreamer-ti-svnr822-r83+r1/gstreamer_ti/ti_build/ticodecplugin'<br>
            | make: *** [all] Error 2<br>
            | FATAL: oe_runmake failed<br>
            | ERROR: Task failed: ('function do_compile failed',
'/home/gerard/poky/build/tmp/work/tao3530-poky-linux-gnueabi/gstreamer-ti-svnr822-r83+r1/temp/log.do_compile.2778')<br>
            NOTE: package gstreamer-ti-svnr822-r83+r1: task do_compile:
            Failed<br>
            ERROR: Task 620
            (/home/gerard/poky/meta/recipes-ti/gstreamer/gstreamer-ti_svn.bb,
            do_compile) failed with 1<br>
            ERROR:
            '/home/gerard/poky/meta/recipes-ti/gstreamer/gstreamer-ti_svn.bb'
            failed<br>
            <br>
            It looks like the whole linker is crashing.<br>
            Does someone know what's going wrong here or give me a
            direction where to look?<br>
            Would it be useful to upgrade the binutils package to 2.21
            from the poky repository?<br>
            <br>
            Regards,<br>
            Gerard<br>
          </small></small></font>
      <pre wrap="">
<fieldset class="mimeAttachmentHeader"></fieldset>
_______________________________________________
poky mailing list
<a class="moz-txt-link-abbreviated" href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------010908080601020509060808--
