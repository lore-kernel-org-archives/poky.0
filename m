Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7375A4C8006D
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 03:09:11 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id BFD2F1C1DA0D;
	Tue, 25 Jan 2011 10:09:09 +0100 (CET)
X-Auth-Info: wwIr08ojkLD1Aj7eknqwIpMS1r3Vy2OjdGn8e1lmPU0=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 5FA751C00097;
	Tue, 25 Jan 2011 10:09:09 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 4716E32105AD;
	Tue, 25 Jan 2011 10:09:04 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 21681BB0B9;
	Tue, 25 Jan 2011 10:09:04 +0100 (CET)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1295741513.14388.37111.camel@rex>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
	<1295296178-18590-5-git-send-email-aalonso@secretlab.ca>
	<4D3884A0.8030602@linux.intel.com>
	<20110120230537.5CF85D301D7@gemini.denx.de>
	<1295565854.14388.27977.camel@rex>
	<20110122144831.609C3B335@gemini.denx.de>
	<1295741513.14388.37111.camel@rex>
Comments: In-reply-to Richard Purdie <richard.purdie@linuxfoundation.org>
	message dated "Sun, 23 Jan 2011 00:11:53 +0000."
Date: Tue, 25 Jan 2011 10:09:04 +0100
Message-Id: <20110125090904.21681BB0B9@gemini.denx.de>
Cc: Adrian Alonso <aalonso@secretlab.ca>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 05/25] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Tue, 25 Jan 2011 09:09:11 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Richard,

In message <1295741513.14388.37111.camel@rex> you wrote:
>
> > > Its not so much not supported, its that gcc 4.5 seems to have totally
> > > broken it and for better or worse, we're on that gcc version. Until we
> > > have a toolchain where the option works what do we do?
...
> Right, I'm aware that recent versions of gcc have issues sadly :(. I'm
> unaware of any resource available to Yocto with the right combination
> of time/experience to fix that problem at source at this time though :(.

Do you happen do have a list of GCC bugs that bite us here?  At the
moment I am aware of # 44392 and # 45052, but it seems there are fixes
available for these two.

Are there any others that need fixing?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Only two things are infinite,  the universe and human stupidity,  and
I'm not sure about the former.                     -- Albert Einstein

