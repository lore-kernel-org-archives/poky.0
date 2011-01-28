Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0755B4C81246
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 01:05:21 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id C96031C0038C;
	Fri, 28 Jan 2011 08:05:20 +0100 (CET)
X-Auth-Info: bYDtAi2sfrVBx6vsaH3LOnX0x/9K4FbtWtQ+DdnNYkE=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 6AB1B1C000A7;
	Fri, 28 Jan 2011 08:05:20 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 4EBE332105AD;
	Fri, 28 Jan 2011 08:05:20 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 31A2BD42A86;
	Fri, 28 Jan 2011 08:05:20 +0100 (CET)
To: Darren Hart <dvhart@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4D41F2D6.4040406@linux.intel.com>
References: <20110127111132.C69A3B335@gemini.denx.de>
	<20110127114216.744AEB335@gemini.denx.de>
	<4D41F2D6.4040406@linux.intel.com>
Comments: In-reply-to Darren Hart <dvhart@linux.intel.com>
	message dated "Thu, 27 Jan 2011 14:33:58 -0800."
Date: Fri, 28 Jan 2011 08:05:20 +0100
Message-Id: <20110128070520.31A2BD42A86@gemini.denx.de>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Fri, 28 Jan 2011 07:05:22 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Darren Hart,

In message <4D41F2D6.4040406@linux.intel.com> you wrote:
>
> >> Is there a way to stop dbus-launch from concurring with a login shell
> >> on the serial console port?
> >
> > This patch appears to be working fine for me:
> >
> >> From: Wolfgang Denk<wd@denx.de>
> >> Subject: Stop dbus-launch from interfering with a serial console
> >
> > Signed-off-by: Wolfgang Denk<wd@denx.de>
> > ---
> >
> > diff --git a/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession b/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
> > index a87447a..0b73127 100644
> > --- a/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
> > +++ b/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
> > @@ -2,7 +2,7 @@
> >
> >   if [ -x /usr/bin/dbus-launch ]; then
> >       # As this is the X session script, always start a new DBus session.
> > -    eval `dbus-launch --sh-syntax --exit-with-session`
> > +    eval `dbus-launch --sh-syntax --exit-with-session</dev/null`
> >       echo "D-BUS per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
> >   fi
> >
> 
> you can also append "console=tty" to the kernel command line and the 
> serial console should work. I've run into this on a couple platforms as 
> well and addressed it this way. This isn't just an X11 issue as I 
> usually boot -minimal images.

I think you misunderstand.  It is not that the serial console port is
not working at all, or that there are any wrong assignments to the
Linux console device.

The problem is that after logging in both the shell and the
dbus-launch processes will read from the same device, and it is pur
chance which of these provesses will read which input character.

The problem is that dbus-launch should not read from the console
terminal at all, and this is what above patch enforces.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"Engineering without management is art."               - Jeff Johnson

