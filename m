Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D4D7E00777
	for <poky@yoctoproject.org>; Fri, 19 Aug 2011 22:10:30 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yib17 with SMTP id 17so3649826yib.35
	for <poky@yoctoproject.org>; Fri, 19 Aug 2011 22:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=P9xrMKgK05lVw+a87yEqsyzN2MHTFt6qxXvKMJT70HM=;
	b=loJ1pwzeht+rzlA/K8zVL1p6zFNLIVl5FiV1JpVA3WlyxergYmqE11/GafH/CYMY7h
	sZQii+glRrdCGS9OMR+WHMVgtwoDFWkXfOHj2q/943YM7z6c90rhths/C1vu4+nO8IZO
	nPMsTAr2fqHb+3ehebbX+x+hk8QXcxIomiS7U=
MIME-Version: 1.0
Received: by 10.101.28.7 with SMTP id f7mr117242anj.120.1313817029549; Fri, 19
	Aug 2011 22:10:29 -0700 (PDT)
Received: by 10.100.95.3 with HTTP; Fri, 19 Aug 2011 22:10:29 -0700 (PDT)
In-Reply-To: <cover.1313731370.git.bruce.ashfield@windriver.com>
References: <cover.1313731370.git.bruce.ashfield@windriver.com>
Date: Sat, 20 Aug 2011 01:10:29 -0400
Message-ID: <CADkTA4N6DVML98pZAkX=yYALr515GKcpyFkhMVD4-mU_u7YLPg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/2] meta-yocto/linux-yocto updates
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
X-List-Received-Date: Sat, 20 Aug 2011 05:10:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 19, 2011 at 1:26 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> Richard/Saul,
>
> These updates switch the mpc8315e-rdb and atom-pc to use the 3.0.3
> kernel as their default preference, and as such also update the
> SRCREVs to 3.0.3 for these boards.
>
> These are based on top of a similar set of changes destined for
> linux-yocto in oe-core.
>
> The following changes since commit 180e52d7b1b6754d91a98b09cb3d9ebe702fea=
ec:
>
> =A0linux-yocto: update SRCREVs for 3.0.3 (2011-08-19 01:02:06 -0400)
>
> are available in the git repository at:
> =A0git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
> =A0http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dzedd/kernel-yo=
cto
>
> Bruce Ashfield (2):
> =A0meta-yocto: atom-pc/mpc8315e-rdb change preferred version to 3.0

This series was re-pushed on top of my oe-core updated series, with the
only change being that the preferred version string is now "3.0%"

Bruce

> =A0linux-yocto/meta-yocto: update SRCREVs for 3.0.3
>
> =A0meta-yocto/conf/machine/atom-pc.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A01 +
> =A0meta-yocto/conf/machine/mpc8315e-rdb.conf =A0 =A0 =A0 =A0 =A0| =A0 =A0=
2 ++
> =A0.../recipes-kernel/linux/linux-yocto_3.0.bbappend =A0| =A0 14 +++++++-=
------
> =A03 files changed, 10 insertions(+), 7 deletions(-)
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

