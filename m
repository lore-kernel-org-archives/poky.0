Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 08EE54C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 08:45:23 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 5CFAB1824461;
	Thu,  3 Feb 2011 15:45:18 +0100 (CET)
X-Auth-Info: FvQDTyKKqDJnvpEObQtjSuQRRhLYKrih+dkygtrWZpQ=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 8B3951C00167;
	Thu,  3 Feb 2011 15:45:18 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 6BF6C323DF56;
	Thu,  3 Feb 2011 15:45:18 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 51D71D81AE2;
	Thu,  3 Feb 2011 15:45:18 +0100 (CET)
To: Mark Hatle <mark.hatle@windriver.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4D4ABA30.4020505@windriver.com>
References: <20110203141543.0C504D81AE2@gemini.denx.de>
	<4D4ABA30.4020505@windriver.com>
Comments: In-reply-to Mark Hatle <mark.hatle@windriver.com>
	message dated "Thu, 03 Feb 2011 08:22:40 -0600."
Date: Thu, 03 Feb 2011 15:45:18 +0100
Message-Id: <20110203144518.51D71D81AE2@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: Build of prelink_git.bb fails
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
X-List-Received-Date: Thu, 03 Feb 2011 14:45:23 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Mark,

In message <4D4ABA30.4020505@windriver.com> you wrote:
> Something is wrong with your host system.  Nothing has changed with the prelink
> integration since late December.

Hm... I was able to complete a build of top of tree two days ago, on
the same system.

This is Fedora 14 on a x86_64 box.

> The failure seems to indicate a broken latex, tetex and/or tex2pdf installation.

Do you happen to know which package is supposed to provide
"fancyheadings.sty" ?  I cannot find this file on any of my Fedora
boxen...

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Inside every old person is a young person wondering what happened.
                              - Terry Pratchett, _Moving Pictures_

