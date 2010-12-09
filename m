Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B07B4C80A74
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 11:29:29 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 236C71C08DEE;
	Thu,  9 Dec 2010 18:29:27 +0100 (CET)
X-Auth-Info: 6tDLM8ikX5C3FXU9L3GXI8j+lj1m9i1trhpzYNfZk9Y=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id AE9281C001A3;
	Thu,  9 Dec 2010 18:29:27 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 8C1C23335217;
	Thu,  9 Dec 2010 18:29:27 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 580BED3DE62;
	Thu,  9 Dec 2010 18:29:27 +0100 (CET)
To: Joshua Lock <josh@openedhand.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1291897825.6078.11.camel@scimitar>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
	<20101208113542.9D65E140688@gemini.denx.de>
	<4D00042C.6040403@linux.intel.com>
	<20101209085846.264F5D301D6@gemini.denx.de>
	<1291897825.6078.11.camel@scimitar>
Comments: In-reply-to Joshua Lock <josh@openedhand.com>
	message dated "Thu, 09 Dec 2010 12:30:25 +0000."
Date: Thu, 09 Dec 2010 18:29:27 +0100
Message-Id: <20101209172927.580BED3DE62@gemini.denx.de>
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
X-List-Received-Date: Thu, 09 Dec 2010 17:29:30 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Joshua,

In message <1291897825.6078.11.camel@scimitar> you wrote:
>
> > Makefiles, especially as this was trivial to do, and in case of eglibc
> > I could just apply the corresponding commit from OE.
> > 
> > But actually the make-3.82 issues are the smallest of my problems.
> > 
> > I'm trying to build Poky for some PowerPC and ARM architectures
> > (PPC6xx, PPC4xx, ARM Kirkwood, etc.), and see a number of build
> > issues.  I started reportung these:
> > http://bugzilla.pokylinux.org/show_bug.cgi?id=572
> > http://bugzilla.pokylinux.org/show_bug.cgi?id=574
> 
> I'm not at all familiar with PPC machines and not especially familiar
> with Arm but I assume these are new machine definitions which you've
> added? If that is the case can you share the machine configurations,
> this could help us (or more knowledgeable others) to work out your
> issue?
> 
> Do you have more success if you use one of the machines we already have
> in the Poky tree? qemuppc and mpc8315e-rdb for PPC or qemuarm and
> beagleboard for Arm?
> 
> FWIW I have successfully built and run a minimal image on the
> mpc8315e-rdb and the beagleboard using the Laverne tree.
> > 
> > Are there any plans to include PPC and ARM targets for example int he
> > autobuilder testing?
> 
> We already do, the autobuilder currently tests qemuarm and qemuppc and I
> believe we will be adding beagleboard and mpc8315e-rdb.

Trying to build "poky-image-sdk" for qemuppc on Fedora 14 / i686
fails with the

./ld: cannot load ld backend library 'libld_elf_i386.so':
libld_elf_i386.so: cannot open shared object file: No such file or
directory

error described in part 2 of
http://bugzilla.pokylinux.org/show_bug.cgi?id=572


Will try now in Ubuntu 10.04...

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
No user-servicable parts inside. Refer to qualified service personnel.

