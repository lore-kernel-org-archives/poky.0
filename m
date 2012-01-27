Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00504E00599
	for <poky@yoctoproject.org>; Fri, 27 Jan 2012 09:33:22 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id AFF971C0C0D8;
	Fri, 27 Jan 2012 18:33:17 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 628EF1C0014F;
	Fri, 27 Jan 2012 18:33:17 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id oKnRGZgRGvwf; Fri, 27 Jan 2012 18:33:16 +0100 (CET)
X-Auth-Info: Hl09dnqBY60FhxwtyECUmpoE6KADlyLYXZbsOr1+i7c=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Fri, 27 Jan 2012 18:33:16 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 342651A58C2;
	Fri, 27 Jan 2012 18:33:16 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id A632E1581959;
	Fri, 27 Jan 2012 18:33:15 +0100 (CET)
To: Paul Gortmaker <paul.gortmaker@windriver.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1327681281-11454-2-git-send-email-paul.gortmaker@windriver.com>
References: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
	<1327681281-11454-2-git-send-email-paul.gortmaker@windriver.com>
Comments: In-reply-to Paul Gortmaker <paul.gortmaker@windriver.com>
	message dated "Fri, 27 Jan 2012 11:21:19 -0500."
Date: Fri, 27 Jan 2012 18:33:15 +0100
Message-Id: <20120127173315.A632E1581959@gemini.denx.de>
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
X-List-Received-Date: Fri, 27 Jan 2012 17:33:24 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Paul Gortmaker,

In message <1327681281-11454-2-git-send-email-paul.gortmaker@windriver.com> you wrote:
> We don't want to force everyone to be stripping the -Os
> flags from their u-boot builds.  Move it to the existing
> recipes so that current behaviour is maintained, while
> opening up the possibility for new recipes to avoid it.

Is there any reason to keep this at all?  The compiler issues that
caused builds with -Os to fail have long been fixed.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Where people stand is not as important as which way they face.
        - Terry Pratchett & Stephen Briggs, _The Discworld Companion_

