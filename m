Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAE914C81240
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 02:58:47 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 205551844244;
	Thu,  9 Dec 2010 09:58:46 +0100 (CET)
X-Auth-Info: 1/FlsUP4w90oZkZztKl1uwaD7F6tUIDfYJK71MoRXDk=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 731741C001C6;
	Thu,  9 Dec 2010 09:58:46 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 3BE7F3335217;
	Thu,  9 Dec 2010 09:58:46 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 264F5D301D6;
	Thu,  9 Dec 2010 09:58:46 +0100 (CET)
To: Saul Wold <sgw@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4D00042C.6040403@linux.intel.com>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
	<20101208113542.9D65E140688@gemini.denx.de>
	<4D00042C.6040403@linux.intel.com>
Comments: In-reply-to Saul Wold <sgw@linux.intel.com>
	message dated "Wed, 08 Dec 2010 14:18:20 -0800."
Date: Thu, 09 Dec 2010 09:58:46 +0100
Message-Id: <20101209085846.264F5D301D6@gemini.denx.de>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Thu, 09 Dec 2010 08:58:48 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Saul,

In message <4D00042C.6040403@linux.intel.com> you wrote:
>
> Thanks for your patches and assistance.
> 
> Not sure if you saw the Release Notes regarding F14 and building 
> make-native first and installing that locally due to problems with F14's 
> make.  See http://bugzilla.pokylinux.org/show_bug.cgi?id=467
> and http://www.yoctoproject.org/download/yocto-project-4-0-release-notes

Yes, I saw trhis, but decided it made more sense to fix the broken
Makefiles, especially as this was trivial to do, and in case of eglibc
I could just apply the corresponding commit from OE.

But actually the make-3.82 issues are the smallest of my problems.

I'm trying to build Poky for some PowerPC and ARM architectures
(PPC6xx, PPC4xx, ARM Kirkwood, etc.), and see a number of build
issues.  I started reportung these:
http://bugzilla.pokylinux.org/show_bug.cgi?id=572
http://bugzilla.pokylinux.org/show_bug.cgi?id=574

Are there any plans to include PPC and ARM targets for example int he
autobuilder testing?

> Yes, this should build you can see the status of master on our build 
> machine at http://autobuilder.pokylinux.org:8010/waterfall we are 
> working on stabilizing the build (meta-toolchain-sdk is failing currently).

What I cannot see (maybe I just don't know where to look) is if the
autobuilder includes any PPC and ARM targets at all, and if so, which
these are.

> > Yes, it is unrelated. It's one of the targets I use for testing.
> >
> You should investigate creating a BSP Layer such as meta-kilauea that 
> you can put your changes into.

Sorry for asking stupid questions - I'm still pretty new to Poky and
haven't really understood some of the concepts: what would be the
benefit (for me, or for the project) of such a layer?  Why not adding
just another machine configuration?

> Thanks again, if you find more problems please let us now and we will 
> pull the changes.

Thanks!

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
A weak mind is like a microscope, which magnifies trifling things,
but cannot receive great ones.      -- Philip Earl of Chesterfield

