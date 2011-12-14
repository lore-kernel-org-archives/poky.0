Return-Path: <flocirel@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47DA3E00305
	for <poky@yoctoproject.org>; Wed, 14 Dec 2011 02:54:47 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fanq24 with SMTP id q24so1422482fan.35
	for <poky@yoctoproject.org>; Wed, 14 Dec 2011 02:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=TnJPSgqakQxErJF0GL/Q9szGfVZnsJ9zvpsPgnBtURM=;
	b=SLrwWi5SV3sZI/huRnjnvGJ7I35X4HLgZ851OV19n1NtBts8H1SKwIZTWgBQ8VDWIM
	pTzeF5oFVrUeX4kvj6QsgPlo7bUWig8U6qgI4HrO+3hvyTYDJWvLhDYQDHnZLXQkEr0a
	O2LnA9k/Waa2w8fLLF/pxerclasObp+GWLoqU=
MIME-Version: 1.0
Received: by 10.180.84.202 with SMTP id b10mr3684113wiz.10.1323860085792; Wed,
	14 Dec 2011 02:54:45 -0800 (PST)
Received: by 10.223.75.200 with HTTP; Wed, 14 Dec 2011 02:54:45 -0800 (PST)
In-Reply-To: <1323789817.25336.1.camel@ted>
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro> <1323641532.2731.5.camel@ted>
	<CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
	<4EE68351.5090600@gherzan.ro>
	<CAMKF1srCZg4-S-4EPsbCifk7Kr=SuDvsoqX0ww9p8WGdy=53Fg@mail.gmail.com>
	<CANdftmN1g5VvOJ7znkzi1-mTgF1_QOnpwnA4hBjnQ9grF7VO+w@mail.gmail.com>
	<1323789817.25336.1.camel@ted>
Date: Wed, 14 Dec 2011 12:54:45 +0200
Message-ID: <CANdftmOEcHMDp6skHttwz=t65-1o0tY3jBR2tmxLpHmvQWKv_A@mail.gmail.com>
From: Foinel <flocirel@gmail.com>
To: poky@yoctoproject.org
Subject: Re: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Wed, 14 Dec 2011 10:54:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi, I think I've narrowed the problem down to wpa-supplicant.
If you look into wpa-supplicant-0.7.3/defconfig-gnutls you can see
there CONFIG_GNUTLS_EXTRA=y. Commenting out this CONFIG_GNUTLS_EXTRA=y
creates a build into which I do not have anymore the libraries from
the -extra rpm.

On Tue, Dec 13, 2011 at 5:23 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Tue, 2011-12-13 at 12:22 +0200, Foinel wrote:
>> Looking at gnutls-2.12.14/libextra/COPYING it says just GPLv3, so no
>> dual licensing or exceptions of any kind for these extra libraries.
>> Can anyone explain why in
>> meta/conf/distro/include/default-distrovars.inc it says:
>>
>> # This is a list of packages that are used by the build system to
>> build the distribution, they are not
>> # directly part of the distribution..
>> HOSTTOOLS_WHITELIST_GPLv3 ?= ""
>> WHITELIST_GPLv3 ?= "less"
>> LGPLv2_WHITELIST_GPLv3 ?= "libassuan gnutls libtasn1 libidn libgcc gcc-runtime"
>>
>> Does this mean gnutls is some sort of a host tool?
>> Because of this fact (gnutls being in LGPLv2_WHITELIST_GPLv3), then
>> the restriction to avoid GPLv3 packages seems not applicable to
>> gnutls. Does anyone know if gnutls is a special case in what concerns
>> the licensing?
>
> I think we were only including GPLv2 pieces of gnutls in most images. If
> something is now pulling in the -extras package, we have a problem. It
> sounds like we should remove it from the whitelist.
>
> Cheers,
>
> Richard
>

