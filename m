Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85CC9E00DD0; Tue,  5 Jul 2016 07:59:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17099E00DC9
	for <poky@yoctoproject.org>; Tue,  5 Jul 2016 07:59:01 -0700 (PDT)
Received: by mail-qt0-f196.google.com with SMTP id i30so13691433qtd.2
	for <poky@yoctoproject.org>; Tue, 05 Jul 2016 07:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ynQFJq8aJzwYvt2O3z9JKw0uPaQiQuR4ef43sVLA/Dg=;
	b=Kq5eRCwmgaBWPUXsQdvLtMB7Yl/nPp/XqN2EOeqAqKoKEikP9XpMWOfEvE9QAsQPKp
	i2FxTyFafEtiCqSkI6ADfhsAKndNmNN5XxLpRMpkgOA1sv7J1KeBlWKNZoZDgoojgA4I
	rcacpdXAx8objvJbhQ8/jEvggyQ8k+/GdD0HA5hg9ocu3gnKu47qDatiUdbRnkR1KCmm
	FWyH6VqwQ1FCTEsBojkUkLYVRtAem2Ld9qKdeyEuKR78uBQzpX9QYhNCDoSCJtnofRjt
	62VV441lSVyZVAHkjnY5NoDdwok5cRw2DbcOJ6DvuM+2CESZ+bTNqozWr+vBed0SXwKW
	n2+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ynQFJq8aJzwYvt2O3z9JKw0uPaQiQuR4ef43sVLA/Dg=;
	b=cuqOI9dbw9yhHEPx6/9B0XvlEuZgtjKMHGwP0LLjl5EnGzPgSTkoGNHMBFuzwb0DAl
	voJsAEZdOxLbW5zPlfh/ue8B1qz0qFq5C9Jzqfj/JFnMO/CxZzJqkKe+kMPYzDZ9JxYR
	A1Kog8RF2SsNEoKImWyHy9HHzQe98SYpgtLOppw5TNL327JLgYklRdRSSC+apecSUoYF
	7PSPpiWsZ1eA5n/5yxGJ0jGPbOuTtCg0w0puPDvc5I1lx/Hv9L+cytO64iSK+IosYjxs
	1eSbPX2kPIMJPTwM+PLt/+mbEHaSrs+il0UU74X40atDoOsXpE/YCDnzAZqJZhXNpjEv
	AZDw==
X-Gm-Message-State: ALyK8tL6LJREdb71uURRs1t/pIUYZE6C6HztMciTV5Vy30wnlEbDWT3JvuTqFSwlJkC8aXHpYvHDsPvXEa/hWw==
X-Received: by 10.200.33.172 with SMTP id 41mr27819786qty.26.1467730741064;
	Tue, 05 Jul 2016 07:59:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.16.198 with HTTP; Tue, 5 Jul 2016 07:58:31 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1607050616200.21917@localhost.localdomain>
References: <alpine.LFD.2.20.1607040639330.6324@localhost.localdomain>
	<CAMKF1soWb4UKJ6_5MZrxyRgu0miuAFeDC=QZ6xDsPeNpPuM24A@mail.gmail.com>
	<alpine.LFD.2.20.1607050616200.21917@localhost.localdomain>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Jul 2016 07:58:31 -0700
Message-ID: <CAMKF1spr5ieFwHXJL_SnUNJDUk7hmQTDM1c5xxJ20A12pABikQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 05 Jul 2016 14:59:03 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 5, 2016 at 3:17 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Mon, 4 Jul 2016, Khem Raj wrote:
>
>> On Mon, Jul 4, 2016 at 3:47 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>> >
>> > The OE recipe for U-Boot v2013.07 was deleted in 2014, so remove this
>> > reference to it.
>> >
>> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>> >
>> > ---
>> >
>> > diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
>> > index f3ad12d..1e7de09 100644
>> > --- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
>> > +++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
>> > @@ -22,7 +22,6 @@ XSERVER ?= "xserver-xorg \
>> >              xf86-input-evdev \
>> >              xf86-video-fbdev"
>> >
>> > -PREFERRED_VERSION_u-boot ?= "v2013.07%"
>>
>> while this is ok, I wonder if the new defaults work for this board ?
>
>   still haven't tried to boot this yet, but given that the v2013.07
> version of u-boot was removed back in (it seems) 2014, are you
> suggesting no one has tried to build for this YP reference board for
> two years? that would seem a bit ... odd.
>

there is meta-fsl-ppc and folks may have used that.

