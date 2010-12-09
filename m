Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BA234C80039
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 13:58:47 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id EE8A3188B584;
	Thu,  9 Dec 2010 20:58:45 +0100 (CET)
X-Auth-Info: PMmjEccgp/CAog0DNwg+RKh7UXnwPFwY8nb5o+Or2Rc=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 0D7C31C001A4;
	Thu,  9 Dec 2010 20:58:46 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id E3FDC3335217;
	Thu,  9 Dec 2010 20:58:45 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id CC7BDD3DE62;
	Thu,  9 Dec 2010 20:58:45 +0100 (CET)
To: Joshua Lock <josh@openedhand.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1291920046.6078.36.camel@scimitar>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
	<20101208113542.9D65E140688@gemini.denx.de>
	<4D00042C.6040403@linux.intel.com>
	<20101209085846.264F5D301D6@gemini.denx.de>
	<1291897825.6078.11.camel@scimitar>
	<20101209172927.580BED3DE62@gemini.denx.de>
	<1291920046.6078.36.camel@scimitar>
Comments: In-reply-to Joshua Lock <josh@openedhand.com>
	message dated "Thu, 09 Dec 2010 18:40:46 +0000."
Date: Thu, 09 Dec 2010 20:58:45 +0100
Message-Id: <20101209195845.CC7BDD3DE62@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] Fedora 14 Patches
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
X-List-Received-Date: Thu, 09 Dec 2010 19:58:48 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Joshua Lock,

In message <1291920046.6078.36.camel@scimitar> you wrote:
>
> OK - we can definitely build poky-image-sdk for qemuppc, see the
> autobuilder log here[1].

I wonder what might be different, then.

Hm.. here is my changes to the conf/local.conf file:
to blame for it:

-> diff ~/git/poky/mainline/meta/conf/local.conf.sample conf/local.conf
6c6
< #DL_DIR ?= "${TOPDIR}/downloads"
---
> DL_DIR ?= "/home/wd/git/poky/downloads"
14c14
< # BB_NUMBER_THREADS = "4"
---
> BB_NUMBER_THREADS = "4"
16c16
< # PARALLEL_MAKE = "-j 4"
---
> PARALLEL_MAKE = "-j 4"
19c19
< MACHINE ?= "qemux86"
---
> MACHINE ?= "qemuppc"
142c142
< #SDKMACHINE ?= "i586"
---
> SDKMACHINE ?= "i586"


> Can you tell me if this was a clean build? We unfortunately have a known
> fragility in our toolchain[2] and it's possible that a previous partial
> build is causing issue here.

Yes, this was a completely clean build.

> Secondly, out of curiosity, do you have SELINUX enabled on your Fedora
> machines? We're still ironing out some issues with regards to that.

My /etc/selinux/config has "SELINUX=disabled".

> Thanks for persisting with this, hopefully we can help you get going
> soon!

[My build under Ubuntu is still running; this is a VM and thus a bit slower.]

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Like winter snow on summer lawn, time past is time gone.

