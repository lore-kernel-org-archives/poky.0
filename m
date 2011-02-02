Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 181B64C8008C
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 05:33:42 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id BCA23188A194;
	Wed,  2 Feb 2011 12:33:40 +0100 (CET)
X-Auth-Info: akCiLxR0AkTCpUpWobWRB+PbbSY+6e0HPwrRsNoCInI=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 8A0C41C0008D;
	Wed,  2 Feb 2011 12:33:40 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 6648132105AD;
	Wed,  2 Feb 2011 12:33:40 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 2FFCAEA65FA;
	Wed,  2 Feb 2011 12:33:40 +0100 (CET)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1296645484.1544.2556.camel@rex>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
	<1296382406.13501.7899.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504E6294E1D3@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32A4B@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32C7C@shsmsx502.ccr.corp.intel.com>
	<1296492009.13501.13668.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA9506C267B0@orsmsx504.amr.corp.intel.com>
	<1296561316.13501.18767.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA950D73A848@orsmsx504.amr.corp.intel.com>
	<1296567139.13501.19158.camel@rex>
	<20110201192705.2546DB187@gemini.denx.de>
	<1296602979.13501.21658.camel@rex>
	<20110202070331.CA6FBEA65FA@gemini.denx.de>
	<1296645484.1544.2556.camel@rex>
Comments: In-reply-to Richard Purdie <richard.purdie@linuxfoundation.org>
	message dated "Wed, 02 Feb 2011 11:18:04 +0000."
Date: Wed, 02 Feb 2011 12:33:39 +0100
Message-Id: <20110202113340.2FFCAEA65FA@gemini.denx.de>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: poky-image-sato-sdk failed at do_rootfs
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
X-List-Received-Date: Wed, 02 Feb 2011 11:33:43 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Richard Purdie,

In message <1296645484.1544.2556.camel@rex> you wrote:
>
> > > Did you leave NO32LIBS set in local.conf as per the default?
> > 
> > Good point - sorry, I had forgotten about that.  I always comment out
> > NO32LIBS because when building the SDK I also need this for 32 bit
> > machines.
> 
> This option really just controls psuedo-native, it has no effect on the

I see - that was not clear to me from the comment ("Default to not
build 32 bit libs on 64 bit systems, comment this out if that is
desired").

When is this option needed, then?  If it was not needed (and is
broken), should it eventually be removed?

> SDK which is controlled by SDKMACHINE?

I have this set to i586...


Thanks.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Fascinating is a word I use for the unexpected.
	-- Spock, "The Squire of Gothos", stardate 2124.5

