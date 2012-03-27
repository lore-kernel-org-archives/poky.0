Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFD65E0070C
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 10:43:20 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3VHKMB1p17z4Kn8f;
	Tue, 27 Mar 2012 19:43:18 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 3VHKMB0Gcdz4KK39;
	Tue, 27 Mar 2012 19:43:18 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id uy7F3mZnOA08; Tue, 27 Mar 2012 19:43:17 +0200 (CEST)
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Tue, 27 Mar 2012 19:43:17 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id E50491A28F7;
	Tue, 27 Mar 2012 19:43:16 +0200 (CEST)
Received: from gemini.denx.de (localhost [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id CB8CB2002FF;
	Tue, 27 Mar 2012 19:43:16 +0200 (CEST)
To: Tom Zanussi <tom.zanussi@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1332859973.3854.15.camel@elmorro>
References: <4F71D17B.2030200@mlbassoc.com> <1332859973.3854.15.camel@elmorro>
Comments: In-reply-to Tom Zanussi <tom.zanussi@intel.com>
	message dated "Tue, 27 Mar 2012 09:52:53 -0500."
Date: Tue, 27 Mar 2012 19:43:16 +0200
Message-Id: <20120327174316.CB8CB2002FF@gemini.denx.de>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Strange file names
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
X-List-Received-Date: Tue, 27 Mar 2012 17:43:21 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Tom Zanussi,

In message <1332859973.3854.15.camel@elmorro> you wrote:
>
> The template files can contain inline Python between {{ tags }} that
> gets used as logic when generating the BSP.  The inline Python can also
> be used in the filne names themselves for that purpose.  In this case,
> it's used to only include one of the .bbappend files depending on the
> value of the kernel_choice variable.

Arghhh... This is totally broken. Do not do this.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Successful and fortunate crime is called virtue.             - Seneca

