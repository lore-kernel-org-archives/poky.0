Return-Path: <eballetbo@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 68CE04C80815
	for <poky@yoctoproject.org>; Sat, 27 Nov 2010 02:50:49 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwj9 with SMTP id 9so685536pwj.35
	for <poky@yoctoproject.org>; Sat, 27 Nov 2010 00:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=knz3YSfTs8R+zem5AMvBl5mRJ2zuqRbb8raf9TvpQ2Q=;
	b=UaVt3zOQ13mF+nb56CDwmWCLUCeAKJx0Ck8goHt0+1MNZA5vk1Fcf7hEnPKdzFcQEG
	D+Oc1vbmfXiyy/SBXXZdO5YXCaB/P8b8ECcn/phTs2SAQcuQCID02Twmz9t6ZU4Exg6o
	gYL4cwizub9qNf0YXvPymb7uiFbpFgcw8y/H0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=OPxSU5VZeWVkJA8xWlz3V9/41wAaRiEAo++9MhWkWjdaFOhVTvk+6AtpJcNhYdJ2JA
	KwV8B13eD825FLQO4I6/MTx6VFh44sIa2oW/ObjGGnORAUUdPWrujOpQj4Ek7L44QrDq
	sbRbQGr2HjMj70g5F1n3KIUTFiqIyavE7m26U=
MIME-Version: 1.0
Received: by 10.143.16.6 with SMTP id t6mr3310711wfi.113.1290847848922; Sat,
	27 Nov 2010 00:50:48 -0800 (PST)
Received: by 10.143.9.9 with HTTP; Sat, 27 Nov 2010 00:50:48 -0800 (PST)
In-Reply-To: <AANLkTikicPDkiO+z1_4+w1vs1y77hA6XmN=PH0kHs3kx@mail.gmail.com>
References: <AANLkTikicPDkiO+z1_4+w1vs1y77hA6XmN=PH0kHs3kx@mail.gmail.com>
Date: Sat, 27 Nov 2010 09:50:48 +0100
Message-ID: <AANLkTinEbfDJHkNBTgyHO1mqBgc_AfJ_WzoMpniteBA_@mail.gmail.com>
From: =?UTF-8?Q?Enric_Balletb=C3=B2_i_Serra?= <eballetbo@gmail.com>
To: Bai Shuwei <baishuwei@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: how much disk space should be used when Poky is installed?
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
X-List-Received-Date: Sat, 27 Nov 2010 08:50:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

2010/11/27 Bai Shuwei <baishuwei@gmail.com>:
> Hi, all:
> =C2=A0 when i try to install poky-image-minimal image for poky, it takes
>>25G disk space, but it is failure as "No space left on disk". I =C2=A0wan=
t
> to know how much free disk i should prepare before intall it. thanks
> all!
>
> It will more pleasure if you can list the size needed for the bellow imag=
es
>
> =C2=A0 =C2=A0poky-image-minimal
> =C2=A0 =C2=A0poky-image-sato
> =C2=A0 =C2=A0meta-toolchain
> =C2=A0 =C2=A0meta-toolchain-sdk
>
 I've no data about the space required but you can append
INHERIT+=3D"rm_work" in your local.conf to reduce the space used by
poky.

Hope it helps you.
   Enric

>
> Best Regards
>
> Bai Shuwei
>
>
>
> --
> Love other people, as same as love yourself!
> Don't think all the time, do it by your hands!
>
> E-Mail: baishuwei@gmail.com
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

