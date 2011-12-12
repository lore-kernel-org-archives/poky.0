Return-Path: <andrei@gherzan.ro>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96BE0E006DF
	for <poky@yoctoproject.org>; Mon, 12 Dec 2011 14:42:27 -0800 (PST)
Received: by eaac13 with SMTP id c13so2545678eaa.35
	for <poky@yoctoproject.org>; Mon, 12 Dec 2011 14:42:26 -0800 (PST)
Received: by 10.14.3.222 with SMTP id 70mr1855859eeh.11.1323729746530;
	Mon, 12 Dec 2011 14:42:26 -0800 (PST)
Received: from [192.168.1.2] ([79.117.116.240])
	by mx.google.com with ESMTPS id q28sm80890207eea.6.2011.12.12.14.42.25
	(version=SSLv3 cipher=OTHER); Mon, 12 Dec 2011 14:42:26 -0800 (PST)
Message-ID: <4EE68351.5090600@gherzan.ro>
Date: Tue, 13 Dec 2011 00:42:25 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro> <1323641532.2731.5.camel@ted>
	<CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
In-Reply-To: <CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
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
X-List-Received-Date: Mon, 12 Dec 2011 22:42:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I went into code a little.
The problem is, as i see, that this gnutls package is included in 
LGPLv2_WHITELIST_GPLv3. This is why this package is not checked for 
LICENSE and is passed further.

In base.class - line 399:
if pn not in hosttools_whitelist and pn not in lgplv2_whitelist and pn 
not in dont_want_whitelist:

So as you can see here is checked every package. This variable, 
LGPLv2_WHITELIST_GPLv3, is defined in default-distrovars.inc as:
LGPLv2_WHITELIST_GPLv3 ?= "libassuan gnutls libtasn1 libidn libgcc 
gcc-runtime"

So the problem goes like this:

Why isn't this list "LGPLv2_WHITELIST_GPLv3" checked and part of it ends 
up in rootfs final archive (if is dependency for a package - take 
connman as example) even if these packages are GPLv3? Can anybody 
explain me this VARIABLE and the story that comes along?


