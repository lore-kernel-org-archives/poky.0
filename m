Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0375E4C80039
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 10:06:07 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 609C2186DEE9;
	Thu,  9 Dec 2010 17:06:05 +0100 (CET)
X-Auth-Info: 9D4S6xgeB8ifKTJ0Yl8dZHYjwwmN9dqWXXNA0yhf2UA=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 504101C001A8;
	Thu,  9 Dec 2010 17:06:05 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 2C5773335217;
	Thu,  9 Dec 2010 17:06:05 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 0A664D1CAD4;
	Thu,  9 Dec 2010 17:06:05 +0100 (CET)
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
Date: Thu, 09 Dec 2010 17:06:05 +0100
Message-Id: <20101209160605.0A664D1CAD4@gemini.denx.de>
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
X-List-Received-Date: Thu, 09 Dec 2010 16:06:07 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Joshua,

In message <1291897825.6078.11.camel@scimitar> you wrote:
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

I sent one of the configs (kilauea = PPC405EX) as part of these
patches, please see
http://thread.gmane.org/gmane.linux.embedded.poky/942/focus=946

The other one (tqm5200 = MPC5200) is an attachment to
http://bugzilla.pokylinux.org/show_bug.cgi?id=574 - please see
http://bugzilla.pokylinux.org/attachment.cgi?id=78

> Do you have more success if you use one of the machines we already have
> in the Poky tree? qemuppc and mpc8315e-rdb for PPC or qemuarm and
> beagleboard for Arm?

I didn't try qemuppc yet; I successfully built mpc8315e-rdb for
laverne on Fedora 13 (but failed on F 14). Did not try current master
yet.

> FWIW I have successfully built and run a minimal image on the
> mpc8315e-rdb and the beagleboard using the Laverne tree.

Well, minimal image may not include the problematic packages - it's
"poky-image-sdk" which is failing.

> We already do, the autobuilder currently tests qemuarm and qemuppc and I
> believe we will be adding beagleboard and mpc8315e-rdb.

I see.  Well, I guess I should try qemuppc then - basicly this is the
same configuration (ppc603e) as used with tqm5200; I'd be surprised to
see different results.  Build is running...


Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Given a choice between two theories, take the one which is funnier.

