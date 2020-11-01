Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.18787.1604254055186075021
 for <poky@lists.yoctoproject.org>;
 Sun, 01 Nov 2020 10:07:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EgbrIrzW;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6EB2F38C14CC
	for <poky@yoctoproject.org>; Sun,  1 Nov 2020 10:07:34 -0800 (PST)
Received: by mail-pf1-f178.google.com with SMTP id x13so9037898pfa.9
        for <poky@yoctoproject.org>; Sun, 01 Nov 2020 10:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8OjHwVsvg8hXvPll+b1+ql6LNYms8j9bIR7uuzH2VmU=;
        b=EgbrIrzWkkT0iAT2T7lFUswpWW952Z6g7PjySt6rObzvFRjUF/mvCE36tREiObhUf0
         Jvp9QCGWEotsgk5mgcqmJFftOFVizS6fCTN5H502cTT9i+Z+z/oHSFcGw/BrVOQrvX+J
         /GJ+uw+WIGQxbQpaIo5+4C6IOR8ihHrFM7swcL4FNH++oghI3U4uL4Nx6lMZR0k4XuWJ
         uTFk9wuhAq9zHjtendt042fKkPhGtTXsx2NuxvgblFoNL9+h8jauO6j9NgoitLhqLRQI
         DZrsk8/bHdJyG/9YVRVDDKg1GNGRkPXRRM1/BX6/0VCaJosr19Pp3wW6ThpkTs1ijswH
         uD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=8OjHwVsvg8hXvPll+b1+ql6LNYms8j9bIR7uuzH2VmU=;
        b=IrmguQd7ULRVuNcyzlt/CD7Pgmd4lGupmepwzaMhQK5hjhuQ3ntor5qaAKPNHSfrdu
         sMzmylpGLhjEJULeU/PCH4yq1YY5FzUgxsN1gmdzned8j1m5z8ABxzRrQndjfwCYwY0i
         aSKbjKv8IScFPxghTE0Oh0y9zwzaKqh4el51bw/rtO0j4BR42y/VcBy8gsNq19lnc7tR
         E6qwrIS+a3pyQ8nOvSSgLQZVsyq0y+GU5RMSSRwiowV3lXXw3ComXuw9e/YDFmUCUwiU
         +X6HJvm0/KUblQNxUHBOo/q7JSHTAtq25h7oDWlbaqD7zVYSmmcZWOj2EM57qd123a31
         bFhw==
X-Gm-Message-State: AOAM530rQrZPlyICPU/Y3udlu1mCZDqlkd6jkpTeKTHAfHT41wu5CI7R
	FxB57I2aC5uBDCmF86NjGt4okrum2rx50g==
X-Google-Smtp-Source: ABdhPJwB/WxcDl9XAWMThO49m5Zsudy1N8Dd89vAsIZhpYm4iL3TBbgDXh7z3HKlCViabwEjXOpRCQ==
X-Received: by 2002:a63:5c5e:: with SMTP id n30mr10395407pgm.54.1604254053420;
        Sun, 01 Nov 2020 10:07:33 -0800 (PST)
Received: from ?IPv6:2601:646:9200:4e0:ac50:3bbc:9608:2fe7? ([2601:646:9200:4e0:ac50:3bbc:9608:2fe7])
        by smtp.gmail.com with ESMTPSA id e3sm9377144pjt.33.2020.11.01.10.07.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Nov 2020 10:07:32 -0800 (PST)
Subject: Re: [poky] [PATCH] mklibs: drop support for
To: Alexander Kanavin <alex.kanavin@gmail.com>, poky@yoctoproject.org
References: <20201101152249.20472-1-alex.kanavin@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <52780d53-15ca-0e10-c8b0-69fec4f0bea1@gmail.com>
Date: Sun, 1 Nov 2020 10:07:30 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201101152249.20472-1-alex.kanavin@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 11/1/20 7:22 AM, Alexander Kanavin wrote:
> This is not enabled or tested by default, and has never been
> ported to python 3 upstream[1], which means it doesn't work at all
> with plain poky. If you need it, please put it in a separate layer
> and/or modernize to work with py3.
> 
> https://salsa.debian.org/installer-team/mklibs/-/blob/master/src/mklibs
> 

how about trying this patch to make it work with python3? Since we use 
mklibs as a feature highlight of tools that yocto can provide users, its 
perhaps good to keep it working.

https://uclibc.org/~kraj/0001-mklib-Port-to-use-python3.patch


> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>   meta-poky/conf/local.conf.sample          | 5 +----
>   meta-poky/conf/local.conf.sample.extended | 9 ---------
>   2 files changed, 1 insertion(+), 13 deletions(-)
> 
> diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
> index 68e71b930b..e0ba9a35ef 100644
> --- a/meta-poky/conf/local.conf.sample
> +++ b/meta-poky/conf/local.conf.sample
> @@ -148,11 +148,8 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
>   # enable extra features. Some available options which can be included in this variable
>   # are:
>   #   - 'buildstats' collect build statistics
> -#   - 'image-mklibs' to reduce shared library files size for an image
>   #   - 'image-prelink' in order to prelink the filesystem image
> -# NOTE: if listing mklibs & prelink both, then make sure mklibs is before prelink
> -# NOTE: mklibs also needs to be explicitly enabled for a given image, see local.conf.extended
> -USER_CLASSES ?= "buildstats image-mklibs image-prelink"
> +USER_CLASSES ?= "buildstats image-prelink"
>   
>   #
>   # Runtime testing of images
> diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
> index 62415a43ed..024bf14af5 100644
> --- a/meta-poky/conf/local.conf.sample.extended
> +++ b/meta-poky/conf/local.conf.sample.extended
> @@ -115,15 +115,6 @@ DISTRO_FEATURES_remove = "x11"
>   #
>   # TCMODE ?= "external-sourcery"
>   
> -# mklibs library size optimization is more useful to smaller images,
> -# and less useful for bigger images. Also mklibs library optimization
> -# can break the ABI compatibility, so should not be applied to the
> -# images which are to be extended or upgraded later.
> -#This enabled mklibs library size optimization just for the specified image.
> -#MKLIBS_OPTIMIZED_IMAGES ?= "core-image-minimal"
> -#This enable mklibs library size optimization will be for all the images.
> -#MKLIBS_OPTIMIZED_IMAGES ?= "all"
> -
>   # This value is currently used by pseudo to determine if the recipe should
>   # build both the 32-bit and 64-bit wrapper libraries on a 64-bit build system.
>   #
> 
> 
> 
> 
> 
