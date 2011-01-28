Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 83AA24C812AD
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 10:51:03 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id E5D88188B5AF;
	Fri, 28 Jan 2011 17:51:00 +0100 (CET)
X-Auth-Info: V3MJRQQzFG49iFg0/v7kVYcfWyQwgqgEFhse5LfBOYE=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id AB20B1C00131;
	Fri, 28 Jan 2011 17:51:00 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 8F2B232105AD;
	Fri, 28 Jan 2011 17:51:00 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 656AAD42A99;
	Fri, 28 Jan 2011 17:51:00 +0100 (CET)
To: Darren Hart <dvhart@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4D42F269.1080005@linux.intel.com>
References: <20110127111132.C69A3B335@gemini.denx.de>
	<20110127114216.744AEB335@gemini.denx.de>
	<4D41F2D6.4040406@linux.intel.com>
	<20110128070520.31A2BD42A86@gemini.denx.de>
	<4D42F269.1080005@linux.intel.com>
Comments: In-reply-to Darren Hart <dvhart@linux.intel.com>
	message dated "Fri, 28 Jan 2011 08:44:25 -0800."
Date: Fri, 28 Jan 2011 17:51:00 +0100
Message-Id: <20110128165100.656AAD42A99@gemini.denx.de>
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
X-List-Received-Date: Fri, 28 Jan 2011 16:51:04 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Darren Hart,

In message <4D42F269.1080005@linux.intel.com> you wrote:
>
> The serial console would show all the output of the boot process and 
> then present a getty. It would accept my login and my password, but as 
> soon as I was logged in, things went weird. Only every Nth character I 
> typed made it to the console, where N was somewhere between 2 and 30.

Indeed. And the reason for this behaviour is that you have two
processes reading from the console, so it depends on the scheduling
which of hem receives which characters.

> I believe this had something to do with the automatic consoles the 
> kernel will setup based on the console= parameters. By default, the last 

No, it does not.  You can test it by shutting down X11 (try:
"/etc/init.d/xserver-nodm stop"); this will also terminate the
dbus-launch process, and your login shell immediately works fine.

Or try out the patch I posted.

> What I haven't been able to explain yet is why just omitting the getty 
> from the tty doesn't result in console on the serial port due to the 
> kernel's automatic console thing. So clearly there are some gaps in my 
> explanation here, but please try this approach and let me know what your 
> results are. Based on that, we can dig a bit more and figure out how to 
> best setup the console= directives on the default images.

THere is no problem with the console= settings.  It's two processes
reading from a single input stream. This can never work.  Try it ut if
you don't believe me.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Ernest asks Frank how long he has been working for the company.
        "Ever since they threatened to fire me."

