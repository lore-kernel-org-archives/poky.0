Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9238E00C2B; Tue,  2 Feb 2016 22:12:05 -0800 (PST)
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
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 919B0E00C29
	for <poky@yoctoproject.org>; Tue,  2 Feb 2016 22:12:04 -0800 (PST)
Received: by mail-pa0-f46.google.com with SMTP id uo6so7993313pac.1
	for <poky@yoctoproject.org>; Tue, 02 Feb 2016 22:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=CKRwfaSBYcv/5D7PvejTabVniM/N7bX0GMsNX2whXjE=;
	b=zot+f1DHl4/xRI6dyTh0dtt3OS+Vqf8KxSuQenjTl9i7mZqSjhEfctA5euiUOSye4P
	G7+285HfsR8sKU4WtkzTx2iLf7vyXZEiVxB3XfEDFYfVhRAnFrn4V8vwOP4P6aivNG6q
	uh+Pt4/hHzRtogHCOy6Y2bAEsp68YWV8QFrql4mhuOqw3+EpZTgnUqX+lMSvj/Rex1cE
	1Gs6zuN7ys1sjzI0najS7HsbFotEIJvJkjQ7Dj+qu7O6tLGO0srQi8XFHfTNft88td4F
	mbw+YKV5s3cuqOQLRfIKNDV8Sr5WBeenYntvdotR09tzU77fuQzTHMYzzSwKSYD8j99s
	cbng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=CKRwfaSBYcv/5D7PvejTabVniM/N7bX0GMsNX2whXjE=;
	b=R1dTRxJk9IYThSsk8PcrnVjX2IYFO2/IxiPme6zXjm+Qxx1lEtORUBTJUE4SKOIqN4
	XD4cT23LLGaL46y6s0AWc4j5Uk0dzgfcQEsYGOjzrGYw2Ez4EyID8pIJ9+hQ9TlbElIh
	+wbkZX2rPzpokGEVQhBkeEKuSw23j7VXU4QdsIRBglD9J1CrY4Xb4THUul9RSkSt2EaX
	kE5sAnjVm3KJXAq6kweJTwjXYssv1b4Q7hxvTaWtGtWaqh7PQrG7L5dzHY9Xt+O8Fyfi
	0bizh5KsCI2tlOG+wDqAPmh3wwun2T2OLFPHwU1SqK0pAyrvpKfcJu/+haKUDLZQ5/dc
	wAuw==
X-Gm-Message-State: AG10YOQQMFxrAT2KDK6+jS5sHOTOaN4hwdI5eF6L/07xD0/Ge3nLljB4n6Y62qgA7leamQ==
X-Received: by 10.66.144.37 with SMTP id sj5mr52886751pab.69.1454479923932;
	Tue, 02 Feb 2016 22:12:03 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:6d69:5a78:5946:6549?
	([2601:646:8802:5d5c:6d69:5a78:5946:6549])
	by smtp.gmail.com with ESMTPSA id
	x10sm6670807pas.37.2016.02.02.22.12.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 02 Feb 2016 22:12:03 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1454410252-32098-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
Date: Tue, 2 Feb 2016 22:12:02 -0800
Message-Id: <C5111F39-1682-4D0F-931A-A21018305709@gmail.com>
References: <1454410252-32098-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
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
X-List-Received-Date: Wed, 03 Feb 2016 06:12:06 -0000
X-Groupsio-MsgNum: 10281
Content-Type: multipart/signed;
	boundary="Apple-Mail=_17511BC1-584A-4CBA-91C9-C81DDA4B5F24";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_17511BC1-584A-4CBA-91C9-C81DDA4B5F24
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Feb 2, 2016, at 2:50 AM, leonardo.sandoval.gonzalez@linux.intel.com =
wrote:
>=20
> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>=20
> Set of patches that mainly fixes the do_patch issues found when =
creating
> BSP layers with the yocto-bsp tool. More detail on each patch =
description.
>=20

AUTOREV is going to set a bad example IMO, it will be better to =
translate auto rev
into a static SHA value may be driven out of AUTOREV enquiry at the time =
of BSP layer
creation.

> Leonardo Sandoval (4):
>  yocto-bsp: Default kernel version to 4.1 on x86_64
>  yocto-bsp: Avoid duplication of user patches
>    ({{=3Dmachine}}-user-patches.scc)
>  yocto-bsp: Set KTYPE to user selected base branch
>  yocto-bsp: Set SRCREV meta/machine revisions to AUTOREV
>=20
> .../arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc     | 3 =
++-
> .../arch/arm/recipes-kernel/linux/files/machine-standard.scc       | 3 =
++-
> .../target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc    | 3 =
++-
> .../target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend  | 1 =
-
> .../arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend     | 6 =
+++---
> .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend   | 6 =
+++---
> .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend   | 6 =
+++---
> .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | 6 =
+++---
> .../target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend | 7 =
+++----
> .../target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend | 7 =
+++----
> .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 7 =
+++----
> .../arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc    | 3 =
++-
> .../arch/i386/recipes-kernel/linux/files/machine-standard.scc      | 3 =
++-
> .../target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc   | 3 =
++-
> .../target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend | 1 =
-
> .../arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | 6 =
+++---
> .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | 6 =
+++---
> .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | 6 =
+++---
> .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 6 =
+++---
> .../arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend       | 7 =
+++----
> .../arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend       | 7 =
+++----
> .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend | 7 =
+++----
> .../arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc    | 3 =
++-
> .../arch/mips/recipes-kernel/linux/files/machine-standard.scc      | 3 =
++-
> .../target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc   | 3 =
++-
> .../target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend | 1 =
-
> .../arch/mips/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | 6 =
+++---
> .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | 6 =
+++---
> .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | 6 =
+++---
> .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 6 =
+++---
> .../arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend       | 7 =
+++----
> .../arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend       | 7 =
+++----
> .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend | 7 =
+++----
> .../arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc  | 3 =
++-
> .../arch/mips64/recipes-kernel/linux/files/machine-standard.scc    | 3 =
++-
> .../target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc | 3 =
++-
> .../arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend      | 1 =
-
> .../arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend  | 6 =
+++---
> .../mips64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend     | 6 =
+++---
> .../mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend     | 6 =
+++---
> .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend | 6 =
+++---
> .../arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend     | 5 =
++---
> .../arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend     | 7 =
+++----
> .../arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend      | 7 =
+++----
> .../arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc | 3 =
++-
> .../arch/powerpc/recipes-kernel/linux/files/machine-standard.scc   | 3 =
++-
> .../arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc       | 3 =
++-
> .../arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend     | 1 =
-
> .../arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend | 6 =
+++---
> .../powerpc/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend    | 6 =
+++---
> .../powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend    | 6 =
+++---
> .../powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend     | 6 =
+++---
> .../arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend    | 7 =
+++----
> .../arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend    | 7 =
+++----
> .../arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 7 =
+++----
> .../arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc    | 3 =
++-
> .../arch/qemu/recipes-kernel/linux/files/machine-standard.scc      | 3 =
++-
> .../target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc   | 3 =
++-
> .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend | 1 =
-
> .../arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | 6 =
+++---
> .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | 6 =
+++---
> .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | 6 =
+++---
> .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 6 =
+++---
> .../arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend       | 7 =
+++----
> .../arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend       | 7 =
+++----
> .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend | 7 =
+++----
> .../arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc  | 3 =
++-
> .../arch/x86_64/recipes-kernel/linux/files/machine-standard.scc    | 3 =
++-
> .../target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc | 3 =
++-
> .../target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall  | 2 =
+-
> .../arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend      | 1 =
-
> .../arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend  | 6 =
+++---
> .../x86_64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend     | 6 =
+++---
> .../x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend     | 6 =
+++---
> .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend | 6 =
+++---
> .../arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend     | 7 =
+++----
> .../arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend     | 7 =
+++----
> .../arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend      | 7 =
+++----
> 78 files changed, 189 insertions(+), 196 deletions(-)
>=20
> --
> 2.6.2
>=20
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_17511BC1-584A-4CBA-91C9-C81DDA4B5F24
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaxmjIACgkQuwUzVZGdMxRmXQCeKNGQrgEVZLzsq8eya7WIOqTB
l14AnjwKxHNRRmW95lbq44XkgWZINQS6
=7zDV
-----END PGP SIGNATURE-----

--Apple-Mail=_17511BC1-584A-4CBA-91C9-C81DDA4B5F24--
