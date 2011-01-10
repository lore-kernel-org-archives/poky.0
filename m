Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BF184C8085F
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 11:46:14 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so21254928iyb.35
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 09:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=buoDHT+YJMDTvDvTrJ2W/N0tG/CeEkmGOtUfB3E88qI=;
	b=Pk2AO+htAlaZh9bnqzaTU307Xt6p99352FfmXqUIWfbT2F9b2FRDnH1WtLkfGKmSjb
	IAO9fp5SQsLZiRic8jwaQs3PsArL1GzQccExbupuyoj0ukswSvKJQGMcoxmaQ8SIG1Qr
	hMqdv/1LO6sVCEUFeTsjEGsFighCMGiymL/pU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=hQuHruMATYLRjxfZwlkEoHjhywQUlWXNC5ek8tyPgJTXUxzUSeIdr7ocfx4aH9C+zT
	bMkWdrFcANLv9qx6zvZZq8qWt3+mtt2alSrXhlg3PwezH1uEkRKr4JJar4HVUmg1Crdu
	jfrJiX7SieqiQooaFuYQGZd+63gEGKoIYkEcg=
MIME-Version: 1.0
Received: by 10.231.13.137 with SMTP id c9mr28934124iba.37.1294681573647; Mon,
	10 Jan 2011 09:46:13 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Mon, 10 Jan 2011 09:46:13 -0800 (PST)
In-Reply-To: <AANLkTinkHL_a9nG4NiSQpoHGOprxrWoYKqUSeynwuxmv@mail.gmail.com>
References: <cover.1293749684.git.dvhart@linux.intel.com>
	<AANLkTinkHL_a9nG4NiSQpoHGOprxrWoYKqUSeynwuxmv@mail.gmail.com>
Date: Mon, 10 Jan 2011 12:46:13 -0500
Message-ID: <AANLkTikk1QyXWjRxwuO5JHRcsETz7=VwfxmfHn=29CxE@mail.gmail.com>
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
X-List-Received-Date: Mon, 10 Jan 2011 17:46:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 4, 2011 at 4:03 PM, Bruce Ashfield <bruce.ashfield@gmail.com> w=
rote:
> On Thu, Dec 30, 2010 at 5:54 PM, Darren Hart <dvhart@linux.intel.com> wro=
te:
>> In addition to the patch against the wrs_meta branch to follow, this tre=
e
>> also needs the atom-pc-preempt_rt to be created:
>>
>> $ git checkout -b atom-pc-preempt_rt common_pc-preempt_rt
>
> I'm going to sit on this one for another day (or so), there are 20 or
> 30 commits missing from the preempt_rt branch that I'm merging
> shortly. After that, we can create the branches and merge this along
> with the stability changes.

Just an update on this. It hasn't been forgotten at all, we are looking at
rebasing the 2.6.34-rt branch to restore individual commits for better
tracking, or at least, rebase it and add the 20 or 30 commits I mentioned.
The decision point for what we'll do hasn't happened yet, so I'm sitting
on this for just a little bit longer.

Bruce

>
> But the changes look good. No concerns from me.
>
> Cheers,
>
> Bruce
>
>>
>> Thanks,
>> =A0 =A0Darren Hart <dvhart@linux.intel.com>
>> ---
>>
>>
>> Darren Hart (1):
>> =A0linux-2.6-windriver: atom-pc-preempt_rt meta-data
>>
>> =A0.../bsp/atom-pc/atom-pc-preempt_rt.scc =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A07 +++++++
>> =A01 files changed, 7 insertions(+), 0 deletions(-)
>> =A0create mode 100644 wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_r=
t.scc
>> =A0create mode 100644 wrs/patches/atom_pc-preempt_rt/series
>> =A0create mode 100644 wrs/patches/atom_pc-preempt_rt/status
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

