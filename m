Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A570CE003D2
	for <poky@yoctoproject.org>; Wed,  4 Sep 2013 07:25:56 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id b13so350387wgh.35
	for <poky@yoctoproject.org>; Wed, 04 Sep 2013 07:25:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=IEVjUwQwQwnKf5iDng4Ri6E5UG0DynXGZXxdmHDehhc=;
	b=SUI8gUX2/WyUSUiiKhLZFVDICEZDkfibl6yBX5NPjmYcf+J93gTg544xPE9JPcGSlR
	IqPFR35lqmwRf1RSd2018N3L0jE0nrZ9HpcYoKkWFuCXey+9iVrxVsbIWAarglkJn8QP
	OBRqLTtD29AmRvDel5riIx6Qt6mzsnr/4v8mrD/cprw3R/0gYwX9BnDjtag/Z2KT2r5k
	LwK0YRs0Hk0zq3E2XL4tpD281Kbg+FZ+ZerPINebe289fIWlevy32zWM7GBWgUNlnbby
	zJdf7NnlwnC0u9BhqrVMEG5bCPASkAmOgrfz4usC0ntmLZlXrus6pBinoF2yi3GBJ2bt
	mRbw==
X-Gm-Message-State: ALoCoQnbdoXynchBVmuyOg0xn/9A+z9u7AI5yRV+g4zkC3W+q/Uznip2HVnU2OH45JpPqSIbvLPP
X-Received: by 10.181.12.16 with SMTP id em16mr2332881wid.36.1378304755004;
	Wed, 04 Sep 2013 07:25:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.99.10 with HTTP; Wed, 4 Sep 2013 07:25:34 -0700 (PDT)
In-Reply-To: <52272D84.6050405@windriver.com>
References: <1378259015-25126-1-git-send-email-net147@gmail.com>
	<CADkTA4NS36hZBgpZ-CQmxgJ63D_jyo5nEV8osa2u1eP+tutq9g@mail.gmail.com>
	<CANwerB2PtV9Sk=qMPKJ6EBu88DWSJ6rxLH9OYui=29f5wqT2dA@mail.gmail.com>
	<CADkTA4OiNjkfiE4oa-AMb_NFX1P9JNoG4SkwP3xmFpoqyTubEA@mail.gmail.com>
	<CANwerB0PQgJQSqR4S_b0N77w2vejVZsO967AgzJgyDveu8aUcA@mail.gmail.com>
	<CANwerB3wV4R_1pR-hhQeZK-FabdF2oCzozgqoSjNKX_ZOoZ_WA@mail.gmail.com>
	<CANwerB3KCBuaq87oSWaze1B+_+DYmzokKoV1dk=S7Gj8EnLS4g@mail.gmail.com>
	<52272D84.6050405@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 4 Sep 2013 15:25:34 +0100
Message-ID: <CAJTo0LZt4Wmre2XOjLtTFPnmOOMvC+x0Gu-EDEQSFB_F_XkFFw@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH] genericx86: tune for i586 instead of atom
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Sep 2013 14:25:59 -0000
Content-Type: text/plain; charset=UTF-8

On 4 September 2013 13:54, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>> I have confirmed it is CONFIG_MATOM=y that was causing the boot issue.
>
> That would definitely make a difference. If you are using the genericx86
> PC, the default tuning was atom+ IIRC (a line has to be drawn somewhere),
>  and you can discuss that with the Intel guys.
>
> But you can easily carry a configuration fragment in your own layer that
> disables that option if you want that same BSP to work on your platform.

I'd be inclined to say that the line for genericx86 is "atom onwards"
and Pentium is sufficiently different to justify its own BSP.

Ross

