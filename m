Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5FB4A4C80BEF
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 06:30:33 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 52DF812EC1FA
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 07:08:47 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <20101209085846.264F5D301D6@gemini.denx.de>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
	<20101208113542.9D65E140688@gemini.denx.de>
	<4D00042C.6040403@linux.intel.com>
	<20101209085846.264F5D301D6@gemini.denx.de>
Date: Thu, 09 Dec 2010 12:30:25 +0000
Message-ID: <1291897825.6078.11.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
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
X-List-Received-Date: Thu, 09 Dec 2010 12:30:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-09 at 09:58 +0100, Wolfgang Denk wrote:
> Dear Saul,
> 
> In message <4D00042C.6040403@linux.intel.com> you wrote:
> >
> > Thanks for your patches and assistance.
> > 
> > Not sure if you saw the Release Notes regarding F14 and building 
> > make-native first and installing that locally due to problems with F14's 
> > make.  See http://bugzilla.pokylinux.org/show_bug.cgi?id=467
> > and http://www.yoctoproject.org/download/yocto-project-4-0-release-notes
> 
> Yes, I saw trhis, but decided it made more sense to fix the broken
> Makefiles, especially as this was trivial to do, and in case of eglibc
> I could just apply the corresponding commit from OE.
> 
> But actually the make-3.82 issues are the smallest of my problems.
> 
> I'm trying to build Poky for some PowerPC and ARM architectures
> (PPC6xx, PPC4xx, ARM Kirkwood, etc.), and see a number of build
> issues.  I started reportung these:
> http://bugzilla.pokylinux.org/show_bug.cgi?id=572
> http://bugzilla.pokylinux.org/show_bug.cgi?id=574

I'm not at all familiar with PPC machines and not especially familiar
with Arm but I assume these are new machine definitions which you've
added? If that is the case can you share the machine configurations,
this could help us (or more knowledgeable others) to work out your
issue?

Do you have more success if you use one of the machines we already have
in the Poky tree? qemuppc and mpc8315e-rdb for PPC or qemuarm and
beagleboard for Arm?

FWIW I have successfully built and run a minimal image on the
mpc8315e-rdb and the beagleboard using the Laverne tree.
> 
> Are there any plans to include PPC and ARM targets for example int he
> autobuilder testing?

We already do, the autobuilder currently tests qemuarm and qemuppc and I
believe we will be adding beagleboard and mpc8315e-rdb.

> 
> > Yes, this should build you can see the status of master on our build 
> > machine at http://autobuilder.pokylinux.org:8010/waterfall we are 
> > working on stabilizing the build (meta-toolchain-sdk is failing currently).
> 
> What I cannot see (maybe I just don't know where to look) is if the
> autobuilder includes any PPC and ARM targets at all, and if so, which
> these are.

Yes, fair point - this is not obvious.

Cheers,
Joshua


