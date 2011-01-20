Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22EF24C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 17:05:40 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id A14FF188A177;
	Fri, 21 Jan 2011 00:05:38 +0100 (CET)
X-Auth-Info: MmZJTsmyvEtINeYVlDCFuhkQjCGINQwqnDAMti3Unw0=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 7AD801C00150;
	Fri, 21 Jan 2011 00:05:38 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 7575530956DA;
	Fri, 21 Jan 2011 00:05:37 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 5CF85D301D7;
	Fri, 21 Jan 2011 00:05:37 +0100 (CET)
To: Darren Hart <dvhart@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4D3884A0.8030602@linux.intel.com>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
	<1295296178-18590-5-git-send-email-aalonso@secretlab.ca>
	<4D3884A0.8030602@linux.intel.com>
Comments: In-reply-to Darren Hart <dvhart@linux.intel.com>
	message dated "Thu, 20 Jan 2011 10:53:20 -0800."
Date: Fri, 21 Jan 2011 00:05:37 +0100
Message-Id: <20110120230537.5CF85D301D7@gemini.denx.de>
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
X-List-Received-Date: Thu, 20 Jan 2011 23:05:40 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Darren Hart,

In message <4D3884A0.8030602@linux.intel.com> you wrote:
>
> I ran into this in the recent u-boot_git.bb recipe I added. Rather than 
> create a patch to the Makefile, I found it simpler to adding OPTFLAGS to 
> the EXTRA_OEMAKE variable in the recipe:
> 
> EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS=''"
> 
> This negates the -Os in the Makefile.

What exactly is the reason that -Os is not supported?


Note that -Os makes is intentional in U-Boot, and omitting it may
cause problems on a number of systems.

-O2 will create significantly larger code which does not fit into
flash sectors on some systems; on other systems, the code will not
fit any more in the size limitations given by the NAND loader.

In other works, -O2 breaks a number of systems.

I discourage doing this.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
For every complex problem, there is a solution that is simple,  neat,
and wrong.                                               - Mark Twain

