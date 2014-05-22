Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F042E00A44; Thu, 22 May 2014 08:39:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
X-Greylist: delayed 301 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 May 2014 08:39:37 PDT
Received: from mail.chez-thomas.org (unknown [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B71A2E00B95
	for <poky@yoctoproject.org>; Thu, 22 May 2014 08:39:37 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id F2E37F811F8; Thu, 22 May 2014 09:34:35 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 45081F811F7;
	Thu, 22 May 2014 09:34:34 -0600 (MDT)
Message-ID: <537E1922.8070809@mlbassoc.com>
Date: Thu, 22 May 2014 09:34:58 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <537E1644.9040003@dfki.de>
In-Reply-To: <537E1644.9040003@dfki.de>
Subject: Re: Problem Building DHCP into image
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
X-List-Received-Date: Thu, 22 May 2014 15:39:43 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-05-22 09:22, Dr. Markus Eich wrote:
> Dear all,
>
> I try to build a yocto image using the following receipe
>
> http://pastebin.com/SyW3MZrL
>
>
> The build config is
>
>
> Build Configuration:
> BB_VERSION        = "1.20.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "overo"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.5.1"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "dora:19745990465b37107142c5464008ca9f7959cc0b"
> meta-oe
> meta-networking   = "dora:ee173678383683e972c7d4d6f0ef5790bfa50274"
> meta-ros          = "master:821427d23adb33674da76dc34d8ab6983590fcd4"
> meta-overo        = "dora:49d78254783e7cd1da4b7695e0014d526fbb6d58"
> meta-dfki         = "master:d6156057fc7adc1585ec28505f63633e981f66d3"
>
> The problem is building the dhcp part, i.e.
>
> IMAGE_INSTALL += " \
>      dhcp\
> "

I think you probably want dhcp-server

>
> using bitbake dhcp runs fine, but
>
> bitbake my image (see pastbin) results in
>
>
> | Configuring iftop.
> | Collected errors:
> |  * opkg_install_cmd: Cannot install package dhcp.
> | WARNING: /home/eich/overo/build/tmp/work/overo-poky-linux-gnueabi/dfki-console-image/1.0-r0/temp/run.do_rootfs.26292:1 exit 255 from
> |   opkg-cl ${ipkg_args} install ${package_to_install}
> | ERROR: Function failed: do_rootfs (log file is located at /home/eich/overo/build/tmp/work/overo-poky-linux-gnueabi/dfki-console-image/1.0-r0/temp/log.do_rootfs.26292)
> ERROR: Task 7 (/home/eich/overo/meta-dfki/images/dfki-console-image.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 5620 tasks of which 5619 didn't need to be rerun and 1 failed.
> No currently running tasks (5619 of 5621)
>
> Summary: 1 task failed:
>    /home/eich/overo/meta-dfki/images/dfki-console-image.bb, do_rootfs
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> Any ideas?
>
> Cheers,
>
> Markus
>
>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

