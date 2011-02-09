Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A1D74C80053
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 12:27:47 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 4C3111C01DBA;
	Wed,  9 Feb 2011 19:27:45 +0100 (CET)
X-Auth-Info: YvC5gaA/U/3VwlDS9vUj3gzaM5WaUb41xLxd/bd1ews=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id D473D1C0016C;
	Wed,  9 Feb 2011 19:27:44 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 2E8DC3436637;
	Wed,  9 Feb 2011 19:27:44 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 1B32014B9A38;
	Wed,  9 Feb 2011 19:27:44 +0100 (CET)
To: Koen Kooi <koen@dominion.thruhere.net>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <B4A7B800-CC7B-439C-9F36-7410D3B6D117@dominion.thruhere.net>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-3-git-send-email-yanok@emcraft.com>
	<4D52D210.6070905@linux.intel.com>
	<B4A7B800-CC7B-439C-9F36-7410D3B6D117@dominion.thruhere.net>
Comments: In-reply-to Koen Kooi <koen@dominion.thruhere.net>
	message dated "Wed, 09 Feb 2011 19:15:27 +0100."
Date: Wed, 09 Feb 2011 19:27:44 +0100
Message-Id: <20110209182744.1B32014B9A38@gemini.denx.de>
Cc: Ilya Yanok <yanok@emcraft.com>, poky@pokylinux.org
Subject: Re: [PATCH 3/3] u-boot: compile with -O2 on PowerPC
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
X-List-Received-Date: Wed, 09 Feb 2011 18:27:47 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Koen Kooi,

In message <B4A7B800-CC7B-439C-9F36-7410D3B6D117@dominion.thruhere.net> you wrote:
> 
> 4.5.3 + linaro patches has similar -Os problems on armv7a at least, fwiw

For reference: we have a list of known compiler issues here:
http://www.denx.de/wiki/U-Boot/GccBugsAndIssues

For some bugs exist patches, but so far these have not been mainlined
yet (nor do I see all of them in the Yocto or Linaro tool chains).

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
It seems intuitively obvious to me, which  means  that  it  might  be
wrong.                                                 -- Chris Torek

