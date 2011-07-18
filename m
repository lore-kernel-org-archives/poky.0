Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id CCA604C800E5
	for <poky@yoctoproject.org>; Mon, 18 Jul 2011 08:47:26 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj22 with SMTP id 22so1729488gwj.35
	for <poky@yoctoproject.org>; Mon, 18 Jul 2011 06:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=6+L0muS6imFSFz2/W6jtB/dtCXyrWOKCp9GV7mk3F2E=;
	b=sA5d64fxKPwkLBZ7QzvOCKOrMW+cx+rydqOu4VTXTP1J1f1NYeBluYVWin4isSZlBP
	GV668YKZh6CAkaUP8R01MmjQwNSqXTBw1nXOGDKdluopAJRDKfpUajPssGSUxMRX9in4
	p63LF5kZqBwhNxwjQ/sg5OFYnfT+xtbbwvvf4=
MIME-Version: 1.0
Received: by 10.91.121.16 with SMTP id y16mr5819688agm.135.1310996846236; Mon,
	18 Jul 2011 06:47:26 -0700 (PDT)
Received: by 10.91.12.2 with HTTP; Mon, 18 Jul 2011 06:47:26 -0700 (PDT)
In-Reply-To: <cover.1310741956.git.paul.eggleton@linux.intel.com>
References: <cover.1310741956.git.paul.eggleton@linux.intel.com>
Date: Mon, 18 Jul 2011 09:47:26 -0400
Message-ID: <CADkTA4M7E2yjanqRk4ao6udy117wK0BcE1qU6EA63cZRZghPJA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] MPC8315E-RDB fixes v2
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
X-List-Received-Date: Mon, 18 Jul 2011 13:47:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 15, 2011 at 11:12 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Fix the default ethernet MAC addresses so that networking works at boot t=
ime,
> and improve our setup instructions for this machine.
>
> (Since v1, simplify things by removing the configurable MAC address
> variables, as all of these boards should have the same MAC addresses from
> the factory.)
>
> Note, Bruce may choose to merge the kernel patch into the linux-yocto
> repository itself.

Acked. I will merge this into the repository myself, which means that only
patch 2/2 needs to go into meta-yocto (whoever is picking this up). I'll
follow up shortly with a kernel pull request and reference the yocto bug
ion that pull as well.

Thanks for the quick iteration to v2 on this one!

Bruce

>
> The following changes since commit fa4bcfdb73167f8159b88e5a4d711c0d37627a=
70:
>
> =A0bb-matrix: correct BB and PM number canonicalization (2011-07-14 22:23=
:09 +0100)
>
> are available in the git repository at:
> =A0git://git.pokylinux.org/poky-contrib paule/mpc8315erdb-fixes-2
> =A0http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dpaule/mpc8315e=
rdb-fixes-2
>
> Paul Eggleton (2):
> =A0linux-yocto: fix ethernet at boot time on MPC8315E-RDB
> =A0README.hardware: update MPC8315E-RDB instructions
>
> =A0README.hardware =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0| =A0 55 +++++++++++++++-----
> =A0.../linux/linux-yocto/mpc8315e-rdb-dts.patch =A0 =A0 =A0 | =A0 27 ++++=
++++++
> =A0.../linux/linux-yocto_2.6.37.bbappend =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 =A04 ++
> =A03 files changed, 72 insertions(+), 14 deletions(-)
> =A0create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315=
e-rdb-dts.patch
>
> --
> 1.7.4.1
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

