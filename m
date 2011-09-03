Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E331DE0126A
	for <poky@pokylinux.org>; Sat,  3 Sep 2011 03:21:06 -0700 (PDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QznLU-0007dg-TM
	for poky@pokylinux.org; Sat, 03 Sep 2011 12:21:04 +0200
Received: from p578b5e99.dip0.t-ipconnect.de ([87.139.94.153])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 03 Sep 2011 12:21:04 +0200
Received: from gmane by p578b5e99.dip0.t-ipconnect.de with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 03 Sep 2011 12:21:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 03 Sep 2011 13:20:50 +0300
Organization: Reliable Embedded Systems
Message-ID: <j3sv23$rbe$1@dough.gmane.org>
References: <4E5D200B.20209@mlbassoc.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: p578b5e99.dip0.t-ipconnect.de
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.20) Gecko/20110805 Thunderbird/3.1.12
In-Reply-To: <4E5D200B.20209@mlbassoc.com>
Subject: Re: Debugging udev
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 03 Sep 2011 10:21:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Gary,

I'm currently on the road and can not try it myself on a yocto/poky, so
here are some wild guesses and ideas...

On 08/30/2011 08:38 PM, Gary Thomas wrote:
> I'm having trouble with udev creating all the devices I need in
> my system.  Based on the latest master, using udev 164.
> 
> My system is based on the 3.0 kernel (mainline, not yocto) with
> Video4Linux enabled with OMAP3 ISP.  This creates a bunch of
> special devices:
>   # ls /sys/class/video4linux/
>   v4l-subdev0  v4l-subdev3  v4l-subdev6  video0       video3       video6
>   v4l-subdev1  v4l-subdev4  v4l-subdev7  video1       video4
>   v4l-subdev2  v4l-subdev5  v4l-subdev8  video2       video5
> However, udev is not actually creating the device nodes.
> 
> Any ideas why?
> Any hints on how to debug this?

*) make sure udev is running - I guess it is.
*) run on a terminal something like udevmonitor --env or udevadm monitor
(don't know which one comes with poky) and load some kernel modules
where udev works. Like this you should be able to see the messages sent
by the kernel to udev. Manually load v4l so you can see if the kernel
events are sent.
*) if messages are sent, you most likely need to cook the udev config to
create the proper devices for you
*) Manually you could do make the /dev entries like this:

If you run

find /sys -name dev

you will get many hits, such as:

/sys/block/fd0/dev

cat /sys/block/fd0/dev
2:0

means if loading this module, one should also create its device as follows:
mknod /dev/fd0 b 2 0

Your goal should be to make a 'dev' entry appear under /sys for your
device and then udev (and mdev in embedded busybox systems) will mknod
it automatically.

*) DEVTMPFS
Besides I'm not a big fan of udev/mkdev for embedded systems since we
have user space dependencies. The kernel obviously knows about the v4l
class, but there are no device entries made.

I prefer to use DEVTMPFS (enable CONFIG_DEVTMPFS in your kernel config)
where the kernel makes the dev entries and you don't have user space
dependencies.

> 
> Thanks
> 

I hope this gives you some new ideas;)

Regards,

Robert


..."Experience is what causes a person to make new mistakes instead of
old ones."

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



