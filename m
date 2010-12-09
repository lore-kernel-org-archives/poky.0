Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id C13CB4C80FA4
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 16:02:01 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 74A871C0F594;
	Thu,  9 Dec 2010 23:02:00 +0100 (CET)
X-Auth-Info: gQKyPz5uEFWFHY1qdIuquFnVHT5rhh7Wf1UnOEcJ/tI=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 3BB111C00118;
	Thu,  9 Dec 2010 23:02:00 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 6C8D93335217;
	Thu,  9 Dec 2010 23:01:59 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 0CA1AD522FF;
	Thu,  9 Dec 2010 23:01:59 +0100 (CET)
To: Joshua Lock <josh@openedhand.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1291920397.6078.39.camel@scimitar>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
	<20101208113542.9D65E140688@gemini.denx.de>
	<4D00042C.6040403@linux.intel.com>
	<20101209085846.264F5D301D6@gemini.denx.de>
	<1291897825.6078.11.camel@scimitar>
	<20101209160605.0A664D1CAD4@gemini.denx.de>
	<1291920397.6078.39.camel@scimitar>
Comments: In-reply-to Joshua Lock <josh@openedhand.com>
	message dated "Thu, 09 Dec 2010 18:46:37 +0000."
Date: Thu, 09 Dec 2010 23:01:59 +0100
Message-Id: <20101209220159.0CA1AD522FF@gemini.denx.de>
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
X-List-Received-Date: Thu, 09 Dec 2010 22:02:02 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Joshua,

In message <1291920397.6078.39.camel@scimitar> you wrote:
>
> OK, I have filed an issue in our Bugzilla - we need to pull together a
> Laverne point release for F14.
> http://bugzilla.pokylinux.org/show_bug.cgi?id=578

Current top of tree fails also to build "poky-image-sdk" on Ubuntu
10.04:

ERROR: Task failed: Fetch failed: Unable to fetch URL git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=qemu_ppc32-standard;name=machine from any source.
NOTE: package linux-yocto-2.6.34+git0+d1cd5c80ee97e81e130be8c3de3965b770f320d6_0+9ac0daee43dd19d8bea828cf79450c9748ae0daa-r13: task do_fetch: Failed
ERROR: Task 572 (/net/gemini/home/wd/git/poky/6xx/meta/recipes-kernel/linux/linux-yocto_git.bb, do_fetch) failed with 1


Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
No journaling file system can recover your data if the disk dies.
                                 - Steve Rago in <D4Cw1p.L9E@plc.com>

