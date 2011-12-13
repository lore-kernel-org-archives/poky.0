Return-Path: <flocirel@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 323C7E01358
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 02:04:38 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wgbdt13 with SMTP id dt13so11743711wgb.11
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 02:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=BqHRL55OVQKaQcPy7lHHu7cvVO9dolZiao+XDgd/8Eg=;
	b=ZJFIZ/pr+MysNwI57SXEmiaFuo9esqhHIDtZQ68NlWb7+wXRNQ07jpYeOYI2EdWEG8
	Uet8Fw/UzFo6uUo5KaDKXqHEQWtAzzSSbfmiqsjBx8OmMA3lVSDbuCmMYQOSZyPPSgp1
	e9MZhQwzm2TMrKAngFV4vbku4LJwYLn2O3FCk=
MIME-Version: 1.0
Received: by 10.227.205.14 with SMTP id fo14mr16275832wbb.22.1323770676825;
	Tue, 13 Dec 2011 02:04:36 -0800 (PST)
Received: by 10.223.75.200 with HTTP; Tue, 13 Dec 2011 02:04:36 -0800 (PST)
In-Reply-To: <20111213094002.GA6336@ad.chargestorm.se>
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro> <1323641532.2731.5.camel@ted>
	<CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
	<4EE68351.5090600@gherzan.ro>
	<CAMKF1srCZg4-S-4EPsbCifk7Kr=SuDvsoqX0ww9p8WGdy=53Fg@mail.gmail.com>
	<CANdftmPXu-zrbaha3Gc5bP7=cZX29bqe8Nw2437XTgeEqJacQw@mail.gmail.com>
	<20111213094002.GA6336@ad.chargestorm.se>
Date: Tue, 13 Dec 2011 12:04:36 +0200
Message-ID: <CANdftmPpQAjkTiZ0KzaxjmjsXMgTr0Oy=pH3WjTUhv_oyjeatQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 13 Dec 2011 10:04:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

This is exactly the issue: the third rpm (-extra) gets included in the rootfs.
So in the rootfs I get the files from the first rpm and the third rpm
(second rpm does not get included in my *.tar.bz2 archive).
One more thing to note: libgnutls-extra.so.26.21.8 from the rootfs
(which is the library from the -extra rpm, which is GPLv3 code) has a
different size from the one in
tmp/work/armv5te-poky-linux-gnueabi/gnutls-2.12.14-r3.1/packages-split/gnutls-extra/usr/lib/libgnutls-extra.so.26.21.8
(they are both stripped, so what would explain this size difference?).

Thanks.

On Tue, Dec 13, 2011 at 11:40 AM, Anders Darander <anders@chargestorm.se> wrote:
> * Foinel <flocirel@gmail.com> [111213 10:19]:
>
>> So for example, in the situation when I have a build from which I want
>> to exclude GPLv3 code from, but gnutls is added to the build as a
>> dependency of some package, and the licensing of gnutls is as follows:
>
>> LICENSE = "GPLv3+ & LGPLv2.1+"
>> LICENSE_${PN} = "LGPLv2.1+"
>> LICENSE_${PN}-xx = "LGPLv2.1+"
>> LICENSE_${PN}-bin = "GPLv3+"
>> LICENSE_${PN}-extra = "GPLv3+"
>> LICENSE_${PN}-openssl = "GPLv3+"
>
>> then my understanding is either don't include any code from gnutls as
>> it's double licence or just include the non GPLv3 rpms (the first and
>> second rpm). Am I right?
>
> Yes, it's OK to include the first two rpms, as they only should include
> files licensed under LGPLv2.1+. The last three rpm's needs to be avoided
> to get a GPLv3 free image.
>
> If any of the rpm's would have been licensed under "GPLv3+ & LGPLv2.1+",
> it would also have been fine to include that one in your image, as in
> this case, you're free to choose between the two licenses.
>
> Cheers,
> Anders
>
>> On Tue, Dec 13, 2011 at 1:21 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> > On Mon, Dec 12, 2011 at 2:42 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> >> So as you can see here is checked every package. This variable,
>> >> LGPLv2_WHITELIST_GPLv3, is defined in default-distrovars.inc as:
>> >> LGPLv2_WHITELIST_GPLv3 ?= "libassuan gnutls libtasn1 libidn libgcc
>> >> gcc-runtime"
>
>> > most of them have exceptions along with gplv3 or are lgplv3/lgplv2.1
>> > e.g. the gcc bits in there are gplv3 with GCC Runtime Library Exception
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> --
> Anders Darander
> ChargeStorm AB / eStorm AB
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

