Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA0104C80039
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 15:03:45 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so16993229iwn.35
	for <poky@yoctoproject.org>; Tue, 04 Jan 2011 13:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=WH26b6LzCwtlqDBaYoV2M2uo40//VNlQ/xSekhduKEE=;
	b=kl/idphaWKXrj0EYwO47CPXCBNKW5x7PCOHzLnSNMQ5xZ0RnLZw52nmjfWCl9SIdBq
	tXlL2Fzi4QEe31j4dWVAoZodXFZFKQHaTT4PW4DuhZevL+/g4qxzXftNJb1Yojm4NS6i
	tsyHF23Cx1xnSaRanNFDF2/Ana8JDcvyxdN5U=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=xVLmWnD7fkrPdMPsCURDHaBIzc7iOyaByRwKcIFMavYobT4mb+kaJ3oaNhPhyGAU/2
	nYvvepp1MXucUZ0kthujYWKGLkv4uI0IwIgEna+xp0+qBwcWnbFtvILt1fQJaCbrulW/
	PgxCQAHL8gv6jQ5bKnPt8nO23HVjo+teasKxg=
MIME-Version: 1.0
Received: by 10.231.35.131 with SMTP id p3mr21967515ibd.87.1294175025174; Tue,
	04 Jan 2011 13:03:45 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Tue, 4 Jan 2011 13:03:45 -0800 (PST)
In-Reply-To: <cover.1293749684.git.dvhart@linux.intel.com>
References: <cover.1293749684.git.dvhart@linux.intel.com>
Date: Tue, 4 Jan 2011 16:03:45 -0500
Message-ID: <AANLkTinkHL_a9nG4NiSQpoHGOprxrWoYKqUSeynwuxmv@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-2.6-windriver: add atom-pc preempt_rt support
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
X-List-Received-Date: Tue, 04 Jan 2011 21:03:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 30, 2010 at 5:54 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> In addition to the patch against the wrs_meta branch to follow, this tree
> also needs the atom-pc-preempt_rt to be created:
>
> $ git checkout -b atom-pc-preempt_rt common_pc-preempt_rt

I'm going to sit on this one for another day (or so), there are 20 or
30 commits missing from the preempt_rt branch that I'm merging
shortly. After that, we can create the branches and merge this along
with the stability changes.

But the changes look good. No concerns from me.

Cheers,

Bruce

>
> Thanks,
> =A0 =A0Darren Hart <dvhart@linux.intel.com>
> ---
>
>
> Darren Hart (1):
> =A0linux-2.6-windriver: atom-pc-preempt_rt meta-data
>
> =A0.../bsp/atom-pc/atom-pc-preempt_rt.scc =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A07 +++++++
> =A01 files changed, 7 insertions(+), 0 deletions(-)
> =A0create mode 100644 wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt=
.scc
> =A0create mode 100644 wrs/patches/atom_pc-preempt_rt/series
> =A0create mode 100644 wrs/patches/atom_pc-preempt_rt/status
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

