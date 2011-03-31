Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id C119C4C8088C
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 09:23:31 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so3524126iym.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 07:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=IA4o5XhQgJz8I86NwEAutyYBHfOt7fVo3E1v2fwafE4=;
	b=kFmN1WO4mtEqxabpexngPZ5RmYAqDe9/GkCE/jmquB1xYoGnCtLnkEqtkpUHyh0Dfx
	cPseePFiB8HpW+AtWwIYSH1DFPB+GkmKLEAXXa05uyqqa9fRRNsxkQDH0m+KMR+lNYtB
	h6WND3tNEmu4s4NN8PsCvascxzn77Ih8CtrRo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=uFasEq2hOYkejwjVm7RC4hT8krR9PE2Waofth+ozEaYLGXio17A54EEGZVVKOsIFa6
	nnpKa+d0C8k6634TVVXCB3N/ZSkM79yfPZvsOz2ABkmH00B82rMHb/eFhI5NNxHvv2dh
	GVeeHttloZ8J6EtjCsZuDsy9ZAOgsnQtSbvAw=
MIME-Version: 1.0
Received: by 10.42.224.9 with SMTP id im9mr2942143icb.455.1301581411285; Thu,
	31 Mar 2011 07:23:31 -0700 (PDT)
Received: by 10.231.155.138 with HTTP; Thu, 31 Mar 2011 07:23:31 -0700 (PDT)
In-Reply-To: <20110331141920.3B1C5F03208@gemini.denx.de>
References: <cover.1301578942.git.paul.eggleton@linux.intel.com>
	<41ae31ba057b63d3c518e2edf217109c59b64603.1301578942.git.paul.eggleton@linux.intel.com>
	<20110331141920.3B1C5F03208@gemini.denx.de>
Date: Thu, 31 Mar 2011 10:23:31 -0400
Message-ID: <AANLkTikSYNW=0rdzvaNnq9LO8agu0Vz67b_Fi-pNJmyx@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Wolfgang Denk <wd@denx.de>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 1/1] README.hardware: remove u-boot flashing instructions for mpc8315e-rdb
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
X-List-Received-Date: Thu, 31 Mar 2011 14:23:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 31, 2011 at 10:19 AM, Wolfgang Denk <wd@denx.de> wrote:
> Dear Paul Eggleton,
>
> In message <41ae31ba057b63d3c518e2edf217109c59b64603.1301578942.git.paul.=
eggleton@linux.intel.com> you wrote:
>> From: Paul Eggleton <paul.eggleton@linux.intel.com>
>>
>> Upgrading u-boot is apparently not necessary with current board revision=
s,
>> and these instructions may not work properly anyway (our toolchain seems=
 not
>> to be able to compile u-boot in the way described), and given that they =
are
>> potentially risky they should be removed.
>
> The instructions you delete appear to be pretty generic ones, and I
> see no reason why they would not work.

Agreed!

>
> If the Poky too chain has issues with this, then there is a problem
> with that tool chain, and you should enter a bug report.
>
> What exactly would that problem be?

There were a couple of build errors using u-boot master and
some specific branch tags, errors that we didn't see when using
some older toolchains. But the reports are not confirmed/formalized
yet. When we know more, the plan is to definitely address them and
hopefully do better than a bug report .. produce a patch.

>
> In any case, just papering over the problems seems not a good
> startegy to me.

Not really papering over, hopefully just temporarily removing an
implicit instruction to rebuild and reflash when the version on the
board already is sufficient to boot.

When the issues are worked out, we'll re-enable the instructions.

Cheers,

Bruce

>
> Best regards,
>
> Wolfgang Denk
>
> --
> DENX Software Engineering GmbH, =A0 =A0 MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
> It's a small world, but I wouldn't want to paint it.
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

