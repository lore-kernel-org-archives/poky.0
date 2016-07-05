Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 833CAE006D2; Tue,  5 Jul 2016 10:23:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 352F5E0045E
	for <poky@yoctoproject.org>; Tue,  5 Jul 2016 10:23:40 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id l185so2321178qkd.2
	for <poky@yoctoproject.org>; Tue, 05 Jul 2016 10:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7GMYk5PxwsOJwxk/1Q6kWj4D/GJMQhQGI6VZV0UyKGE=;
	b=sHiww/dpdIDVNhw2ZbdeoxRZifeQl3xSca1s96kCiAZUxTpTAhqyyIK7OtOC6u6M1Y
	z75xtvJmkz2erKHkllMch2T7PqEsIQ009Mwo8tOd/S1bOZiLbqw9+6r4kL/JjoL2e3IF
	Gl/5VqTEcGW9nLMpAMnIwrxxxRRcHvYSJX4m1QYWrmtA0l9eAi+AQx+EjfGte/52Rd7Y
	RbhauxI8Nrf564maTeIew29rhSICCAzcPvU5ocviJsN2h3BC+pig0WPukxTmprKKj8gH
	lGtFxlhN+xR66F3Pho1rC6tzdTd2nYVb4jtbM0U8X+JX9dwaGsV23W15/2nCR1Xg7a3r
	IeRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7GMYk5PxwsOJwxk/1Q6kWj4D/GJMQhQGI6VZV0UyKGE=;
	b=kqCOXC1L3vY9IB2QLiGnhDqP+Hd3jLRDefB5rhi8Sv73cqttliCWUDcPunnaGO+dqB
	wSyZBPEklrKzskDlgAI2E2i9op6/ID0VJFj+M9tKxuKfqR5wgzEpZ3m1mf6uWc6jTshA
	696izwWRffn5rzTeZuzCP6IYQ58GVKtv/GePfyFSoDNZ40IjQ6ejmZtEaIhAz0G6FP1S
	aRv/eMCUzZyQhjsbvtPlzq474YgOeTzOiZrvSItagQwD6qm7+Eeia5PDBgrNasuJZ3yP
	G4cz2jS4t/J9qDr3/FGMEUeL+a5xAr06Uy30vK8+x1V94IF6B1F1F91nrxXpHm54xegH
	WhIw==
X-Gm-Message-State: ALyK8tI+3GJhIDQjYc6PeG9G8d40yeMAMvb7aksyxwNYJltnrPgkdKRMLe0rg/JLp5SB/MVOT+XYqd+4JDaOMg==
X-Received: by 10.55.187.4 with SMTP id l4mr25166713qkf.152.1467739420153;
	Tue, 05 Jul 2016 10:23:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Tue, 5 Jul 2016 10:23:10 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1607051239420.6050@localhost.localdomain>
References: <alpine.LFD.2.20.1607040639330.6324@localhost.localdomain>
	<CAMKF1soWb4UKJ6_5MZrxyRgu0miuAFeDC=QZ6xDsPeNpPuM24A@mail.gmail.com>
	<alpine.LFD.2.20.1607050616200.21917@localhost.localdomain>
	<CAMKF1spr5ieFwHXJL_SnUNJDUk7hmQTDM1c5xxJ20A12pABikQ@mail.gmail.com>
	<alpine.LFD.2.20.1607051239420.6050@localhost.localdomain>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Jul 2016 10:23:10 -0700
Message-ID: <CAMKF1sqZXuZXPLC22RLSFsmBF8g5LkrtjGRZs+7xCM71LJxyWw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto: Delete PREFERRED_VERSION for obsolete version of U-Boot.
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
X-List-Received-Date: Tue, 05 Jul 2016 17:23:44 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 5, 2016 at 9:40 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Tue, 5 Jul 2016, Khem Raj wrote:
>
>> On Tue, Jul 5, 2016 at 3:17 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>> > On Mon, 4 Jul 2016, Khem Raj wrote:
>> >
>> >> On Mon, Jul 4, 2016 at 3:47 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>> >> >
>> >> > The OE recipe for U-Boot v2013.07 was deleted in 2014, so remove this
>> >> > reference to it.
>> >> >
>> >> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>> >> >
>> >> > ---
>> >> >
>> >> > diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
>> >> > index f3ad12d..1e7de09 100644
>> >> > --- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
>> >> > +++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
>> >> > @@ -22,7 +22,6 @@ XSERVER ?= "xserver-xorg \
>> >> >              xf86-input-evdev \
>> >> >              xf86-video-fbdev"
>> >> >
>> >> > -PREFERRED_VERSION_u-boot ?= "v2013.07%"
>> >>
>> >> while this is ok, I wonder if the new defaults work for this board ?
>> >
>> >   still haven't tried to boot this yet, but given that the v2013.07
>> > version of u-boot was removed back in (it seems) 2014, are you
>> > suggesting no one has tried to build for this YP reference board for
>> > two years? that would seem a bit ... odd.
>> >
>>
>> there is meta-fsl-ppc and folks may have used that.
>
>   that may be, but since the mpc8315e-rdb is the powerpc yocto
> reference board, should it not build with only meta-yocto* layers?

it should but I am not sure if we test bootloader, so it just gets ignored.

