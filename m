Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5882E006DF
	for <poky@pokylinux.org>; Sun, 18 Dec 2011 00:41:35 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 787DF188A190;
	Sun, 18 Dec 2011 09:41:32 +0100 (CET)
X-Auth-Info: 2uqTqZSoCI2jrx4JFj4HLNJ8l9mQPqTHKh/CWxJXqjA=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 50DEB1C00100;
	Sun, 18 Dec 2011 09:41:32 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 2F55C1A2765;
	Sun, 18 Dec 2011 09:41:32 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 16A6F138EEA1;
	Sun, 18 Dec 2011 09:41:32 +0100 (CET)
To: "Xu, Jiajun" <jiajun.xu@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B22A@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B22A@shsmsx501.ccr.corp.intel.com>
Comments: In-reply-to "Xu, Jiajun" <jiajun.xu@intel.com>
	message dated "Sun, 18 Dec 2011 16:06:37 +0800."
Date: Sun, 18 Dec 2011 09:41:32 +0100
Message-Id: <20111218084132.16A6F138EEA1@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [yocto] Weekly Test Report for Yocto 1.2 M1 RC2 Build
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
X-List-Received-Date: Sun, 18 Dec 2011 08:41:37 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Jiajun Hu,

In message <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B22A@shsmsx501.ccr.corp.intel.com> you wrote:
>
>
> This is the weekly test report for Yocto 1.2 M1 RC2 build. There
> are 2 new bugs found for this build. HuronRiver board is broken, so

Thi is not complete.  I reported another bug (build failure)
yesterday.

> Issue summary
> --------------------------------------
...
> 
> Bug Number
...
> Bug 310 - [eMenlow] i2c_transfer error on e-Menlow
> Bug 1779 - gsettings-data-convert segfault on sdk image
> Bug 1823 - [Bealgeboard C4] keyboard could not work with 20111207 build
> Bug 1825: Application 'Dates' can not be launched with 20111207 build
> New! Bug 1840 - glxgears fail to run on Blacksand
> Bug 1826: [HuronRiver] only 3/4 screen is used when psplash loading
> New! Bug 1842 - [Hob2] there should be a warning when meta-intel layer not added for BSP build

Please add:

Bug 1841 - 1.2_M1 build broken for meta-toolchain-sdk


Thanks!

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Don't have a battle of wits with an unarmed opponent.

