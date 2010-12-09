Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 086E14C80A74
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 12:40:54 -0600 (CST)
Received: from [192.168.1.181] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id EC1AC12EC1C5;
	Thu,  9 Dec 2010 13:19:09 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20101209172927.580BED3DE62@gemini.denx.de>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
	<20101208113542.9D65E140688@gemini.denx.de>
	<4D00042C.6040403@linux.intel.com>
	<20101209085846.264F5D301D6@gemini.denx.de>
	<1291897825.6078.11.camel@scimitar>
	<20101209172927.580BED3DE62@gemini.denx.de>
Date: Thu, 09 Dec 2010 18:40:46 +0000
Message-ID: <1291920046.6078.36.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
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
X-List-Received-Date: Thu, 09 Dec 2010 18:40:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-09 at 18:29 +0100, Wolfgang Denk wrote:
> Dear Joshua,
> 
> In message <1291897825.6078.11.camel@scimitar> you wrote:
> >
> > > Makefiles, especially as this was trivial to do, and in case of eglibc
> > > I could just apply the corresponding commit from OE.
> > > 
> > > But actually the make-3.82 issues are the smallest of my problems.
> > > 
> > > I'm trying to build Poky for some PowerPC and ARM architectures
> > > (PPC6xx, PPC4xx, ARM Kirkwood, etc.), and see a number of build
> > > issues.  I started reportung these:
> > > http://bugzilla.pokylinux.org/show_bug.cgi?id=572
> > > http://bugzilla.pokylinux.org/show_bug.cgi?id=574
> > 
> > I'm not at all familiar with PPC machines and not especially familiar
> > with Arm but I assume these are new machine definitions which you've
> > added? If that is the case can you share the machine configurations,
> > this could help us (or more knowledgeable others) to work out your
> > issue?
> > 
> > Do you have more success if you use one of the machines we already have
> > in the Poky tree? qemuppc and mpc8315e-rdb for PPC or qemuarm and
> > beagleboard for Arm?
> > 
> > FWIW I have successfully built and run a minimal image on the
> > mpc8315e-rdb and the beagleboard using the Laverne tree.
> > > 
> > > Are there any plans to include PPC and ARM targets for example int he
> > > autobuilder testing?
> > 
> > We already do, the autobuilder currently tests qemuarm and qemuppc and I
> > believe we will be adding beagleboard and mpc8315e-rdb.
> 
> Trying to build "poky-image-sdk" for qemuppc on Fedora 14 / i686
> fails with the
> 
> ./ld: cannot load ld backend library 'libld_elf_i386.so':
> libld_elf_i386.so: cannot open shared object file: No such file or
> directory
> 
> error described in part 2 of
> http://bugzilla.pokylinux.org/show_bug.cgi?id=572

OK - we can definitely build poky-image-sdk for qemuppc, see the
autobuilder log here[1].

Can you tell me if this was a clean build? We unfortunately have a known
fragility in our toolchain[2] and it's possible that a previous partial
build is causing issue here.

Secondly, out of curiosity, do you have SELINUX enabled on your Fedora
machines? We're still ironing out some issues with regards to that.

Thanks for persisting with this, hopefully we can help you get going
soon!

Regards,
Joshua

1.
http://autobuilder.pokylinux.org:8010/builders/poky-incremental/builds/24/steps/shell_29
2. http://bugzilla.pokylinux.org/show_bug.cgi?id=239
-- 
Joshua Lock
        Intel Open Source Technology Centre


