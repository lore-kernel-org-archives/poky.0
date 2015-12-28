Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D26F5E00901; Mon, 28 Dec 2015 07:24:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91B6AE008C8
	for <poky@yoctoproject.org>; Mon, 28 Dec 2015 07:24:27 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id f206so10779384wmf.0
	for <poky@yoctoproject.org>; Mon, 28 Dec 2015 07:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Lf6CgwZDeCVoGfj3b77Cx+zB//9WDe1noxF0CsuyXK4=;
	b=0h2ftDB6wlp8U1Rrsshx0GSPiKWvo5v8AhyGI4BLNr+ShkajOVMWKH+s4+asJsNLHV
	Wo/0lOjwji90UF/u8aBUCuBuGe3nAovO6fe/HDLG5VxpbsjBrXHO2Eix3E48rBNM5f5t
	C1O0hqUvrxjocuX7BZUxb7zpBE0mezfxpI+fT1rSbeaRtEolgDTMo/BBqwUcUUjKlN8S
	QKHTaTu8huhe1ZHFWR6DH4Stm4nOMil+bdeVpvfBtcC1vRHsgVgKsQa7TxRqQmXrKQpp
	U4bWx3G6AsXZ3uTnytlPvEi+puZOY9LVR8JZ6jlCjSl9LSEJh+zbeI8sXO5gb3MY+AaC
	UZ7Q==
MIME-Version: 1.0
X-Received: by 10.194.109.194 with SMTP id hu2mr57169922wjb.134.1451316266740; 
	Mon, 28 Dec 2015 07:24:26 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Mon, 28 Dec 2015 07:24:26 -0800 (PST)
In-Reply-To: <1451309320.4129.25.camel@linuxfoundation.org>
References: <CAA2DH4uy0UjfP81=wJi-w-Dik7rtk+5Hhtes-Ao1TKavUmRP1g@mail.gmail.com>
	<1451309320.4129.25.camel@linuxfoundation.org>
Date: Mon, 28 Dec 2015 20:54:26 +0530
Message-ID: <CAA2DH4vhzir6+cuqzPLE3S-DW4aAYdShRxG9oAGYJz+04JrX-w@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: bitbake variable override (virtual/kernel)
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
X-List-Received-Date: Mon, 28 Dec 2015 15:24:33 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 28, 2015 at 6:58 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Mon, 2015-12-28 at 18:52 +0530, Prasant J wrote:
>> Hi,
>>
>> I'm putting together my custom layer with my machine configuration. I
>> have set PREFERRED_PROVIDER_virtual/kernel to build my kernel but it
>> is always overridden by distro configuration. Below is the output of
>> bitbake environment:
>>
>>
>> # $PREFERRED_PROVIDER_virtual/kernel [6 operations]
>> #   set /home/user/fsl-L3.14.52_1.1.0_ga/fsl-release-bsp/sources/meta
>> -fsl-arm/conf/machine/include/imx-base.inc:117
>> #     [_defaultval] "linux-imx"
>> #   finalize ast.py:325 [finalize]
>> #     "was: linux-imx"
>> #   override[mx6]:set /home/user/fsl-L3.14.52_1.1.0_ga/fsl-release
>> -bsp/build-fb/conf/local.conf:26
>> #     "linux-myboard-imx6"
>> #   override[mx6]:set /home/user/fsl-L3.14.52_1.1.0_ga/fsl-release
>> -bsp/sources/mylayer/meta-newlayer/conf/machine/mymachine.conf:17
>> #     "linux-myboard-imx6"
>> #   override[mx6]:set /home/user/fsl-L3.14.52_1.1.0_ga/fsl-release
>> -bsp/sources/meta-fsl-bsp-release/imx/meta
>> -sdk/conf/distro/include/fsl-imx-preferred-env.inc:7
>> #     "linux-imx"
>> #   finalize override[mx6]:
>> #     "linux-imx"
>> # pre-expansion value:
>> #   "linux-imx"
>> PREFERRED_PROVIDER_virtual/kernel="linux-imx"
>>
>> From the above it seems that distro configuration overrides my custom
>> machine + glocal conf/local.conf configuration.
>>
>>
>> Is it expected? So should I also create a custom DISTRO?
>> Is there a way to extend the DISTRO configuration and only override
>> virtual/kernel value?
>>
>>
>> Any input will be of help to me. Thanks!
>
> Distro overrides are more powerful so yes, this isn't surprising. You
> could disable the mx6 override (which is probably added to
> MACHINEOVERRIDES or DISTROOVERRIDES)?
>
> Something like:
>
> MACHINEOVERRIDES_remove = ":mx6"
>
> might even work.
>

Thanks for inputs!

I'm also building for imx6. Removing override may remove many other
settings that I do not want to change.

Is it possible to extend DISTRO configuration and change
PREFERRED_PROVIDER_virtual/kernel in the  extended configuration?

Regards, PJ

