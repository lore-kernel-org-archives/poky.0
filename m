Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id D80ED4C800A4
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 03:29:06 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id B16111C08DE3
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 10:29:05 +0100 (CET)
X-Auth-Info: m4CgJiWJDgXZmXGc20ptdb4nxsL5LP4yxA1KfNGtWcU=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 7FC511C00125
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 10:29:05 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 644F13066F70
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 10:29:05 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 45870D2B4BD
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 10:29:05 +0100 (CET)
To: poky@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Fri, 04 Feb 2011 10:29:05 +0100
Message-Id: <20110204092905.45870D2B4BD@gemini.denx.de>
Subject: Fixes for bugs with 1.0 M3 target milestones?
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
X-List-Received-Date: Fri, 04 Feb 2011 09:29:07 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Hi,

I notice that there are a number of bugs open that are (1) more or
less directly visible to the "end user" or "customer" (i. e. not only
"build problems" that are mostly visible to engineering) and that (2)
are marked with a "1.0 M3" target milestone, for example:

Bug 154 - libtool has incorrect paths embedded
Bug 227 - meta/packages/meta/*toolchain*
Bug 336 - [QT] fotowall display abnormal on eMenlow
Bug 348 - [QT] fotowall segfaults with "Painter not active"
Bug 412 - lttv can't be loaded in GUI mode
Bug 443 - zypper encounter segfault when startup with qemuppc
Bug 452 - [Qt] qtdemo warning: missing Qt database driver
Bug 555 - After untar sdk tarball to /opt/poky, My root folder's user info is changed!
Bug 580 - poky-qemu does not make proper use of CROSSPATH (breaking distcc)
Bug 603 - [Netbook]Connection preferences did not enable wireless networks
Bug 610 - no rootfs and dtb file in qemumpc8315e-rdb milestone build
Bug 615 - [multimedia] video player reports error when open video files
Bug 616 - [multimedia] No sound from machine when playing audio files
Bug 658 - The bottom icons on Applications and All screen are cut-off in qemu.
Bug 659 - The gcc/g++ is not built in the poky-image-sdk-routerstationpro-.* 

[this is just a selection, mostly bugs that are on my own radar, too]

Bugs that affect basic functionality (video player mnot working,
audio player not working, fotowall not working) are pretty much of
show stoppers; also bugs that impair the general appearance (like the
cut-off icons) result in poor first impressions.

With the "1.0 M3" target milestone not being too far away I wonder if
these bugs will really be fixed until then? Some of these bug reports
are actually pretty old...

Thanks!

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Always borrow money from a pessimist; they don't expect  to  be  paid
back.

