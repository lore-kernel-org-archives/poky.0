Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D58A34C8109B
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 07:42:23 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so5352263iwn.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 05:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=uicC8LJbFk5kGbm6KrVR+yQsMh26/v3KijbCqioI5mw=;
	b=ShoNUTL4Pf2RA4WXhArfrCw3qE/hfI2cJBuxiGzWkcDw5d2ncu82TtFSqp/3mxXKDO
	Ga7iYCka5HueORvJxD0lq1vQ4Jzp3sMB7XA5qiSQYolDZCH5dT8lGSMBu9OKNbxRTTnV
	8l/dig9YVmDxrvMmoFpDoAyjeZCrJnT2CWOMM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=KaFpy+RnuUucFOOjKGBogFmS2odbq9WpGQKj7Q+0I8tsgD1/IVYAA+BF4BVay57E3y
	UaZXj3HkL/kJ0Jat6Tfx67lVJG18YhmVMDvaLeeh9WpnRwyoO9r3hokgGAjto/xuoJ7K
	PvIYDrVsriZ7A/fxkG07oI316JXWCEVDuMFXk=
MIME-Version: 1.0
Received: by 10.231.13.137 with SMTP id c9mr4191970iba.37.1295271743357; Mon,
	17 Jan 2011 05:42:23 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Mon, 17 Jan 2011 05:42:23 -0800 (PST)
In-Reply-To: <4D33F57D.2030009@intel.com>
References: <4D33F57D.2030009@intel.com>
Date: Mon, 17 Jan 2011 08:42:23 -0500
Message-ID: <AANLkTi=0PVQVF9GjC4+bdu=5Tb0KFwaNMGTd-28YiYm_@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: QemuARM Boot Failure
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
X-List-Received-Date: Mon, 17 Jan 2011 13:42:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 17, 2011 at 2:53 AM, Saul Wold <saul.wold@intel.com> wrote:
>
> Bruce,
>
> Did you test the latest systemtap update on ARM? =A0I am just curious bas=
ed on
> the current failure that we are having with qemuarm. =A0If so, against wh=
at
> revision of master? This might help us narrow down the issue.

The systemtap updates are generic, just configuration items that wouldn't
trigger a boot error .. at least not in any normal stretch of the imaginati=
on.

I booted all arches when I updated to the full 2.6.37 release, which was ab=
out
a week ago. Nothing of significance has changed since then.

I'll do some builds and booting today and see what's up.

Bruce

>
>
> I tried both the systemtap version and the older version and both failed.
> =A0The last known good qemuarm was 2 weeks ago, there have been a number =
of
> kernel updates in that time along with a loads of userspace changes, but =
no
> qemu updates since the first of the year. =A0I am not sure about the user=
space
> changes yet, need to review them more deeply.
>
> I will be tied up tomorrow, but will try bisecting tomorrow evening if th=
ere
> is no update before then.
>
> Thanks
> =A0 Sau!
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

