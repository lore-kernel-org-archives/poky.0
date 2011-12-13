Return-Path: <flocirel@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13876E01358
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 01:18:23 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fanq24 with SMTP id q24so3228fan.35
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 01:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=IC8cAQOgqU9s7cPW+eHW0Zbedv9zPk9mCkFZx4vd3vA=;
	b=GdfBCo2IkAN5riKmpVQ+nV8qwOxNr7nIyWeTTVdW3m8EAgwesB600qGB4I7TV2bUUu
	8KTLxnGSxpXQsulHes6eu9yXTaY1vZkjPjO/aweHh4cv1CqDt8hgnOgL1EjbCxgDJ6z4
	02WFGbWoI6ohMzRWRiYzbs5x6oTR0dwGq8R5I=
MIME-Version: 1.0
Received: by 10.180.73.193 with SMTP id n1mr26116443wiv.1.1323767902532; Tue,
	13 Dec 2011 01:18:22 -0800 (PST)
Received: by 10.223.75.200 with HTTP; Tue, 13 Dec 2011 01:18:22 -0800 (PST)
In-Reply-To: <CAMKF1srCZg4-S-4EPsbCifk7Kr=SuDvsoqX0ww9p8WGdy=53Fg@mail.gmail.com>
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro> <1323641532.2731.5.camel@ted>
	<CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
	<4EE68351.5090600@gherzan.ro>
	<CAMKF1srCZg4-S-4EPsbCifk7Kr=SuDvsoqX0ww9p8WGdy=53Fg@mail.gmail.com>
Date: Tue, 13 Dec 2011 11:18:22 +0200
Message-ID: <CANdftmPXu-zrbaha3Gc5bP7=cZX29bqe8Nw2437XTgeEqJacQw@mail.gmail.com>
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
X-List-Received-Date: Tue, 13 Dec 2011 09:18:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

So for example, in the situation when I have a build from which I want
to exclude GPLv3 code from, but gnutls is added to the build as a
dependency of some package, and the licensing of gnutls is as follows:

LICENSE = "GPLv3+ & LGPLv2.1+"
LICENSE_${PN} = "LGPLv2.1+"
LICENSE_${PN}-xx = "LGPLv2.1+"
LICENSE_${PN}-bin = "GPLv3+"
LICENSE_${PN}-extra = "GPLv3+"
LICENSE_${PN}-openssl = "GPLv3+"

then my understanding is either don't include any code from gnutls as
it's double licence or just include the non GPLv3 rpms (the first and
second rpm). Am I right?

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

