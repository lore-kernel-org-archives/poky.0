Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F80E0070C
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 11:22:06 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3VHLCv6kW8z3hj9P;
	Tue, 27 Mar 2012 20:22:03 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 3VHLCw0g5Qz4KK4C;
	Tue, 27 Mar 2012 20:22:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id Fp+FKosC9Buy; Tue, 27 Mar 2012 20:22:02 +0200 (CEST)
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Tue, 27 Mar 2012 20:22:02 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id CC8CA1A28F7;
	Tue, 27 Mar 2012 20:22:01 +0200 (CEST)
Received: from gemini.denx.de (localhost [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 96C5E2002FF;
	Tue, 27 Mar 2012 20:22:01 +0200 (CEST)
To: Tom Zanussi <tom.zanussi@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1332870781.20140.12.camel@elmorro>
References: <4F71D17B.2030200@mlbassoc.com> <1332859973.3854.15.camel@elmorro>
	<20120327174316.CB8CB2002FF@gemini.denx.de>
	<1332870781.20140.12.camel@elmorro>
Comments: In-reply-to Tom Zanussi <tom.zanussi@intel.com>
	message dated "Tue, 27 Mar 2012 12:53:01 -0500."
Date: Tue, 27 Mar 2012 20:22:01 +0200
Message-Id: <20120327182201.96C5E2002FF@gemini.denx.de>
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
X-List-Received-Date: Tue, 27 Mar 2012 18:22:07 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Tom Zanussi,

In message <1332870781.20140.12.camel@elmorro> you wrote:
>
> > Arghhh... This is totally broken. Do not do this.
> 
> Why do you say so - they're legal filenames and useful for this purpose?

Not anything that is legal (in the sense that it stretches the
technical possibilities to the limit) actually makes sense.

Yes, Unix allows nearly arbitrary file names.  Yes, it is technically
possible to store the source code of a program or a script in a file
name.  The fact that nobody does this should make you think if this is
a clever approach that nobody else could figure out, or if it is just
plain ......

Please consider the mental welfare of the people who have to maintain
that code after you, who have to type file names like "{{ if
kernel_choice == "linux-yocto-rt_3.2": }} linux-yocto-rt_3.2.bbappend".

Even standard commands like "ls" produce output that make my toe nails
roll up:

$ ls scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/
files
{{ if kernel_choice == "linux-yocto_3.0": }} linux-yocto_3.0.bbappend
{{ if kernel_choice == "linux-yocto_3.2": }} linux-yocto_3.2.bbappend
{{ if kernel_choice == "linux-yocto-rt_3.0": }} linux-yocto-rt_3.0.bbappend
{{ if kernel_choice == "linux-yocto-rt_3.2": }} linux-yocto-rt_3.2.bbappend
kernel-list.noinstall
$

PLEASE do not to this!

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
History is only a confused heap of facts.
                                       -- Philip Earl of Chesterfield

