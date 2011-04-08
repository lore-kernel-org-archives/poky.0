Return-Path: <cgwalters@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 532AE4C80050
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 16:07:42 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so4773139wwd.11
	for <poky@yoctoproject.org>; Fri, 08 Apr 2011 14:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=O5R0A2ziy5IC34+93IRiANVOHLlV4eIXePURJI2nCD0=;
	b=qLwsuSsEiPNnLM67nz22xmuQp8BbPJ3JK3jI69wcazp0/JjLKhD0TKuN6mJh/cwmcL
	/JqjzlL8Yk7zpW74AHziQT9DBMcGXcuphNzXwZq6dhjIQn2Rc0H1HKcIA7wyiLZp+Gc3
	qOjWDvW/SAk6ErGJyNpcC3B+/xgghPfqgaRVo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	b=twYiVOYiNAJyGMuO2qtnppaVLpKuXSB7GoKvff+GFRoKnw1roVjiMfSxwr6NU5mdps
	kBgWUfsu1b+PJfgcBdPkL+O5BeKkssZZvlDXNqrwUm+knkB5izPIq0lAaPGXfvaXA5Sb
	jT+va//5dSfnY011O9rfDreENv9Vbkn80k+Gw=
MIME-Version: 1.0
Received: by 10.216.72.201 with SMTP id t51mr176477wed.6.1302296861161; Fri,
	08 Apr 2011 14:07:41 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.49.20 with HTTP; Fri, 8 Apr 2011 14:07:41 -0700 (PDT)
In-Reply-To: <AANLkTi=KnuGEbCL9SQFX6he5BU7v0+ygtAAL7HQwSDCT@mail.gmail.com>
References: <AANLkTikeUs9N=0-q_TPFr-xsQZTmAh5PORHYtrSMpf8u@mail.gmail.com>
	<20110324031944.GC20796@sakrah.homelinux.org>
	<AANLkTi=KnuGEbCL9SQFX6he5BU7v0+ygtAAL7HQwSDCT@mail.gmail.com>
Date: Fri, 8 Apr 2011 17:07:41 -0400
X-Google-Sender-Auth: zSbm8x7KVNUQUPL0RKIbmREQJaM
Message-ID: <BANLkTimuR_V_bJtHw323iMgYmm71dsuvyA@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: Colin Walters <walters@verbum.org>, poky@yoctoproject.org
Subject: Re: [patch] autotools: Override do_compile to specify V=1 if project uses AM_V_GEN
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
X-List-Received-Date: Fri, 08 Apr 2011 21:07:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 25, 2011 at 8:41 AM, Colin Walters <walters@verbum.org> wrote:
> On Wed, Mar 23, 2011 at 11:19 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> usually package which use silent-rules they have --disable-silent-rules
>> Did you try to pass this option ? May be try it with EXTRA_OECONF and
>> see if that helps
>
> You're right, that's much better. =C2=A0New patch attached:

Any opinion on the new patch?

