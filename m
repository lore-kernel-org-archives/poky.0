Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f52.google.com (mail-ww0-f52.google.com [74.125.82.52])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F8B64C800A5
	for <poky@lists.pokylinux.org>; Wed,  2 Feb 2011 09:14:30 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so60397wwd.33
	for <poky@lists.pokylinux.org>; Wed, 02 Feb 2011 07:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=Vf96034HtXu33LOmW8A1hOvVXjUWXT8w63h1/6jC/b8=;
	b=FYROti6ueKnMtK7z0Le0AgMsk6cvbYuVcKXVvhYCk19AdnJC662kGCgt8u23SRRvr1
	qo6sy6Ur709LeDPpHbG62fjmgztybimUkjHMrLuqY/XZhSgqUyWfypjbtHVE52kjOdYB
	wMYHlYc4F/dMqqzpSP3qNdCMxehtGBXbJl9uc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=KOX/6rqE00Cvefq3C4ptlIuMiLr3qwcDDuBJgbEPrEFlDGCKwzFiclUBmKCj9h9i/S
	Ysk8qV+wX3DxgccsXARfblgtO1eSURMyqwIUt+WRlPvQo/BUcFFS9YbvtN6TiS7/w9WE
	IEosM/DSeObMLV+gsdeFdZBpahE3+zbpEm4ZI=
Received: by 10.216.150.134 with SMTP id z6mr8616529wej.27.1296659669328; Wed,
	02 Feb 2011 07:14:29 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.254.91 with HTTP; Wed, 2 Feb 2011 07:13:53 -0800 (PST)
In-Reply-To: <4D497242.2000409@mlbassoc.com>
References: <4D497242.2000409@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 2 Feb 2011 08:13:53 -0700
X-Google-Sender-Auth: Fkh4FIv9DFgU2SeZ_mMAiNuzg5E
Message-ID: <AANLkTik21AK9-kuM78JU8=GHYmPNCOJobM3_VK1BY+V3@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: PR and .bbappend
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
X-List-Received-Date: Wed, 02 Feb 2011 15:14:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 2, 2011 at 8:03 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> Should .bbappend files have a PR in them? =C2=A0If so, must it
> match the one in the main .bb file?

All metadata in a .bbappend is essentially concatenated to the recipe.
 If you define PR in the .bbappend, it will override the one in the
recipe, which is unlikely what you want, as that loses information.
The better route is to do something like PR .=3D ".1" in the .bbappend,
and bump that when changing the bbappend file.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

