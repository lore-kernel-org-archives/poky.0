Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86C92E0132F
	for <poky@yoctoproject.org>; Mon, 12 Dec 2011 15:22:09 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by laam7 with SMTP id m7so1451824laa.35
	for <poky@yoctoproject.org>; Mon, 12 Dec 2011 15:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=57zC824x+piYtiEfi1jaV0XQZXZOdO5qImP68ymgMpA=;
	b=pOYPwSrJHWdKblWFA+agKrpEb0opG352Skuo4Jk3Eo6BqQNreICXI03qbawcDF1Lk6
	jubzTOnBcPcwlYL1ffBUpvQ3iDG5XkR6DfWfoJ58MsjGriioRHj2hwelO2ToDu8X8tra
	cvfuSQ77NBDFUbV65J1gYESCnlW0wQJ88mGb4=
Received: by 10.152.106.115 with SMTP id gt19mr13379238lab.27.1323732128256;
	Mon, 12 Dec 2011 15:22:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Mon, 12 Dec 2011 15:21:37 -0800 (PST)
In-Reply-To: <4EE68351.5090600@gherzan.ro>
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro> <1323641532.2731.5.camel@ted>
	<CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
	<4EE68351.5090600@gherzan.ro>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 12 Dec 2011 15:21:37 -0800
Message-ID: <CAMKF1srCZg4-S-4EPsbCifk7Kr=SuDvsoqX0ww9p8WGdy=53Fg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
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
X-List-Received-Date: Mon, 12 Dec 2011 23:22:10 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 12, 2011 at 2:42 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> So as you can see here is checked every package. This variable,
> LGPLv2_WHITELIST_GPLv3, is defined in default-distrovars.inc as:
> LGPLv2_WHITELIST_GPLv3 ?= "libassuan gnutls libtasn1 libidn libgcc
> gcc-runtime"

most of them have exceptions along with gplv3 or are lgplv3/lgplv2.1
e.g. the gcc bits in there are gplv3 with GCC Runtime Library Exception

