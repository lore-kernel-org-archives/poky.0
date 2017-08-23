Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38BB5E00CAB; Wed, 23 Aug 2017 13:41:51 -0700 (PDT)
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
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 831B0E00C01
	for <poky@yoctoproject.org>; Wed, 23 Aug 2017 13:41:50 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id p14so713220pgd.1
	for <poky@yoctoproject.org>; Wed, 23 Aug 2017 13:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZchmqR3Pi/1q/vIOFivUVstP0rPIukyLkAXNHYKE/aI=;
	b=CfKAd3ZzfMGlL9p6HGBiPstJVjTsptL2gz2KaYuguyntAzVIqW2MvrwEbs6BywnbW5
	DfPIxOITOlQMRhHI9yiUHA/zVfZHhYllCYOspdxZWGSvTf3NxlRhRJ8cwfEtJwYYPUjs
	YHNc1grrHVwDnVVEGfZVUU/AQhasd6mCbDiqiiS8FuerUp9xtcb56TsIQtdtQJLAkda5
	aAUPIjp1YAJlm+4a0yL+QADMcjbj6tNmTn0ikOq/dTh73+oJQzTaps4EcH5I30Gt9/ND
	VGiDLGb8Y7u4aJgT7l4UNEwl8Bwzsi3+9ZHgLPu17QXUeiW/b9wgTq3LNMb8rtx45Gjo
	bGVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZchmqR3Pi/1q/vIOFivUVstP0rPIukyLkAXNHYKE/aI=;
	b=ZWLyefYV/MPVJzmfYyU8p700pDZJBmbKSDiP9IGDiI5VQDuSnuTzCtg9pLtRALCaFc
	2SBIJQk6HUVNHN42IicVgi0Dy1y/EfNHXLVbxQYfa4z9pVeC9ls5jZCTQ10vBieP7vAV
	FiqJFyBoPnIC9ovHkQwEoNzLHtUzdiWjwY/sP8oHwSOvsBPGt4RCLgvlLmnv6LgEpgZB
	SfD/MrPLBq+4MOftj6C6gGOZSM3NlHYKHvZjJt2mxZVJDGrWBnc0GzMR6cgRwpobHQ6d
	+GEI/GPehByVmiGWCo8BsUlJscI3J8n1UUZ3+mkS4Jm+ZaL23lCBxIDddJOBasmYS+Or
	XSuw==
X-Gm-Message-State: AHYfb5jawWphpK7h9oy/S2P/q268xsz4IDfSnq3wbG1PsYEA/DaHP3Eg
	O0pLlVqcEhKfpCrp5D8ehLksM6I73A==
X-Received: by 10.99.121.70 with SMTP id u67mr2962275pgc.123.1503520909568;
	Wed, 23 Aug 2017 13:41:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Wed, 23 Aug 2017 13:41:19 -0700 (PDT)
In-Reply-To: <c61c19a50d8740f19f3b95ecc9c7d8bf@XBOX02.axis.com>
References: <c61c19a50d8740f19f3b95ecc9c7d8bf@XBOX02.axis.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 23 Aug 2017 13:41:19 -0700
Message-ID: <CAMKF1sqGa20Et235hBhHhS4+Ns0vAvo28yoRMAc2mbOkoY-_Dw@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Why is DISTRO_CODENAME still pyro?
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
X-List-Received-Date: Wed, 23 Aug 2017 20:41:51 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 23, 2017 at 1:31 PM, Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
> Is there any particular reason DISTRO_CODENAME still says "pyro"
> on master of meta-poky/conf/distro/poky.conf? Looking back through
> the history of poky.conf, it has always been updated to "master"
> immediately after each release before. Similarly for DISTRO_VERSION.
>

oversight I believe. Send a patch

> //Peter
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

