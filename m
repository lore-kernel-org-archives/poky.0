Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
 by mx.groups.io with SMTP id smtpd.web11.881.1604686394288865924
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Nov 2020 10:13:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=T5kNI2m1;
 spf=pass (domain: gmail.com, ip: 209.85.210.195, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f195.google.com with SMTP id e7so2060038pfn.12
        for <poky@lists.yoctoproject.org>; Fri, 06 Nov 2020 10:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ouMGq5GoouIU9xXsXCv9pNNH61SN32hk8pOUXvykd4I=;
        b=T5kNI2m13QTdg9XMUrTU/PsAmy7cBIGYVlocDPS/4jxBw60P68ECl35p351kZKyTat
         H75eR3YpjfeXCvMPK+mteqW4YLJ/FmumJRORXZ+zeU0dEuTNzs25VH1ss0cp/KBSh2Cz
         qW00LIljoETsJvIY2Hf0Z/VcXYxbMBrcOh5MI8Ht2n5EVDZ74p6dOwoJN/osNDxdHAyH
         V2A5r2XMNe/fNmJxURcure2TwRLApZ51SmGcTZx3uk9q+kUnEBQYsjNQvK4nsPqqGvEB
         jkqB8R2BbZf0+gAaW2V0RnwSRALNqsJ3fX5YIvHcYDXKOyB4wWk5UBOHoZ8q1jIKcb8v
         u5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=ouMGq5GoouIU9xXsXCv9pNNH61SN32hk8pOUXvykd4I=;
        b=NvUn9bhiKNLAXqjjVaysh/rl6vLcLPWxwfTznb3f441j/iduCDm+o0YF+zYFkb3H+D
         R0eBX9q8Qckw6o70SKMEGVe8ssfwSRw5yUcjqaHMKoQ5bP9r7/S/gj6VvFMlG2OTuAm3
         DdK4P3ZHt46XEB8LmUBAv18UQrN16EbIlRDPqZHkrLdSILIindN8kdaGNOVBUS82Z/ue
         lyflqn1z9+P2YzJFEoLwp701WvMaJggN0PsZYxRcoPcMYp/b16Q65sOBpE+YrssoBRfp
         ES2ePSU7PWivunLzgHzzgcinbUNqIOWhx/or/+8nETTzZhDx8MGT2t1XoZlJDdiZch+j
         SVUQ==
X-Gm-Message-State: AOAM530EQjG9/OD2PJIqwXAC9dx/VThKi1UAjny/wRoYFxf538x6spS8
	YCqUwWKw//5vZkWn/qt2sMhd1wKY/pPUdQ==
X-Google-Smtp-Source: ABdhPJwwmG09XC63QvMJCnGZQzsZXy9paUB0iSz3lVdSlujibweKfW+GP8veM/gUVHFCypWoukPCuw==
X-Received: by 2002:a62:7f56:0:b029:18b:a70:4f76 with SMTP id a83-20020a627f560000b029018b0a704f76mr2829092pfd.8.1604686392721;
        Fri, 06 Nov 2020 10:13:12 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:40:a945:8c2f:d140? ([2601:646:9200:4e0:40:a945:8c2f:d140])
        by smtp.gmail.com with ESMTPSA id g15sm2426779pgi.89.2020.11.06.10.13.11
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 10:13:11 -0800 (PST)
Subject: Re: [poky] [PATCH] poky-tiny: use size optimization, section removal and lto
To: poky@lists.yoctoproject.org
References: <20201106170336.5216-1-okaya@kernel.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <559e9e34-6e21-a66e-ce69-a72cc2f64935@gmail.com>
Date: Fri, 6 Nov 2020 10:13:10 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201106170336.5216-1-okaya@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Sinan

On 11/6/20 9:03 AM, Sinan Kaya wrote:
> Three changes:
> 
> 1. Compile for size by default
> 2. Use GCC sections flags so that unused sections can be garbage
> collected at link time.
> 3. Enable LTO compiler option.
> 

These are nice changes, thanks for doing it.

> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>   meta-poky/conf/distro/poky-tiny.conf | 32 ++++++++++++++++++++++++++++
>   1 file changed, 32 insertions(+)
> 
> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
> index c6d4b88f83d..eb463403fd1 100644
> --- a/meta-poky/conf/distro/poky-tiny.conf
> +++ b/meta-poky/conf/distro/poky-tiny.conf
> @@ -122,3 +122,35 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
>   
>   # Disable python usage in opkg-utils since it won't build with tiny config
>   PACKAGECONFIG_remove_pn-opkg-utils = "python"
> +
> +# set default for all targets
> +CFLAGS_append_class-target += "-ffunction-sections -fdata-sections"
> +LDFLAGS_append_class-target += "-Wl,--gc-sections -flto"

This should perhaps be added to FULL_OPTIMIZATION, although for lto I 
was thinking that we should have a seprate include file like lto.inc
and call out the exceptions there. So it can be used in non poky-tiny 
builds too. something like

https://git.openembedded.org/openembedded-core-contrib/commit/?h=yoe/mut&id=b96dea04d451312e9e14d839215e3fef784c2c5d

> +
> +# glibc won't compile with flto and sections
> +CFLAGS_remove_pn-glibc += "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-glibc += "-Wl,--gc-sections"
> +LDFLAGS_remove_pn-glibc += "-flto"
> +
> +# libdevmapper won't compile with flto and sections
> +CFLAGS_remove_pn-libdevmapper += "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-libdevmapper += "-Wl,--gc-sections"
> +LDFLAGS_remove_pn-libdevmapper += "-flto"
> +
> +# glibc-initial won't compile with flto and sections
> +LDFLAGS_remove_pn-glibc-initial += "-flto"
> +
> +# lcm2 won't compile with flto
> +LDFLAGS_remove_pn-lvm2 += "-flto"
> +
> +# cairo won't compile with flto and sections
> +CFLAGS_remove_pn-cairo += "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-cairo += "-Wl,--gc-sections"
> +LDFLAGS_remove_pn-cairo += "-flto"
> +
> +# size optimize by default
> +SELECTED_OPTIMIZATION = "-Os"
> +

I think we should be setting FULL_OPTIMIZATION instead.

> +# xcrypt won't compile with -Os
> +SELECTED_OPTIMIZATION_pn-libxcrypt = " -O2"
> +
> 
> 
> 
> 
> 
