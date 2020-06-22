Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web12.997.1592843945570931489
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Jun 2020 09:39:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=C3P4EJjV;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id u128so8373741pgu.13
        for <poky@lists.yoctoproject.org>; Mon, 22 Jun 2020 09:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CAjt7q7h/8SKj2jPVFHZsB+KLMg7qtJUkr5NM0jwsuQ=;
        b=C3P4EJjV8jKVKJNjbte2VbTlQnPY5B2qPPBghc4GjHi8SW9ATrTM7TK9HY8NzcU/0g
         I8bdqeqdOUG3L1yyw4SQPm3eVt1JW5ryK/vwEJkFT+EBmDn5hGTrq3X1GFtl4ROCEfpD
         vz4dYwFox0LK8IhNxQJAFL3USWVr8aPJLu9tfO6MiGErjX4QMYf/AKCRS/kVUbupiSYt
         2Gx8Jc10606gsn2zfs6dkDzQWnkvj9L/UdP1x4BmWhpum4rkQsLE7BHrU8D/abuMM4BG
         HDLi6L18WCAHAgoKE1mij8+JwfDCzEysmVUU2pgcHs5TVxf7E/keGvo8dtdqVBDgKjIP
         1fXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CAjt7q7h/8SKj2jPVFHZsB+KLMg7qtJUkr5NM0jwsuQ=;
        b=PWudGVbk2cEWWGn+tggJIPaVlz0f+P9xwCTuyRnW/OmnmMBz6y+QFTI993YUSW4Azj
         Nte28Q7wvFdBkiaybUm3vgcaqEYKyV9R9rEDGHJlUuzM5CAsYVG8wXVuWN3P6XVstIYa
         PJQao8NVLyym1M2sUhvxhz39orn7GSwmii7VF+be10yRYsh+/3xXy3qcf2IRrSYKLskA
         lUVPvEEtnTL9ddx6GBqUkY7sXTvl5HyPkFTqtsL+9H+DMHBaZ1XBchUUfPGwYX1RoucK
         mDo/Ogp79n3SKiFAWGRdzyLTX1SNTtRZKUi5Fh+8ETR+vh/d/uHguk0fckHB5o6Y+60i
         fISw==
X-Gm-Message-State: AOAM533gxxt8d0dMVmrZIpHbe3qtSn66V0Neehj4DFmKXSW14TJIUglv
	RSvrIMOEObPVdGiLmnEPEfiNmD860z0=
X-Google-Smtp-Source: ABdhPJyr7NDnK1hmbOVlm+5R3tYisGQ13u0WE877ATUy2MAZNCeKwEeWrvuPNVIsRjUMNW8FI0Tpyg==
X-Received: by 2002:a63:3587:: with SMTP id c129mr14059440pga.322.1592843944532;
        Mon, 22 Jun 2020 09:39:04 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::dedc? ([2601:646:9200:4e0::dedc])
        by smtp.gmail.com with ESMTPSA id y18sm13852023pfn.177.2020.06.22.09.39.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 09:39:04 -0700 (PDT)
Subject: Re: [poky] fatal error: omp.h: No such file or directory #yocto
To: Rahul Chauhan <rahulchauhankitps@gmail.com>, poky@lists.yoctoproject.org
References: <fU0J.1592630053844053370.0npg@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
Message-ID: <f0d46cb6-0659-d648-bdfc-5ccb2da347a6@gmail.com>
Date: Mon, 22 Jun 2020 09:39:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <fU0J.1592630053844053370.0npg@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 6/19/20 10:14 PM, Rahul Chauhan wrote:
> Hi community Member,
> 
> I am trying to build core-image-minimal-xfce with below configuration.
> Poky (master branch)
> meta-openembedde (master branch)
> BB_VERSION           = "1.47.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal"
> TARGET_SYS           = "aarch64-poky-linux"
> DISTRO               = "poky"
> DISTRO_VERSION       = "3.1+snapshot-20200620"
> TUNE_FEATURES        = "aarch64"
> 
> kindly help me out on this . do i missed any thing here
> 
> 
> Errror:
> 4.15.1-r0/recipe-sysroot-native/usr/include -O2 -pipe -c
> ../../git/build/parseSpec.c  -fPIC -DPIC -o .libs/parseSpec.o
> | ../../git/build/parseSpec.c:10:10: fatal error: omp.h: No such file or
> directory
> |    10 | #include <omp.h>
> |       |          ^~~~~~~


which distro and version are you on ? Some distros package libomp
separately and is not installed by default. So you might be able to get
through by installing the required dependency on your build host.

> | compilation terminated.
> | make[2]: *** [Makefile:642: parseSpec.lo] Error 1
> | make[2]: *** Waiting for unfinished jobs....
> | make[2]: Leaving directory
> '/opt/Projects/Amlogic-project/amlogic-g1-master/tmp/work/x86_64-linux/rpm-native/1_4.15.1-r0/build/build'
> | make[1]: *** [Makefile:1359: all-recursive] Error 1
> | make[1]: Leaving directory
> '/opt/Projects/Amlogic-project/amlogic-g1-master/tmp/work/x86_64-linux/rpm-native/1_4.15.1-r0/build'
> | make: *** [Makefile:788: all] Error 2
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task
> (virtual:native:/opt/Projects/Amlogic-project/Project-layers/poky/meta/recipes-devtools/rpm/rpm_4.15.1.bb:do_compile)
> failed with exit code '1'
> 
> 
> 
