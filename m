Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A808AE00739
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 07:23:49 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBDFNl9M010482;
	Tue, 13 Dec 2011 15:23:47 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09849-06; Tue, 13 Dec 2011 15:23:43 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBDFNbf7010476
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 13 Dec 2011 15:23:38 GMT
Message-ID: <1323789817.25336.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Foinel <flocirel@gmail.com>
Date: Tue, 13 Dec 2011 15:23:37 +0000
In-Reply-To: <CANdftmN1g5VvOJ7znkzi1-mTgF1_QOnpwnA4hBjnQ9grF7VO+w@mail.gmail.com>
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro> <1323641532.2731.5.camel@ted>
	<CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
	<4EE68351.5090600@gherzan.ro>
	<CAMKF1srCZg4-S-4EPsbCifk7Kr=SuDvsoqX0ww9p8WGdy=53Fg@mail.gmail.com>
	<CANdftmN1g5VvOJ7znkzi1-mTgF1_QOnpwnA4hBjnQ9grF7VO+w@mail.gmail.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Tue, 13 Dec 2011 15:23:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-12-13 at 12:22 +0200, Foinel wrote:
> Looking at gnutls-2.12.14/libextra/COPYING it says just GPLv3, so no
> dual licensing or exceptions of any kind for these extra libraries.
> Can anyone explain why in
> meta/conf/distro/include/default-distrovars.inc it says:
> 
> # This is a list of packages that are used by the build system to
> build the distribution, they are not
> # directly part of the distribution..
> HOSTTOOLS_WHITELIST_GPLv3 ?= ""
> WHITELIST_GPLv3 ?= "less"
> LGPLv2_WHITELIST_GPLv3 ?= "libassuan gnutls libtasn1 libidn libgcc gcc-runtime"
> 
> Does this mean gnutls is some sort of a host tool?
> Because of this fact (gnutls being in LGPLv2_WHITELIST_GPLv3), then
> the restriction to avoid GPLv3 packages seems not applicable to
> gnutls. Does anyone know if gnutls is a special case in what concerns
> the licensing?

I think we were only including GPLv2 pieces of gnutls in most images. If
something is now pulling in the -extras package, we have a problem. It
sounds like we should remove it from the whitelist.

Cheers,

Richard


