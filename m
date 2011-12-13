Return-Path: <anders@chargestorm.se>
Received: from stoexhub03.domain01.net (STOEXHUB03.domain01.net
	[83.145.59.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DEF4E01358
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 01:40:02 -0800 (PST)
Received: from ad.chargestorm.se (85.229.138.125) by stoexhub03.domain01.net
	(10.12.10.3) with Microsoft SMTP Server (TLS) id 8.3.213.0;
	Tue, 13 Dec 2011 10:40:00 +0100
Date: Tue, 13 Dec 2011 10:40:02 +0100
From: Anders Darander <anders@chargestorm.se>
To: <poky@yoctoproject.org>
Message-ID: <20111213094002.GA6336@ad.chargestorm.se>
Mail-Followup-To: poky@yoctoproject.org
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro> <1323641532.2731.5.camel@ted>
	<CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
	<4EE68351.5090600@gherzan.ro>
	<CAMKF1srCZg4-S-4EPsbCifk7Kr=SuDvsoqX0ww9p8WGdy=53Fg@mail.gmail.com>
	<CANdftmPXu-zrbaha3Gc5bP7=cZX29bqe8Nw2437XTgeEqJacQw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANdftmPXu-zrbaha3Gc5bP7=cZX29bqe8Nw2437XTgeEqJacQw@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
X-GFI-SMTP-Submission: 1
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
X-List-Received-Date: Tue, 13 Dec 2011 09:40:04 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Foinel <flocirel@gmail.com> [111213 10:19]:

> So for example, in the situation when I have a build from which I want
> to exclude GPLv3 code from, but gnutls is added to the build as a
> dependency of some package, and the licensing of gnutls is as follows:

> LICENSE = "GPLv3+ & LGPLv2.1+"
> LICENSE_${PN} = "LGPLv2.1+"
> LICENSE_${PN}-xx = "LGPLv2.1+"
> LICENSE_${PN}-bin = "GPLv3+"
> LICENSE_${PN}-extra = "GPLv3+"
> LICENSE_${PN}-openssl = "GPLv3+"

> then my understanding is either don't include any code from gnutls as
> it's double licence or just include the non GPLv3 rpms (the first and
> second rpm). Am I right?

Yes, it's OK to include the first two rpms, as they only should include
files licensed under LGPLv2.1+. The last three rpm's needs to be avoided
to get a GPLv3 free image.

If any of the rpm's would have been licensed under "GPLv3+ & LGPLv2.1+",
it would also have been fine to include that one in your image, as in
this case, you're free to choose between the two licenses.

Cheers,
Anders

> On Tue, Dec 13, 2011 at 1:21 AM, Khem Raj <raj.khem@gmail.com> wrote:
> > On Mon, Dec 12, 2011 at 2:42 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >> So as you can see here is checked every package. This variable,
> >> LGPLv2_WHITELIST_GPLv3, is defined in default-distrovars.inc as:
> >> LGPLv2_WHITELIST_GPLv3 ?= "libassuan gnutls libtasn1 libidn libgcc
> >> gcc-runtime"

> > most of them have exceptions along with gplv3 or are lgplv3/lgplv2.1
> > e.g. the gcc bits in there are gplv3 with GCC Runtime Library Exception
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Anders Darander
ChargeStorm AB / eStorm AB

