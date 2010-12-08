Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id B39AB4C8122C
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 10:39:03 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3E7CC188A161;
	Wed,  8 Dec 2010 17:39:01 +0100 (CET)
X-Auth-Info: Vadoi2r6gMhQyZTQKwHC1p1IqHuB8APzC3vg07uzCKk=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 0B72D1C00102;
	Wed,  8 Dec 2010 17:39:02 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id DDF043335217;
	Wed,  8 Dec 2010 17:39:01 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id BD9EACF5CA6;
	Wed,  8 Dec 2010 17:39:01 +0100 (CET)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <201012081124.45901.paul.eggleton@linux.intel.com>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
Comments: In-reply-to Paul Eggleton <paul.eggleton@linux.intel.com>
	message dated "Wed, 08 Dec 2010 11:24:45 +0000."
Date: Wed, 08 Dec 2010 17:39:01 +0100
Message-Id: <20101208163901.BD9EACF5CA6@gemini.denx.de>
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
X-List-Received-Date: Wed, 08 Dec 2010 16:39:04 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Paul,

In message <201012081124.45901.paul.eggleton@linux.intel.com> you wrote:
> 
> FYI I'm building on a Fedora 14 x86_64 system here, as is Joshua Lock.
...
> > [5/5] elfutils-0.148: fix problems with `ld' not recognizing options
> >  .../elfutils/elfutils-0.148/ld-compatibility.patch |   56 ++++++++++++++++++++
> >  meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 +-
> >  2 files changed, 58 insertions(+), 1 deletions(-)
> 
> Not sure about these two; for me with master this builds successfully. Could you retry with master and see if it works for you?

Current master fails for me, too. See
http://bugzilla.pokylinux.org/show_bug.cgi?id=572

Unfortunately my patch fixes only one problem - it still fails later.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
miracle:  an  extremely  outstanding  or  unusual  event,  thing,  or
accomplishment.                                - Webster's Dictionary

