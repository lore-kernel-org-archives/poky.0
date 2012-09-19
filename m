Return-Path: <raj.khem@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FF56E002AB
	for <poky@yoctoproject.org>; Tue, 18 Sep 2012 22:32:50 -0700 (PDT)
Received: by wgbdt10 with SMTP id dt10so394270wgb.11
	for <poky@yoctoproject.org>; Tue, 18 Sep 2012 22:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=VyK05+9lf942IlSZrRDL2Kcmv/USjf0cWN/Jpoy87wM=;
	b=O8a0w22ajKR5pGCvSEBZRuPXfggFmDVgMJlr29qIiuv3jhisUfZmgN4L1FpVuHt/c1
	cIdSHu46uMXxoASZqLbIWq7T1MgMYXoHNl0+Sd6QgGyL/ptShvgUdN0voHuCRwlp16rg
	L2lueuBzP5W2As7uKrRU+GC1fFiPftCrna5GBH6kcLR+2NGvUNkgZ9ZIoe2EI6SJIBUg
	RtXnfQy/ks1RRUQ21veNPqJvtqSl1lU0+FGClLXoWWIlNVdhhfOpdbKt+a9PjPQI8CTt
	iUPm4x3FIXoDn1wChVKP6YQBLGIOTsC1lvF2Sy/6cJriIFLn50t1JJOSrFxWNzTkMKvN
	p8hg==
Received: by 10.180.109.129 with SMTP id hs1mr4243945wib.0.1348032769447; Tue,
	18 Sep 2012 22:32:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.42.197 with HTTP; Tue, 18 Sep 2012 22:32:18 -0700 (PDT)
In-Reply-To: <1347964408.13596.111.camel@ted>
References: <1347964408.13596.111.camel@ted>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 18 Sep 2012 22:32:18 -0700
Message-ID: <CAMKF1srAt-TkY_DX5AWZp18o3d4MumLq0MBZH94Yx-VsH+3c4w@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: Silence unsafe reference warnings
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
X-List-Received-Date: Wed, 19 Sep 2012 05:32:50 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 18, 2012 at 3:33 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> These QA warnings undermine the quality impression of OE-Core. They are
> useful in some specific circumstances but until the system has been audited
> and these warnings are reduced, they shouldn't be showing by default.
>
> Therefore disable them for now.
>

You have my Ack

> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index 6897ac4..ecce9f5 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -93,6 +93,6 @@ BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
>  #
>  OELAYOUT_ABI = "8"
>
> -WARN_QA = "unsafe-references-in-binaries unsafe-references-in-scripts"
> +#WARN_QA = "unsafe-references-in-binaries unsafe-references-in-scripts"
>  ERROR_QA = "dev-so debug-deps dev-deps debug-files arch la2 pkgconfig la perms useless-rpaths rpaths staticdev ldflags"
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

