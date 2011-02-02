Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id B9BE44C800A4
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 08:05:34 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id A3CEA1824442;
	Wed,  2 Feb 2011 15:05:32 +0100 (CET)
X-Auth-Info: ultE621dnAOykBwnAl2eTXcRc19d+NKbome8TMFGYpo=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 6ABD81C00136;
	Wed,  2 Feb 2011 15:05:32 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 4FF183220181;
	Wed,  2 Feb 2011 15:05:32 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 30558EA65FA;
	Wed,  2 Feb 2011 15:05:32 +0100 (CET)
To: Mark Hatle <mark.hatle@windriver.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4D4962A5.8060406@windriver.com>
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
	<20110202113340.2FFCAEA65FA@gemini.denx.de>
	<4D4962A5.8060406@windriver.com>
Comments: In-reply-to Mark Hatle <mark.hatle@windriver.com>
	message dated "Wed, 02 Feb 2011 07:56:53 -0600."
Date: Wed, 02 Feb 2011 15:05:32 +0100
Message-Id: <20110202140532.30558EA65FA@gemini.denx.de>
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
X-List-Received-Date: Wed, 02 Feb 2011 14:05:35 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Mark Hatle,

In message <4D4962A5.8060406@windriver.com> you wrote:
>
> > I see - that was not clear to me from the comment ("Default to not
> > build 32 bit libs on 64 bit systems, comment this out if that is
> > desired").
> > 
> > When is this option needed, then?  If it was not needed (and is
> > broken), should it eventually be removed?
> 
> PSEUDO is similar to fakeroot, it is a LD_PRELOADed library that intercepts
> certain calls, and emulates a root user capable environment.
> 
> As such, it MUST be able to intercept both 32-bit and 64-bit function calls,
> when both are available on a host.
> 
> So if you have both 32-bit and 64-bit binaries installed on your host, you need
> to disable the NO32LIBS, otherwise you could end up with an incomplete faked
> root environment.

I see.  Thanks for the explanation.

well, I do have some 32 bit binaries installed but I doubt any of
these will be used during a normal build.

But that means that NO32LIBS is needed sometimes, and the bug I ran
into should be fixed.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
To be sure of hitting the target, shoot first and, whatever you  hit,
call it the target.

