Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EC97E0030F
	for <poky@yoctoproject.org>; Fri, 27 Jan 2012 13:32:35 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id D86831800155;
	Fri, 27 Jan 2012 22:32:31 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 353DF1C0005D;
	Fri, 27 Jan 2012 22:32:31 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id oJBhdjaT1IS0; Fri, 27 Jan 2012 22:32:30 +0100 (CET)
X-Auth-Info: LAtqJNt5lHPBC/dzZqa52UQiQ8LuJq54rghPVPCiU1I=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Fri, 27 Jan 2012 22:32:30 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 24D861A58C3;
	Fri, 27 Jan 2012 22:32:30 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id EE243159515C;
	Fri, 27 Jan 2012 22:32:29 +0100 (CET)
To: Paul Gortmaker <paul.gortmaker@windriver.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4F22E15B.4070105@windriver.com>
References: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
	<1327681281-11454-2-git-send-email-paul.gortmaker@windriver.com>
	<20120127173315.A632E1581959@gemini.denx.de>
	<4F22E15B.4070105@windriver.com>
Comments: In-reply-to Paul Gortmaker <paul.gortmaker@windriver.com>
	message dated "Fri, 27 Jan 2012 12:39:39 -0500."
Date: Fri, 27 Jan 2012 22:32:29 +0100
Message-Id: <20120127213229.EE243159515C@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] u-boot: Don't make the -Os removal part of global settings.
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
X-List-Received-Date: Fri, 27 Jan 2012 21:32:38 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Paul,

In message <4F22E15B.4070105@windriver.com> you wrote:
>
> I would agree with you, but as I said in the commit log,
> I don't want to be changing other people's settings that
> I can't personally test.  If the owners of those platforms
> figure that is an acceptable risk, then I'll gladly send
> another patch to remove the -Os toggle entirely.

The compiler options used by U-Boot are pretty carefully tuned.
Messing with them is actually the greater risk - using -O2 instead of
-Os results in considerably larger code, which breaks for example the
mapping to flash sectors on a number of boards.

I recommend removing this.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Too many people are ready to carry the stool when the piano needs  to
be moved.

