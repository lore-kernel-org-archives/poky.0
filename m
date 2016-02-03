Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34D6BE00C44; Wed,  3 Feb 2016 10:58:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28392E00C3C
	for <poky@yoctoproject.org>; Wed,  3 Feb 2016 10:58:03 -0800 (PST)
Received: by mail-pa0-f47.google.com with SMTP id ho8so17807931pac.2
	for <poky@yoctoproject.org>; Wed, 03 Feb 2016 10:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=WVaHq61KOVYPYFRNpS2LnTVRp2ZuKboDfG300uqVikg=;
	b=pf50om5d8CwDB3XFRTIhQstgCTJLY/kzHRcnf6lCNbHU5IlbXO2FcuheuQ9hBVBZtc
	PLJAQE1wt4YtWRabcwoEGJ/hyUqT4+9QGEI2Z+bF3d7j9MYjEczmFeO4Ee0c1j6NtNuK
	0QeyWzHjApVxyY6HD5JGn6w617C5YeTSGDRJz/5T15XHze3XUUz8vIQiVAQeatCGcYwa
	BzCYcMVajV6ZtNmN5hDp6SCvGLrDPZ0NUqk44oEPxxyD36wbW3eFp2U7YT2gcLBmOc/U
	Gz+8PWz6cUKZI/KX8geWSrscwQkEXjomrIXt/phcY2CT4gcHrZjwl7epYfuzVVYmkf86
	JqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=WVaHq61KOVYPYFRNpS2LnTVRp2ZuKboDfG300uqVikg=;
	b=DFb1o9rWO/JbAtvaHOTxNTgKBNCa+FVoXXSU3Kpd/s2zuQwrpNWXzUVXYnAekABGpc
	NnArXNZhGh0/hqBEN88Xm38fg2LoTuisTL/fFmYB3KjejA+AMQae0lrHCG8UqZbKQpK1
	YEYOjwQydg7ZKUw1kMQWGywwNCljHMWO+x2iyI0Vsxw0+tY9BtwMAabeJRIjkusYftL9
	3zVDLl+w2w6mtRrxrga4ZfF7iX3FiuyR/4Gf0MIi+nkXliiPpQTWR7U/3iHLaFjBZnTH
	UgyxAo1Fcr4mufAaEXkXjkq+/9mSGlLPWgZZBkJaTKErodJ8m+ZnAznNrqY8v7t4PTUv
	b5Ww==
X-Gm-Message-State: AG10YOS5zTl4WyrsMfmqbYVpbDjnWdRqP11yCz39XfXDuLA8RAS5n+fyc6gIiQPgdTxnKg==
X-Received: by 10.66.164.102 with SMTP id yp6mr4604276pab.25.1454525883507;
	Wed, 03 Feb 2016 10:58:03 -0800 (PST)
Received: from ?IPv6:2601:647:4c01:b37d:95b4:fa84:8c74:446f?
	([2601:647:4c01:b37d:95b4:fa84:8c74:446f])
	by smtp.gmail.com with ESMTPSA id
	xa9sm11432523pab.44.2016.02.03.10.58.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 03 Feb 2016 10:58:02 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <56B23402.8080502@linux.intel.com>
Date: Wed, 3 Feb 2016 10:58:02 -0800
Message-Id: <86E97C86-4A71-4145-A22E-A61ECBA2EB7D@gmail.com>
References: <1454410252-32098-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
	<C5111F39-1682-4D0F-931A-A21018305709@gmail.com>
	<56B23402.8080502@linux.intel.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: Apple Mail (2.3112)
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/4][jethro] yocto-bsp related patches backported from master
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Feb 2016 18:58:06 -0000
X-Groupsio-MsgNum: 10284
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B760783C-9596-4FF2-B372-25382D97068D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B760783C-9596-4FF2-B372-25382D97068D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Feb 3, 2016, at 9:08 AM, Leonardo Sandoval =
<leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>=20
>=20
>=20
> On 02/03/2016 12:12 AM, Khem Raj wrote:
>>> On Feb 2, 2016, at 2:50 AM, =
leonardo.sandoval.gonzalez@linux.intel.com wrote:
>>>=20
>>> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>>>=20
>>> Set of patches that mainly fixes the do_patch issues found when =
creating
>>> BSP layers with the yocto-bsp tool. More detail on each patch =
description.
>>>=20
>> AUTOREV is going to set a bad example IMO, it will be better to =
translate auto rev
>> into a static SHA value may be driven out of AUTOREV enquiry at the =
time of BSP layer
>> creation.
> On this series, I simple backported some yocto-bsp related patches =
into Jethro so I believe the patch remains valid.
>=20

OK fair enough.

> In the other hand, you mean getting the SHA value from AUTOREV instead =
of using the AUTOREV variable? If yes, what would be the real benefit =
from it?

AUTOREVs are good for development but eventually they are hard to use in =
a release products
so setting a template to use AUTOREV can set a wrong pretext. We should =
not do that in default
templates. If user chooses so be it.

>=20
>>> Leonardo Sandoval (4):
>>>  yocto-bsp: Default kernel version to 4.1 on x86_64
>>>  yocto-bsp: Avoid duplication of user patches
>>>    ({{=3Dmachine}}-user-patches.scc)
>>>  yocto-bsp: Set KTYPE to user selected base branch
>>>  yocto-bsp: Set SRCREV meta/machine revisions to AUTOREV
>>>=20
>>> .../arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc     | =
3 ++-
>>> .../arch/arm/recipes-kernel/linux/files/machine-standard.scc       | =
3 ++-
>>> .../target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc    | =
3 ++-
>>> .../target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend  | =
1 -
>>> .../arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend     | =
6 +++---
>>> .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend   | =
6 +++---
>>> .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend   | =
6 +++---
>>> .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | =
6 +++---
>>> .../target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend | =
7 +++----
>>> .../target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend | =
7 +++----
>>> .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend  | =
7 +++----
>>> .../arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc    | =
3 ++-
>>> .../arch/i386/recipes-kernel/linux/files/machine-standard.scc      | =
3 ++-
>>> .../target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc   | =
3 ++-
>>> .../target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend | =
1 -
>>> .../arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | =
6 +++---
>>> .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | =
6 +++---
>>> .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | =
6 +++---
>>> .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | =
6 +++---
>>> .../arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend       | =
7 +++----
>>> .../arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend       | =
7 +++----
>>> .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend | =
7 +++----
>>> .../arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc    | =
3 ++-
>>> .../arch/mips/recipes-kernel/linux/files/machine-standard.scc      | =
3 ++-
>>> .../target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc   | =
3 ++-
>>> .../target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend | =
1 -
>>> .../arch/mips/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | =
6 +++---
>>> .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | =
6 +++---
>>> .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | =
6 +++---
>>> .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | =
6 +++---
>>> .../arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend       | =
7 +++----
>>> .../arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend       | =
7 +++----
>>> .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend | =
7 +++----
>>> .../arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc  | =
3 ++-
>>> .../arch/mips64/recipes-kernel/linux/files/machine-standard.scc    | =
3 ++-
>>> .../target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc | =
3 ++-
>>> .../arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend      | =
1 -
>>> .../arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend  | =
6 +++---
>>> .../mips64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend     | =
6 +++---
>>> .../mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend     | =
6 +++---
>>> .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend | =
6 +++---
>>> .../arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend     | =
5 ++---
>>> .../arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend     | =
7 +++----
>>> .../arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend      | =
7 +++----
>>> .../arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc | =
3 ++-
>>> .../arch/powerpc/recipes-kernel/linux/files/machine-standard.scc   | =
3 ++-
>>> .../arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc       | =
3 ++-
>>> .../arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend     | =
1 -
>>> .../arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend | =
6 +++---
>>> .../powerpc/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend    | =
6 +++---
>>> .../powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend    | =
6 +++---
>>> .../powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend     | =
6 +++---
>>> .../arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend    | =
7 +++----
>>> .../arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend    | =
7 +++----
>>> .../arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend     | =
7 +++----
>>> .../arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc    | =
3 ++-
>>> .../arch/qemu/recipes-kernel/linux/files/machine-standard.scc      | =
3 ++-
>>> .../target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc   | =
3 ++-
>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend | =
1 -
>>> .../arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | =
6 +++---
>>> .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | =
6 +++---
>>> .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | =
6 +++---
>>> .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | =
6 +++---
>>> .../arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend       | =
7 +++----
>>> .../arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend       | =
7 +++----
>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend | =
7 +++----
>>> .../arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc  | =
3 ++-
>>> .../arch/x86_64/recipes-kernel/linux/files/machine-standard.scc    | =
3 ++-
>>> .../target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc | =
3 ++-
>>> .../target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall  | =
2 +-
>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend      | =
1 -
>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend  | =
6 +++---
>>> .../x86_64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend     | =
6 +++---
>>> .../x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend     | =
6 +++---
>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend | =
6 +++---
>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend     | =
7 +++----
>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend     | =
7 +++----
>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend      | =
7 +++----
>>> 78 files changed, 189 insertions(+), 196 deletions(-)
>>>=20
>>> --
>>> 2.6.2
>>>=20
>>> --
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>=20


--Apple-Mail=_B760783C-9596-4FF2-B372-25382D97068D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlayTb0ACgkQuwUzVZGdMxR2RACfbZoGSay/YW1QKmMLwKbzK0bv
NCwAnA0qm5XNI6YbzYt0TX3C9nUKdtJZ
=fCqD
-----END PGP SIGNATURE-----

--Apple-Mail=_B760783C-9596-4FF2-B372-25382D97068D--
