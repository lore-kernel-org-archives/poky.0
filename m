Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
 by mx.groups.io with SMTP id smtpd.web12.19549.1604961273731605471
 for <poky@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 14:34:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EN3uNf1q;
 spf=pass (domain: gmail.com, ip: 209.85.214.196, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f196.google.com with SMTP id b12so5448520plr.4
        for <poky@lists.yoctoproject.org>; Mon, 09 Nov 2020 14:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bnn6FXZWycbsVE6uedr8kQhD/+uMMK3nlzukRZDrKCE=;
        b=EN3uNf1qV8SqfEKHzUj8owBjdiyvPozWg3LcjMebWxa1yWCK9flN+FXT6D9pIrxPRP
         17jKnDyqNipAxvIDQWaFPFsy4yJkBO889sHtsN0Saj7y8RulVA0k62WyCjAwx3kRjAf1
         yKeEBvrWjIyctUlb0g0DATEcVLHZAXU339iI++Qw2Q/qLkQOWiJ03PUlbYvz3/3GRo9z
         xQ2wysy+AKavNCkBGa0DG9OAGq78r6m1Ekadf+KNus2WLyZOy5pPZy+mHYdunGIA6q8q
         UkIIwod0ga+yLwbP7UTtYf1qxciiQu847VBwU/gcUOaVgxTG8kNSlZbYtgzC9EoZWAye
         RJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=bnn6FXZWycbsVE6uedr8kQhD/+uMMK3nlzukRZDrKCE=;
        b=WtcYl91iFGq2oxk55fVI4cq62OPo5bAKAgTSLFx9TmUrSvrjO++PWcFBcS2s9V7w18
         E0tQU0fnKoL/U5nXLG92n1iiR87r0kExSKMf5O1/Qy32hUDEikIr+PZZDHp3yxraPIIU
         OIkHv4ELXzvpCWRa0nd86mWTqS6cCei5yjnYxyoeId+y7CLmbn76TiEuL3eN1wvHVazp
         WeFUMfpp2ptSoXFu3uEgfOSj9dCM6iLgGdQzNYflE/v5fBi1si41MkmyFqX9BYaHN7ZX
         QKuRBGw9+zZhZ1j/I6z3s9jgYoaOgG26uYb/pIECv5eBWz/QIzUMs5l+k166GRvV+fxB
         hW4A==
X-Gm-Message-State: AOAM530YdPBZ8KTuu7WEZA8mnCozOENp1LdDn90rAb2zBEMSHWTqgL6m
	J44Lb7PCjPBU8Lrha1djTQWK8nkj8XRSFQ==
X-Google-Smtp-Source: ABdhPJxCA9m+UPaakZQWh4hmHqk/FEt2qXGyyhSoZsODhpUIn4O0e6TkGQ6nRwsIBKx/Rz7rR37m7A==
X-Received: by 2002:a17:902:8d8e:b029:d3:df0c:60a0 with SMTP id v14-20020a1709028d8eb02900d3df0c60a0mr13861646plo.35.1604961273006;
        Mon, 09 Nov 2020 14:34:33 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:bc6a:f39b:b2f7:2239? ([2601:646:9200:4e0:bc6a:f39b:b2f7:2239])
        by smtp.gmail.com with ESMTPSA id a12sm479831pjh.48.2020.11.09.14.34.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 14:34:32 -0800 (PST)
Subject: Re: [poky] [PATCH v2] poky-tiny: enable section removal
To: Sinan Kaya <okaya@kernel.org>, poky@lists.yoctoproject.org
References: <20201109222535.60899-1-okaya@kernel.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <a53ec5b0-fba5-e947-6eae-ad8dadebff99@gmail.com>
Date: Mon, 9 Nov 2020 14:34:30 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <20201109222535.60899-1-okaya@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 11/9/20 2:25 PM, Sinan Kaya wrote:
> Use GCC sections flags so that unused sections can be garbage
> collected at link time.
> 
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>   meta-poky/conf/distro/poky-tiny.conf | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
> 
> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
> index c6d4b88f83d..19e48851519 100644
> --- a/meta-poky/conf/distro/poky-tiny.conf
> +++ b/meta-poky/conf/distro/poky-tiny.conf
> @@ -122,3 +122,25 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
>   
>   # Disable python usage in opkg-utils since it won't build with tiny config
>   PACKAGECONFIG_remove_pn-opkg-utils = "python"
> +
> +# set default for all targets
> +CFLAGS_append += "-ffunction-sections -fdata-sections"
> +LDFLAGS_append += "-Wl,--gc-sections"

lets not use += here with _append, and add a leading whitespace after 
first quote

> +
> +# gc-sections requires either an entry or an undefined symbol
> +CFLAGS_remove_pn-glibc += "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-glibc += "-Wl,--gc-sections"

remove += here just = is enough with _remove

> +
> +# perl won't cross compile with sections
> +CFLAGS_remove_pn-perl += "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-perl += "-Wl,--gc-sections"
> +

same above

> +# libdevmapper won't compile with sections
> +# CFLAGS_remove_pn-libdevmapper += "-ffunction-sections -fdata-sections"
> +# LDFLAGS_remove_pn-libdevmapper += "-Wl,--gc-sections"

same here

> +
> +# Unknown float word ordering. You need to manually preset
> +CFLAGS_remove_pn-cairo += "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-cairo += "-Wl,--gc-sections"

same here

> +
> +
> 
> 
> 
> 
> 
