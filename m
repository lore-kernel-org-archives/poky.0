Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B43AAE014B4
	for <poky@yoctoproject.org>; Wed, 29 May 2013 08:06:20 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id q13so4045858vbe.22
	for <poky@yoctoproject.org>; Wed, 29 May 2013 08:06:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=GzPKMAydVbKPeTyKqULATrSbo+YjDFGFmwNVyVljCL0=;
	b=c5oYOxLCFeIPMCbhO5oJn7uVVWrALxq/lrp1YzT8/t/nolKSjQXzBrqwAfYfELEnkn
	85uF2vH6z/pPDJNE99zxMGCHLYZ00zcP3AUxMrA7KJz+2/ZlmNtfb6C56zRZvhH78DjP
	sVJQsr2e9gy32hs74LVF7fLAQOZajLkMX0UzNsoHlI+vPG9/HINhMxpngNuOlmcmiTv6
	O36H6UxrB6JghQSAUpKvqZXYOIqGNfSDVev7MHuP450o1mDdTHPechmnYBYhQ6yWEeqq
	iVfjXYQ0xvE0I45fRGWkOFd0zb4luI2lR427k3EMd+6c16wR+86AQx4Z1zsehEx93S+X
	MF3A==
X-Received: by 10.52.37.196 with SMTP id a4mr1556849vdk.82.1369839979962; Wed,
	29 May 2013 08:06:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Wed, 29 May 2013 08:05:59 -0700 (PDT)
In-Reply-To: <1369839672-11420-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1369839672-11420-1-git-send-email-paul.eggleton@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 May 2013 16:05:59 +0100
Message-ID: <CAJTo0LbkeENjAtAwD9=WpUUBEWmZzRGCTxEGt1jtnEJ9GoCLHA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQl0ZjZMK2q6mY/ZqOB+S2FQKqyzkmOerzKzOxcTrSQJAwvNvLJCbgERBZdHwYBwrjOFO8y3
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] xserver-xf86-config: re-enable AutoAddDevices for beagleboard
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
X-List-Received-Date: Wed, 29 May 2013 15:06:20 -0000
Content-Type: text/plain; charset=UTF-8

On 29 May 2013 16:01, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> This was added quite a long time ago because of poor interactions
> between HAL and the X server when it came to enabling input devices.
> HAL is long gone and I think it's safe to say we don't need to disable
> this any longer, especially as it gets in the way of being able to plug
> in the keyboard/mouse after boot.
>
> (This has already effectively been removed for the other BSPs in
> meta-yocto-bsp).
>
> Fixes [YOCTO #1823].
>
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  .../xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf               | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf
> index 0335e6a..264f3c9 100644
> --- a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf
> +++ b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf
> @@ -30,5 +30,4 @@ EndSection
>
>  Section "ServerFlags"
>         Option          "DontZap"  "0"
> -        Option         "AutoAddDevices" "False"
>  EndSection

Signed-off-by: Ross Burton <ross.burton@intel.com>

Ross

