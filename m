Return-Path: <flocirel@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DE23E01358
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 02:22:05 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wgbdt13 with SMTP id dt13so11766268wgb.11
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 02:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=HGpBkPwOQsq0+9WjN0oV8IbZZOhg/VPoKCH38RBfaQs=;
	b=JnRIEui6wvPAbafCfetRXzUUxJ/oalxavDLuuZyMKzyhlI6yYanFROUymBs8zWWnmI
	X2t0IwIAQL4f29+0e3zJH+TIDm46nyOoVMk+NwE0UzbN8fIQoRNOPA6sCJx2UO7hZpp/
	nh6iqbdtx8Rz1ZiqJoPCBpy2OLajuWlMxtVs0=
MIME-Version: 1.0
Received: by 10.227.205.14 with SMTP id fo14mr16311614wbb.22.1323771724161;
	Tue, 13 Dec 2011 02:22:04 -0800 (PST)
Received: by 10.223.75.200 with HTTP; Tue, 13 Dec 2011 02:22:04 -0800 (PST)
In-Reply-To: <CAMKF1srCZg4-S-4EPsbCifk7Kr=SuDvsoqX0ww9p8WGdy=53Fg@mail.gmail.com>
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro> <1323641532.2731.5.camel@ted>
	<CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
	<4EE68351.5090600@gherzan.ro>
	<CAMKF1srCZg4-S-4EPsbCifk7Kr=SuDvsoqX0ww9p8WGdy=53Fg@mail.gmail.com>
Date: Tue, 13 Dec 2011 12:22:04 +0200
Message-ID: <CANdftmN1g5VvOJ7znkzi1-mTgF1_QOnpwnA4hBjnQ9grF7VO+w@mail.gmail.com>
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
X-List-Received-Date: Tue, 13 Dec 2011 10:22:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

Looking at gnutls-2.12.14/libextra/COPYING it says just GPLv3, so no
dual licensing or exceptions of any kind for these extra libraries.
Can anyone explain why in
meta/conf/distro/include/default-distrovars.inc it says:

# This is a list of packages that are used by the build system to
build the distribution, they are not
# directly part of the distribution..
HOSTTOOLS_WHITELIST_GPLv3 ?= ""
WHITELIST_GPLv3 ?= "less"
LGPLv2_WHITELIST_GPLv3 ?= "libassuan gnutls libtasn1 libidn libgcc gcc-runtime"

Does this mean gnutls is some sort of a host tool?
Because of this fact (gnutls being in LGPLv2_WHITELIST_GPLv3), then
the restriction to avoid GPLv3 packages seems not applicable to
gnutls. Does anyone know if gnutls is a special case in what concerns
the licensing?

Thanks.

On Tue, Dec 13, 2011 at 1:21 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Mon, Dec 12, 2011 at 2:42 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> So as you can see here is checked every package. This variable,
>> LGPLv2_WHITELIST_GPLv3, is defined in default-distrovars.inc as:
>> LGPLv2_WHITELIST_GPLv3 ?= "libassuan gnutls libtasn1 libidn libgcc
>> gcc-runtime"
>
> most of them have exceptions along with gplv3 or are lgplv3/lgplv2.1
> e.g. the gcc bits in there are gplv3 with GCC Runtime Library Exception
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

