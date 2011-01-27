Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 137E34C8118C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 05:11:34 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 0C5D31C01F0D
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 12:11:33 +0100 (CET)
X-Auth-Info: ell/CLVuerW+bfYK/5VmnfOTABePPiot38gkG7R/PoI=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 058351C0016A
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 12:11:33 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id DDA3A32105AD
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 12:11:32 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id C69A3B335
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 12:11:32 +0100 (CET)
To: poky@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Thu, 27 Jan 2011 12:11:32 +0100
Message-Id: <20110127111132.C69A3B335@gemini.denx.de>
Subject: Serial console unusable with poky-image-sdk
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
X-List-Received-Date: Thu, 27 Jan 2011 11:11:34 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Hi,

it seems that for some time (probably back to laverne-4.0) the serial
console port is basicly unusable in the poky-image-sdk file system.
I tried this in several PPC and ARM configurations, and the behaviours
is pretty much the same: login works fine, but at the shell prompt
only one out of N input characters (N usually between 2 and 10) gets
through to the shell.

I found that dbus-launch (running as "dbus-launch --sh-syntax
--exit-with-session") is also reading from /dev/console and "eating"
the missing characters.

As soon as I stop the Xserver ("sh /etc/init.d/xserver-nodm stop")
the serial console starts wroking fine (because dbus-launch is not
running any more).

Is there a way to stop dbus-launch from concurring with a login shell
on the serial console port?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Do not follow where the path may lead....go instead where there is no
path and leave a trail.

