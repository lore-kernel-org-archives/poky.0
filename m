Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id A37824C81210
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 05:42:17 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id BB74A1C0F585
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 12:42:16 +0100 (CET)
X-Auth-Info: vVBGtd3mIIBJ0F44yVAf/NA7hKXRWyapSTErSTF2X6Y=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id AE77A1C0009A
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 12:42:16 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 811DD32105AD
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 12:42:16 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 744AEB335
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 12:42:16 +0100 (CET)
cc: poky@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <20110127111132.C69A3B335@gemini.denx.de>
References: <20110127111132.C69A3B335@gemini.denx.de>
Comments: In-reply-to Wolfgang Denk <wd@denx.de>
	message dated "Thu, 27 Jan 2011 12:11:32 +0100."
Date: Thu, 27 Jan 2011 12:42:16 +0100
Message-Id: <20110127114216.744AEB335@gemini.denx.de>
Subject: Re: Serial console unusable with poky-image-sdk
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
X-List-Received-Date: Thu, 27 Jan 2011 11:42:18 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Hi,

in message <20110127111132.C69A3B335@gemini.denx.de> I wrote:
> 
> it seems that for some time (probably back to laverne-4.0) the serial
> console port is basicly unusable in the poky-image-sdk file system.
> I tried this in several PPC and ARM configurations, and the behaviours
> is pretty much the same: login works fine, but at the shell prompt
> only one out of N input characters (N usually between 2 and 10) gets
> through to the shell.
...
> Is there a way to stop dbus-launch from concurring with a login shell
> on the serial console port?

This patch appears to be working fine for me:

>From: Wolfgang Denk <wd@denx.de>
>Subject: Stop dbus-launch from interfering with a serial console

Signed-off-by: Wolfgang Denk <wd@denx.de>
---

diff --git a/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession b/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
index a87447a..0b73127 100644
--- a/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
+++ b/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
@@ -2,7 +2,7 @@
 
 if [ -x /usr/bin/dbus-launch ]; then
     # As this is the X session script, always start a new DBus session.
-    eval `dbus-launch --sh-syntax --exit-with-session`
+    eval `dbus-launch --sh-syntax --exit-with-session </dev/null`
     echo "D-BUS per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
 fi
 

---

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
The first thing we do is kill all the lawyers.
(Shakespeare. II Henry VI, Act IV, scene ii)

