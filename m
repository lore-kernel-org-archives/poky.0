Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 522464C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 21:56:06 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so3532066iwn.35
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 19:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=y6ZE6Ct7gvXIDvYcjYy9+bhqYX6hia53XXSOlU3/AzI=;
	b=CyA3KaPnUClWBsfxYZQnsDqjQKJPtveceWfsMTElq3b7ymtD8++4XX0HMHjkSHUxxu
	WQAvu7E8AgcxE0hXSrOETuyyNBrVqIP/Izb3OINZU5spDGOt62483pO3fr6iZqLBdBcX
	YBOMjmsnb7B1oK3iilhK+JWi7GTNoKEszhlYY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=lSzh3k6OWDiPFrgemBTWBCq5zd6evV/ex4QzbAoxAr4CKPCBMcZaIrYtq27ohdUyXW
	WCgLgjfGdMcwb0fjtrVRwFe1V1zD6l7leUb0ghFDBdLGxnCz1Dm8WbHMmiVrhDk7+aNP
	fFsQRSAJvoE9S0xBR+316pVL29u+c1iudTHuM=
MIME-Version: 1.0
Received: by 10.231.207.84 with SMTP id fx20mr1521065ibb.62.1295063765610;
	Fri, 14 Jan 2011 19:56:05 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Fri, 14 Jan 2011 19:56:05 -0800 (PST)
In-Reply-To: <1295063026.31259.14.camel@elmorro>
References: <cover.1295044979.git.tom.zanussi@intel.com>
	<AANLkTinm8D1ctw7d-dZ96njKxPO-dY0VA=cqwPkJkAT2@mail.gmail.com>
	<1295063026.31259.14.camel@elmorro>
Date: Fri, 14 Jan 2011 22:56:05 -0500
Message-ID: <AANLkTim3ES1fWfpbkvUrQ-ynHFedKCL0T8RmkAwEsB5a@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Sat, 15 Jan 2011 03:56:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 14, 2011 at 10:43 PM, Tom Zanussi <tom.zanussi@intel.com> wrote=
:
> On Fri, 2011-01-14 at 18:46 -0800, Bruce Ashfield wrote:
>> On Fri, Jan 14, 2011 at 5:49 PM, Tom Zanussi <tom.zanussi@intel.com> wro=
te:
>> > I'm not familiar enough with the perf recipe to come up with a proper
>> > fix for the problem yet, but this patch at least removes the build
>> > error that recently started happening with the linux-yocto perf
>> > compile.
>> >
>> > I'll send a patch re-instating the code it removes once I've
>> > understood the perf recipe and root-caused the problem. =A0In any case=
,
>> > it doesn't remove any functionality that was there before - NO_LIBPERL
>> > was always the case, but the code that made that happen just started
>> > blowing up for some reason.
>>
>>
>> Thanks Tom! I was going to offer to merge this into the kernel
>> tree itself, since having external patches to the repo isn't something
>> we typically do. But in this case, the patch is temporary so I'm going
>> to just ack it, and stay out of the way.
>>
>
> Hi Bruce,
>
> The funny thing is that my first inclination and preference was to just
> submit the kernel patch, and I was about to do that anyway after having
> initial trouble getting it to apply this way... =A0Anyway, I decided at
> least this way if you weren't around to apply it to the kernel tree,
> Saul was waiting for it and it would be applied regardless - next time
> I'll just do it the easy way ;-)

Agreed.  We think alike on this one. Hedging your bets on the one
step process of Saul pulling it into master without me needing to
be in the middle was good, but given the choice, I'd chose the merge
to the kernel branches as well.

Cheers,

Bruce

>
> Tom
>
>> Cheers,
>>
>> Bruce
>>
>> >
>> > Pull URL: git://git.pokylinux.org/poky-contrib.git
>> > =A0Branch: tzanussi/perf-no-libperl-fix
>> > =A0Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dtza=
nussi/perf-no-libperl-fix
>> >
>> > Thanks,
>> > =A0 =A0Tom Zanussi <tom.zanussi@intel.com>
>> > ---
>> >
>> >
>> > Tom Zanussi (1):
>> > =A0linux-yocto: hard-code NO_LIBPERL/NO_LIBPYTHON
>> >
>> > =A0.../linux-yocto/tools-perf-no-scripting.patch =A0 =A0 =A0| =A0 49 +=
+++++++++++++++++++
>> > =A0meta/recipes-kernel/linux/linux-yocto_git.bb =A0 =A0 =A0 | =A0 =A05=
 +-
>> > =A02 files changed, 52 insertions(+), 2 deletions(-)
>> > =A0create mode 100644 meta/recipes-kernel/linux/linux-yocto/tools-perf=
-no-scripting.patch
>> >
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>> >
>>
>>
>>
>
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

