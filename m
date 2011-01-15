Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id F05D84C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 20:46:37 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so3544727iyb.35
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 18:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=N05UpfHCXqRxWzIFgYQm1JudKWkV4zb8oaJJg2aDFdw=;
	b=MeK7tCQevSYlE29dy2+xp4eikLUX8AW+OQnFxEgGIDowcQGkLn29h2tGNCJR7eJgrP
	MWkz1lte71vxse+tZhjWH0L2hJJeEKMiL3g2s3+044Bo7hC050k8cS2uTIsJ9XnRCOt7
	x9ZnFcGLj6bq/1fXzH1Y0qGne9pMCVLd6Yrwk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=NaIOaIbtcFEuNTfWGXWOqqV8nmL3CfUbzIKcZ7l0IFfxhGaG0zXxZQaiaAz3NwUOSP
	+4Yy2xrevGhxgswsmxOXN2Sic32HWGQHKil1WtAbB9E9PT1FkKQ2qL5cjjVDPkeBhZy0
	vE9eqcnotsF+e4ZoQKPHyN6TMu+sZMlMnOzdM=
MIME-Version: 1.0
Received: by 10.231.199.10 with SMTP id eq10mr1456912ibb.112.1295059596454;
	Fri, 14 Jan 2011 18:46:36 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Fri, 14 Jan 2011 18:46:36 -0800 (PST)
In-Reply-To: <cover.1295044979.git.tom.zanussi@intel.com>
References: <cover.1295044979.git.tom.zanussi@intel.com>
Date: Fri, 14 Jan 2011 21:46:36 -0500
Message-ID: <AANLkTinm8D1ctw7d-dZ96njKxPO-dY0VA=cqwPkJkAT2@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-yocto: temporary NO_LIBPERL fix for perf
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
X-List-Received-Date: Sat, 15 Jan 2011 02:46:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 14, 2011 at 5:49 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> I'm not familiar enough with the perf recipe to come up with a proper
> fix for the problem yet, but this patch at least removes the build
> error that recently started happening with the linux-yocto perf
> compile.
>
> I'll send a patch re-instating the code it removes once I've
> understood the perf recipe and root-caused the problem. =A0In any case,
> it doesn't remove any functionality that was there before - NO_LIBPERL
> was always the case, but the code that made that happen just started
> blowing up for some reason.


Thanks Tom! I was going to offer to merge this into the kernel
tree itself, since having external patches to the repo isn't something
we typically do. But in this case, the patch is temporary so I'm going
to just ack it, and stay out of the way.

Cheers,

Bruce

>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
> =A0Branch: tzanussi/perf-no-libperl-fix
> =A0Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dtzanus=
si/perf-no-libperl-fix
>
> Thanks,
> =A0 =A0Tom Zanussi <tom.zanussi@intel.com>
> ---
>
>
> Tom Zanussi (1):
> =A0linux-yocto: hard-code NO_LIBPERL/NO_LIBPYTHON
>
> =A0.../linux-yocto/tools-perf-no-scripting.patch =A0 =A0 =A0| =A0 49 ++++=
++++++++++++++++
> =A0meta/recipes-kernel/linux/linux-yocto_git.bb =A0 =A0 =A0 | =A0 =A05 +-
> =A02 files changed, 52 insertions(+), 2 deletions(-)
> =A0create mode 100644 meta/recipes-kernel/linux/linux-yocto/tools-perf-no=
-scripting.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

