Return-Path: <wayne.tams@simpleaudio.com>
Received: from grape.ukhost4u.com (grape.ukhost4u.com [188.64.188.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88ABCE0144E
	for <poky@yoctoproject.org>; Thu, 17 Jan 2013 02:18:06 -0800 (PST)
Received: from [213.123.233.22] (port=37466 helo=[10.7.0.56])
	by grape.ukhost4u.com with esmtpsa (TLSv1:DHE-RSA-CAMELLIA256-SHA:256)
	(Exim 4.80) (envelope-from <wayne.tams@simpleaudio.com>)
	id 1TvmXr-00044a-Nb
	for poky@yoctoproject.org; Thu, 17 Jan 2013 10:18:04 +0000
Message-ID: <50F7CFDA.6090505@simpleaudio.com>
Date: Thu, 17 Jan 2013 10:18:02 +0000
From: Wayne Tams <wayne.tams@simpleaudio.com>
Organization: Simple Audio
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: poky@yoctoproject.org
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - grape.ukhost4u.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - simpleaudio.com
X-Get-Message-Sender-Via: grape.ukhost4u.com: authenticated_id:
	wayne.tams+simpleaudio.com/only user confirmed/virtual account
	not confirmed
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: gst-rtsp not building
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
X-List-Received-Date: Thu, 17 Jan 2013 10:18:06 -0000
Content-Type: multipart/alternative;
	boundary="------------000804000503080605030108"

--------------000804000503080605030108
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi, hopefully I am sending this to the right list?

I am in the middle of moving a build system based on a snapshot of an 
old version of OE classic to Yocto. I have noticed that some recipes 
that I am needing are missing or I just have not come by them yet.

One such recipe is gst-rtsp_0.10.8.bb, I have written a new recipe for 
gst-rtsp based on version from OE classic, which I was having some 
problems with then I found a version here 
http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/meta/recipes-multimedia/gstreamer?h=ross/rtsp 
which was not that dissimilar and helped progress the build. Now the 
gst-rtsp_0.10.8.bb build, based on that commit in poky-contrib, gives 
the following error which I am unsure on how to fix.

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_install (see 
/home/wayne/source/y/yoctoProject/raspberryPiBuild/tmp/work/armv6-vfp-poky-linux-gnueabi/gst-rtsp/0.10.8-r0/temp/log.do_install.4459 
for further information)
ERROR: Logfile of failure stored in: 
/home/wayne/source/y/yoctoProject/raspberryPiBuild/tmp/work/armv6-vfp-poky-linux-gnueabi/gst-rtsp/0.10.8-r0/temp/log.do_install.4459
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function do_install
| NOTE: make -j 7 
DESTDIR=/home/wayne/source/y/yoctoProject/raspberryPiBuild/tmp/work/armv6-vfp-poky-linux-gnueabi/gst-rtsp/0.10.8-r0/image 
install
| make: *** No rule to make target `install'.  Stop.
| ERROR: oe_runmake failed
| ERROR: Function failed: do_install (see 
/home/wayne/source/y/yoctoProject/raspberryPiBuild/tmp/work/armv6-vfp-poky-linux-gnueabi/gst-rtsp/0.10.8-r0/temp/log.do_install.4459 
for further information)
ERROR: Task 2 
(/home/wayne/source/y/yoctoProject/meta-simpleaudio/recipes-multimedia/gstreamer/gst-rtsp_0.10.8.bb, 
do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1354 tasks of which 1348 didn't need to 
be rerun and 1 failed.
Waiting for 0 running tasks to finish:

Could anyone suggest what could be causing this error and what I could 
do to fix it.

All the best

Wayne

-- 
Please note that the contents of this email and any attachments are privileged and/or confidential. If delivery to the intended recipient is not possible for any reason, please email us to that effect and delete this email from your system.


--------------000804000503080605030108
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi, hopefully I am sending this to the right list?<br>
    <br>
    I am in the middle of moving a build system based on a snapshot of
    an old version of OE classic to Yocto. I have noticed that some
    recipes that I am needing are missing or I just have not come by
    them yet. <br>
    <br>
    One such recipe is gst-rtsp_0.10.8.bb, I have written a new recipe
    for gst-rtsp based on version from OE classic, which I was having
    some problems with then I found a version here
    <meta http-equiv="content-type" content="text/html;
      charset=ISO-8859-1">
    <a
href="http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/meta/recipes-multimedia/gstreamer?h=ross/rtsp">http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/meta/recipes-multimedia/gstreamer?h=ross/rtsp</a>
    which was not that dissimilar and helped progress the build. Now the
    gst-rtsp_0.10.8.bb build, based on that commit in poky-contrib,
    gives the following error which I am unsure on how to fix.<br>
    <br>
    NOTE: Resolving any missing task queue dependencies<br>
    NOTE: Preparing runqueue<br>
    NOTE: Executing SetScene Tasks<br>
    NOTE: Executing RunQueue Tasks<br>
    ERROR: Function failed: do_install (see
    /home/wayne/source/y/yoctoProject/raspberryPiBuild/tmp/work/armv6-vfp-poky-linux-gnueabi/gst-rtsp/0.10.8-r0/temp/log.do_install.4459
    for further information)<br>
    ERROR: Logfile of failure stored in:
/home/wayne/source/y/yoctoProject/raspberryPiBuild/tmp/work/armv6-vfp-poky-linux-gnueabi/gst-rtsp/0.10.8-r0/temp/log.do_install.4459<br>
    Log data follows:<br>
    | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
    'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
    'common']<br>
    | DEBUG: Executing shell function do_install<br>
    | NOTE: make -j 7
    DESTDIR=/home/wayne/source/y/yoctoProject/raspberryPiBuild/tmp/work/armv6-vfp-poky-linux-gnueabi/gst-rtsp/0.10.8-r0/image
    install<br>
    | make: *** No rule to make target `install'.&nbsp; Stop.<br>
    | ERROR: oe_runmake failed<br>
    | ERROR: Function failed: do_install (see
    /home/wayne/source/y/yoctoProject/raspberryPiBuild/tmp/work/armv6-vfp-poky-linux-gnueabi/gst-rtsp/0.10.8-r0/temp/log.do_install.4459
    for further information)<br>
    ERROR: Task 2
    (/home/wayne/source/y/yoctoProject/meta-simpleaudio/recipes-multimedia/gstreamer/gst-rtsp_0.10.8.bb,
    do_install) failed with exit code '1'<br>
    NOTE: Tasks Summary: Attempted 1354 tasks of which 1348 didn't need
    to be rerun and 1 failed.<br>
    Waiting for 0 running tasks to finish:<br>
    <br>
    Could anyone suggest what could be causing this error and what I
    could do to fix it.<br>
    <br>
    All the best<br>
    <br>
    Wayne<br>
    <pre class="moz-signature" cols="72">-- 
Please note that the contents of this email and any attachments are privileged and/or confidential. If delivery to the intended recipient is not possible for any reason, please email us to that effect and delete this email from your system.</pre>
  </body>
</html>

--------------000804000503080605030108--
