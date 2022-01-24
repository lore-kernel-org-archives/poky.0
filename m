Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web12.70.1643045929854279372
 for <poky@lists.yoctoproject.org>;
 Mon, 24 Jan 2022 09:38:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AZ5Of/da;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id t32so15994689pgm.7
        for <poky@lists.yoctoproject.org>; Mon, 24 Jan 2022 09:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=EWkfZyWp/XlWMPuUlqBXDhOItVBnwy5Y07ABLPrHkFo=;
        b=AZ5Of/da534FzO1XX83EhDSFKZ+gqAk+s7PjB9zTjFHMRorj/frR3MQHkVJE0RGXQv
         nRocfFloLB0+5+kFnzOr8/H6firEL9wKkWcOAlM+4EZEgs5rCstTNxb8CWl51qHMtJq/
         7xXkbQifvX8EGzIfg9+o6s9oLwfCOmtz1f4IysILOZE8z3yTciNLO4pXcV1HBUfNo/Nu
         X9UYw0eHzLa1dA+5/Hw2tk13YEErM5yE74SgTQzBUe1q+qmDSsU1SpxBo/7YBoC8aPOW
         Lw5vz8ex/NeSkPCvawEiScvl9R7ZUHWQrFGxCbLOKOglE2ozXk2Z97JIHZkJiPrx55g6
         PHzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=EWkfZyWp/XlWMPuUlqBXDhOItVBnwy5Y07ABLPrHkFo=;
        b=BI6Yv1eC/Doql3wG6m30t7zjhOzXmK23vGKPjP0KSjE4Naz2XNE244KTWq7z2v1x2N
         gNOJGeP1e0JtU+bsVLBVkrEMxdi5ucfeHzk5xlY5LcIVPa5Xq/wcrzlZQegn7Hryjpdv
         a4bLFXdnyDJ3S8Y2Or5kXKs/VaKvq04pHsIQBoNsM2VlEVn6wSQJazwLJ+TS+DJPnHx2
         cb/+5qqhtpi2O0KHGWOQrPe3kWaqWOaZMiNdzyPD0/AHWbu50wGPTYqmj1VI46FfAEWb
         99TiRv7EcxTKKOZlfMDs1vW+bmWiNCQkjnL43ooLKojRobCt7meljVEJn9YX03TBaHaJ
         8i6g==
X-Gm-Message-State: AOAM533g27GfVGjg0CzqwfziXvBXmbFzlrFHAJhuBohArsuxkDgtiMoi
	NgUtLXWz0erRqXNMMjT6Lmk=
X-Google-Smtp-Source: ABdhPJzYhjUr4btdFWyP6rN4mwPMOP83sHWxmFSXL8s4q7VI/VhLTjjZ4o39chNd7tKvUXrIODezQQ==
X-Received: by 2002:a05:6a00:168b:b0:4a8:d88:9cd with SMTP id k11-20020a056a00168b00b004a80d8809cdmr14886310pfc.11.1643045929142;
        Mon, 24 Jan 2022 09:38:49 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:a59d:646:7c4d:1d03? ([2601:646:9200:a0f0:a59d:646:7c4d:1d03])
        by smtp.gmail.com with ESMTPSA id p42sm15920073pfw.71.2022.01.24.09.38.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jan 2022 09:38:48 -0800 (PST)
Message-ID: <3b9952fe-1469-08de-a279-c57fdea2ec45@gmail.com>
Date: Mon, 24 Jan 2022 09:38:47 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.5.0
Subject: Re: [poky] [PATCH 1/1] busybox: Add shell arithmetic to work with poky-tiny
To: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>,
 poky@lists.yoctoproject.org
References: <20220122223317.1626304-1-alhe@linux.microsoft.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <20220122223317.1626304-1-alhe@linux.microsoft.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/22/22 2:33 PM, Alejandro Hernandez Samaniego wrote:
> Fix error when trying to boot core-image-tiny-initramfs:
> 
> /init: line 144: syntax error: support for $((arith)) is disabled
> Kernel panic - not syncing: Attempted to kill init!
> 
> [YOCTO #14702]
> 
> Signed-off-by: Alejandro Enedino Hernandez Samaniego <alhe@linux.microsoft.com>
> ---
>   meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> index b0fb88a0c1..6e9faa4119 100644
> --- a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> +++ b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> @@ -1160,7 +1160,7 @@ CONFIG_CTTYHACK=y
>   #
>   # Options common to all shells
>   #
> -# CONFIG_FEATURE_SH_MATH is not set
> +CONFIG_FEATURE_SH_MATH=y


how much does it add to binary size ?

>   # CONFIG_FEATURE_SH_MATH_64 is not set
>   # CONFIG_FEATURE_SH_MATH_BASE is not set
>   CONFIG_FEATURE_SH_EXTRA_QUIET=y
> 
> 
> 
> 
> 
