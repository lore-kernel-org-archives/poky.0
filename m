Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id C2DBE4C81065
	for <poky@yoctoproject.org>; Sat, 22 Jan 2011 08:48:34 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 1CCF41C0F593;
	Sat, 22 Jan 2011 15:48:31 +0100 (CET)
X-Auth-Info: orI8yCpY57ypjV5tDbs2qXGRvDAdrQnk7S5VxwCronA=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id AFC471C002DB;
	Sat, 22 Jan 2011 15:48:31 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 8924D3066F70;
	Sat, 22 Jan 2011 15:48:31 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 609C3B335;
	Sat, 22 Jan 2011 15:48:31 +0100 (CET)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1295565854.14388.27977.camel@rex>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
	<1295296178-18590-5-git-send-email-aalonso@secretlab.ca>
	<4D3884A0.8030602@linux.intel.com>
	<20110120230537.5CF85D301D7@gemini.denx.de>
	<1295565854.14388.27977.camel@rex>
Comments: In-reply-to Richard Purdie <richard.purdie@linuxfoundation.org>
	message dated "Thu, 20 Jan 2011 23:24:14 +0000."
Date: Sat, 22 Jan 2011 15:48:31 +0100
Message-Id: <20110122144831.609C3B335@gemini.denx.de>
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
X-List-Received-Date: Sat, 22 Jan 2011 14:48:35 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Richard,

In message <1295565854.14388.27977.camel@rex> you wrote:
>
> > What exactly is the reason that -Os is not supported?
> 
> Its not so much not supported, its that gcc 4.5 seems to have totally
> broken it and for better or worse, we're on that gcc version. Until we
> have a toolchain where the option works what do we do?

Usually I try to approach problems at the root cause - the best
solution was if we had patches for GCC to make it work.  It appears
that "-Os" is only one way to trigger issues in recent GCC version;
plain "-O" or "-O1" trigger other problems, see for example
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=45052



> Well, its a case of "totally broken" or a risk of size issues on some
> systems so I'm in favour of the latter. I agree the toolchain issues
> need to be resolved and I'm sure they will sooner or later. I have
> noticed upstream gcc don't seem to like the -Os option though and it
> often seems to be the source of problems...

Probably this is (at least partially) due to the fact that only such
lunatic fringe groups as the embedded folks tend to use exotic
features like -Os, and our word is of little interest to the GCC
PTBs.  Did anybody from the Yocto project / Poky / the LF / Intel or
any other bigger player try to put his weight in?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
It is impractical for  the  standard  to  attempt  to  constrain  the
behavior  of code that does not obey the constraints of the standard.
                                                          - Doug Gwyn

