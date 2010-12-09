Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A68E4C80A74
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 12:46:45 -0600 (CST)
Received: from [192.168.1.181] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 2CC4E12EC1C5;
	Thu,  9 Dec 2010 13:25:00 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20101209160605.0A664D1CAD4@gemini.denx.de>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
	<20101208113542.9D65E140688@gemini.denx.de>
	<4D00042C.6040403@linux.intel.com>
	<20101209085846.264F5D301D6@gemini.denx.de>
	<1291897825.6078.11.camel@scimitar>
	<20101209160605.0A664D1CAD4@gemini.denx.de>
Date: Thu, 09 Dec 2010 18:46:37 +0000
Message-ID: <1291920397.6078.39.camel@scimitar>
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
X-List-Received-Date: Thu, 09 Dec 2010 18:46:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-09 at 17:06 +0100, Wolfgang Denk wrote:
> Dear Joshua,
> 
> In message <1291897825.6078.11.camel@scimitar> you wrote:
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
> 
> I sent one of the configs (kilauea = PPC405EX) as part of these
> patches, please see
> http://thread.gmane.org/gmane.linux.embedded.poky/942/focus=946
> 
> The other one (tqm5200 = MPC5200) is an attachment to
> http://bugzilla.pokylinux.org/show_bug.cgi?id=574 - please see
> http://bugzilla.pokylinux.org/attachment.cgi?id=78
> 
> > Do you have more success if you use one of the machines we already have
> > in the Poky tree? qemuppc and mpc8315e-rdb for PPC or qemuarm and
> > beagleboard for Arm?
> 
> I didn't try qemuppc yet; I successfully built mpc8315e-rdb for
> laverne on Fedora 13 (but failed on F 14). Did not try current master
> yet.

OK, I have filed an issue in our Bugzilla - we need to pull together a
Laverne point release for F14.
http://bugzilla.pokylinux.org/show_bug.cgi?id=578

Thanks,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


