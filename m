Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E352E00C09; Thu, 10 Aug 2017 07:56:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.42 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f42.google.com (mail-pg0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAD89E00B3D
	for <poky@yoctoproject.org>; Thu, 10 Aug 2017 07:56:12 -0700 (PDT)
Received: by mail-pg0-f42.google.com with SMTP id u185so3995337pgb.1
	for <poky@yoctoproject.org>; Thu, 10 Aug 2017 07:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CefU0wC+bLmcmA5MxY4Q4svFo15ySZkEYPlv3c2DVPs=;
	b=XrKcHWpVknwOD5/piPSZq0bcfWjdxMGv0nozFfxDhw7Nzin4K3EWWU9DFMW6En1FX/
	J5Vk6Kgf+uqGhIRNddVPzQ0ZBNmGNnSAfSqw8ZbH1zygMrD3y1nvdcn5Y86TjonKXalO
	93ECF2BATH5yKQffNwBmeKIN7sJwnIwCtNcOJPU2jnlKiOra6Z3lgSac+SPktvavLud5
	oPZvpHfnS9+1mBYYFLudFmRnft6/nYjPnTz5pUkAP803LsAlM+akY19eh6NRXFnP8cLO
	o9BWccyMYvA2PQKNQnS0kwyqKlhLfzlOTBVpxAfo5XESAfwHl9EZJRiqYqYuwiOBheWq
	/rgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CefU0wC+bLmcmA5MxY4Q4svFo15ySZkEYPlv3c2DVPs=;
	b=GjGA0EZJSQnkeA5uLqSSI4goP8MU/jT6lnVd132YzxQ/lWJVQVFwuhfcLxH6uHOXBW
	GWR0N4uMb2c4sz1BW6yhv+DoWM5NGgV11x0/i4bk92XmZxuHTHsytBA6ZRANOfBzWYeB
	UFMNayUhX5aADnQmGCfp+7eBG0ng8MHZrSafHBquULMISFU2pcP5G77IDHe+I0zP635b
	Z2zi4KEZvk3lZh7vSmSgfZ02uJERybBMOdUqvzdBFHK10btVUJGOhZKZUpJPC4XxG5rZ
	kMVrbsqXvNq4GUSUZeBd3FpF1bBRlukkwg2+XejLrzKvejBwcphwKPfXiFvPOoG3y3WJ
	KlVg==
X-Gm-Message-State: AHYfb5g0MIkg2JHS5uxMABur7tzwhY2//KegQbTaHxzyl0PdAwCzKH7S
	2IjM6zWMNqMZCj5uHu5p2CDAHONGFg==
X-Received: by 10.84.149.139 with SMTP id m11mr13431642pla.376.1502376972360; 
	Thu, 10 Aug 2017 07:56:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Thu, 10 Aug 2017 07:55:41 -0700 (PDT)
In-Reply-To: <3183f139833546c3b9d35084f7259243@SGPMBX1023.APAC.bosch.com>
References: <3183f139833546c3b9d35084f7259243@SGPMBX1023.APAC.bosch.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 Aug 2017 07:55:41 -0700
Message-ID: <CAMKF1soGChuZOybLCi039fPbSLYzBpkY1p+QX1oBgKB9oRL1tw@mail.gmail.com>
To: "Anurag Raghavan (RBEI/ETW1)" <Raghavan.Anurag@in.bosch.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: How do you use a latest package version in a Yocto (older version) ?
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
X-List-Received-Date: Thu, 10 Aug 2017 14:56:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 9, 2017 at 9:04 PM, Anurag Raghavan (RBEI/ETW1)
<Raghavan.Anurag@in.bosch.com> wrote:
> I am using the following Yocto version,
>
>
>
> DISTRO = "poky"
>
> DISTRO_NAME = "Poky 8.0.1 (Yocto Project 1.3.1 Reference Distro)"
>
> DISTRO_VERSION = "1.3.1"
>
> SDK_VENDOR = "-pokysdk"
>
>
>
> I want to upgrade the following packages.
>
>
>
> 1.     Currently using package apt_0.7.14 and nee to upgrade to the latest
> version (say apt_1.2.12).
>

just copying might not be sufficient. Since over release metadata
changes are introduced too
which may not be compatible with older releases or perform
differently, so its better to look at
the recipe as a new write, you can copy the newer version but keep the
older bb syntax.

> 2.     Currently using package eglibc-2.16 and nee to upgrade to the latest
> version. I think latest Yocto versions using glibc instead of eglibc.

this is a trickier change,. since it involves lot of other changes in
metadata due to rename
I would suggest to upgrade to newer yocto version which meets the
fundamental package requirements
for your project and since metadata will be better tested, you dont
have to spin extra efforts
to do these backports.

>
>
>
> I tried the following steps,
>
>
>
> 1.     Copied the apt recipes
> Yocto-2.3\poky-pyro-17.0.0\meta\recipes-devtools/apt to my work space.
>
> 2.     Initiated bitbake.
>
> 3.     But I am getting some do_configure error.
>
>
>
> Log attached
>
>
>
> It will be much appreciated, if anyone can help to solve this issue.
>
>
>
>
>
>
>
> Best regards,
>
> Raghavan Anurag
> RBEI/ETW1
>
> Tel. +91 422 667-4001 | Mobil 9986968950
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

