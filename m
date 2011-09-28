Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45A3FE004CF
	for <poky@pokylinux.org>; Wed, 28 Sep 2011 12:40:20 -0700 (PDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1R8zzK-00038l-7Q
	for poky@pokylinux.org; Wed, 28 Sep 2011 21:40:14 +0200
Received: from ppp089210160092.dsl.hol.gr ([89.210.160.92])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 28 Sep 2011 21:40:14 +0200
Received: from gmane by ppp089210160092.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 28 Sep 2011 21:40:14 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 28 Sep 2011 22:40:00 +0300
Organization: Reliable Embedded Systems
Message-ID: <j5vt6g$1en$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210160092.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.20) Gecko/20110805 Thunderbird/3.1.12
Subject: Beta testing BB xm rev A3
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
X-List-Received-Date: Wed, 28 Sep 2011 19:40:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm using a core-image-sato-sdk-beagleboard built from commit
e3c5d7a90ae179af0ac128ea4dfc1a5a6602c2e4.

Interestingly enough the same image, which feels much better with a
beagle-xm rev C does not feel very well with a beagle-xm rev A3.

As a side note Poky 1.0 used to run on my beagle-xm rev A3.

------------[ cut here ]------------
WARNING: at
/work/rber/poky-1.1-beta-e3c5d7a90ae179af0ac128ea4dfc1a5a6602c2e4/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git1+aeea99683c7283f1f3320bf2ee7085ee252d4e7e_1+3ddb22772862a8223640fa97580569924f51bddc-r21/linux/arch/arm/mach-omap2/cpuidle34xx.c:466
omap_init_power_states+0x1b8/0x1d8()
omap_init_power_states: core off state C7 disabled due to i583
Modules linked in:
[<c0061540>] (unwind_backtrace+0x0/0xe8) from [<c008c9a0>]
(warn_slowpath_common+0x54/0x6c)
[<c008c9a0>] (warn_slowpath_common+0x54/0x6c) from [<c008ca50>]
(warn_slowpath_fmt+0x34/0x44)
[<c008ca50>] (warn_slowpath_fmt+0x34/0x44) from [<c006dce8>]
(omap_init_power_states+0x1b8/0x1d8)
[<c006dce8>] (omap_init_power_states+0x1b8/0x1d8) from [<c0012d30>]
(omap3_idle_init+0x50/0x168)
[<c0012d30>] (omap3_idle_init+0x50/0x168) from [<c0011c10>]
(omap3_pm_init+0x538/0x764)
[<c0011c10>] (omap3_pm_init+0x538/0x764) from [<c00563e8>]
(do_one_initcall+0xc0/0x194)
[<c00563e8>] (do_one_initcall+0xc0/0x194) from [<c00089c4>]
(kernel_init+0xd0/0x1ac)
usb 1-2: new high speed USB device using ehci-omap and address 2
[<c00089c4>] (kernel_init+0xd0/0x1ac) from [<c005c1d4>]
(kernel_thread_exit+0x0/0x8)
---[ end trace 5ed0ed9f7f6916be ]---

Here is a complete log:

http://pastebin.com/4a3DM1xR

Regards,

Robert

...Furious activity is no substitute for understanding. - Jack Ganssle

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



