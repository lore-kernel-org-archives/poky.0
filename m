Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3E3AD4C8120D
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 05:35:47 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id ACC5018059CB;
	Wed,  8 Dec 2010 12:35:45 +0100 (CET)
X-Auth-Info: R3ssNzbEZllowUuR3f81r5+lZ1xxTctHM/WuHa14PDk=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id C5FB51C0014B;
	Wed,  8 Dec 2010 12:35:45 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id B78783335217;
	Wed,  8 Dec 2010 12:35:42 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 9D65E140688;
	Wed,  8 Dec 2010 12:35:42 +0100 (CET)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <201012081124.45901.paul.eggleton@linux.intel.com>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
Comments: In-reply-to Paul Eggleton <paul.eggleton@linux.intel.com>
	message dated "Wed, 08 Dec 2010 11:24:45 +0000."
Date: Wed, 08 Dec 2010 12:35:42 +0100
Message-Id: <20101208113542.9D65E140688@gemini.denx.de>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>, poky@yoctoproject.org
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
X-List-Received-Date: Wed, 08 Dec 2010 11:35:48 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Paul Eggleton,

In message <201012081124.45901.paul.eggleton@linux.intel.com> you wrote:
> 
> FYI I'm building on a Fedora 14 x86_64 system here, as is Joshua Lock.

Ah, that's good to know.

> On Tuesday 07 December 2010 21:13:58 Wolfgang Denk wrote:
> > From: Vasily Khoruzhick <anarsoul@gmail.com>
> > 
> > The following is a series of patches trying to get Poky (both laverne
> > 4.0 and top of tree) to build under a Fedora 14 x86_64 system.
> 
> What are you building exactly? (distro/image/etc.)

I've been testing mainly with laverne-4.0, and I'm tryting to build
poky-image-sdk for some PowerPC and ARM configs.

> > [1/5] eglibc: fix build issue with make-3.82
> >  meta/recipes-core/eglibc/eglibc_2.12.bb            |    3 ++-
> >  .../eglibc/files/eglibc-make-382.patch             |   15 +++++++++++++++
> >  2 files changed, 17 insertions(+), 1 deletions(-)
> 
> A similar fix has already been applied to master.

I see. Must have missed that.

> > [2/5] gstreamer: fix build issue with make-3.82
> >  .../gstreamer-0.10.29/gstreamer-make-382.patch     |  178 ++++++++++++++++++++
> >  .../gstreamer/gstreamer_0.10.30.bb                 |    5 +-
> >  2 files changed, 181 insertions(+), 2 deletions(-)
> 
> This patch is needed; however it doesn't seem to work because (a) the inner patch file is in the wrong directory (gstreamer-0.10.29 instead of gstreamer-0.10.30), and (b) when this is moved into the correct location on my system it fails do_patch. I hav
> en't yet looked into why.

Argh.  I missed that, too, when rebasing my patcehs (which were done
against laverne-4.0) against current master. Sorry.

Is master supposed to build poky-image-sdk for PowerPC?

> > [3/5] Add support for 40x configuration (kilauea from OE)
> >  meta/conf/machine/include/tune-ppc405.inc          |    6 ++++++
> >  meta/conf/machine/kilauea.conf                     |   22 ++++++++++++++++++++++
> >  2 files changed, 28 insertions(+), 0 deletions(-)
> 
> I'm guessing that this one is unrelated to getting things working on F14?

Yes, it is unrelated. It's one of the targets I use for testing.

> > [4/5] elfutils-0.148: fix build problem with "ar"
> >  .../elfutils/elfutils-0.148/ar-options.patch       |   11 +++++++++++
> >  meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 ++-
> >  2 files changed, 13 insertions(+), 1 deletions(-)
> > 
> > [5/5] elfutils-0.148: fix problems with `ld' not recognizing options
> >  .../elfutils/elfutils-0.148/ld-compatibility.patch |   56 ++++++++++++++++++++
> >  meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 +-
> >  2 files changed, 58 insertions(+), 1 deletions(-)
> 
> Not sure about these two; for me with master this builds successfully. Could you retry with master and see if it works for you?

Yes, will do.  I testes master about two weeks ago, when it didn't
build, but I will retest this now.


Thanks.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
No man knows what true happiness is until he gets married.  By  then,
of course, its too late.

