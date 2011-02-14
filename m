Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 676A64C808E5
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 09:52:46 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so5288632iwn.35
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 07:52:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=DTjJBzaspAS3ZO4uxseyIrReEVq4IE3bK0Cy9obSZkI=;
	b=JyyygC1qni4/WztA1QvqLTBagrcUne7/Rej1Dfag69MQAMmLEHHJAetgWHelvKo5+/
	c9b1/Jb0ejy/3CzGdXxxyxtT9Wy3crBgMDrgie4dHuHnnhYwA+GyVbDQEbAJphOzyazf
	CKQtikrenQ+XHYMltgBOTAbCzzhib8Suc01+w=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=ArkxjWTgBcg+kIOYidfgpiQ/+7XLElCJccWEiT49p5+7GjWBixX5DJbSKcoq0B1RCQ
	2phetIoEt5OjtZUm6b30VVNIFCLwQvPi4RArki1TJfThZOapD1FthvD98kXv5J5Br9Pg
	DmSblGdhlXK/HWXS3Y/EeuPBskj2qsMpkuJtk=
MIME-Version: 1.0
Received: by 10.42.174.7 with SMTP id t7mr5098116icz.340.1297698755723; Mon,
	14 Feb 2011 07:52:35 -0800 (PST)
Received: by 10.231.160.79 with HTTP; Mon, 14 Feb 2011 07:52:35 -0800 (PST)
In-Reply-To: <b9dded$huicuq@orsmga002.jf.intel.com>
References: <b9dded$huicuq@orsmga002.jf.intel.com>
Date: Mon, 14 Feb 2011 10:52:35 -0500
Message-ID: <AANLkTinhzQP26WQ6RC7zyeo3fQDRth0BJ5VctBP1De6Z@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1][KERNEL][2.6.37] Add jasperforest BSP machine branch
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
X-List-Received-Date: Mon, 14 Feb 2011 15:52:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 14, 2011 at 10:46 AM, Tom Zanussi <tom.zanussi@intel.com> wrote=
:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> 'Jasper Forest' refers to the Intel Xeon C5500/C3500 processors, which
> combined with the Intel 3420 PCH chipset (Ibex Peak) make up the
> 'Picket Post' CRB this BSP was developed on.
>
> This adds the machine branch for the jasperforest BSP.

Aha. This answers my question in my last email (ignore that
question), this is fine.

>
> While developing it, I ran into problems with the board hanging during
> boot, which was caused by the lttng commit reverted by this patchset.
> Thanks to Bruce Ashfield for pointing out the possibly faulty commit.

Good (that we found it), bad that it caused you some pain.

>
> The bad commit also caused the same hang in the sugarbay BSP if I
> advanced the SRCREV past the lttng commits, so it should also be
> reverted from the sugarbay branch. =A0I can submit a patch for that too,
> or it can just be cherry-picked into the sugarbay branch if that's
> easier (it doesn't affect qemux86-64, which is why I didn't just
> revert it in common-pc-64 or standard).

I'll revert it everywhere from your confirmation that it was the
problem. I staged a full revert here, and was waiting to hear if
it helped you or not .. which I now know it does, consider it
gone.

Will merge and push this out today.

Cheers,

Bruce

>
> Please pull.
>
> Thanks,
>
> Tom
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
> =A0Branch: tzanussi/yocto/standard/common-pc-64/jasperforest
> =A0Browse:
> http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=3Dtza=
nussi/yocto/standard/common-pc-64/jasperforest
>
> Tom Zanussi (1):
> =A0Revert "nmi-safe-kernel/x86_64-page-fault-nmi-safe"
>
> =A0arch/x86/mm/fault.c | =A0 =A04 +---
> =A01 files changed, 1 insertions(+), 3 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

