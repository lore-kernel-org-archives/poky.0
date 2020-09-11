Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web12.704.1599796086821175002
 for <poky@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 20:48:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=C5h52UVb;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id d9so6225332pfd.3
        for <poky@lists.yoctoproject.org>; Thu, 10 Sep 2020 20:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=O8DMWOUenMgtOR360lcJUiZ4yuOX0G+0YNA1ttPAiwY=;
        b=C5h52UVbI15AMFNbX3cL2V3a/fVTilRbODTeU6B011b7MkAedhiwaT5+h5+XrAMQMn
         Kv7nO6rQEtX4Gusi9cn6IumRh2tHDXM9lOT9AVNhiThnJjZBEDu3msud5U05gBwf5cci
         NYA7JJ1CWwSp66lKWjNIhtWU91sNF/2kHZ4L6893rSeljPm2WyHdjmEqY85dsCH7NXUx
         oxzzUMEdtlLjDy8CtOBGlq8JiKD3IsJkD+De1NagEs1ehxdl6agmpkl7cOc7mUSGikR8
         hfgR8an64VhFx/gkM9x46cXC5zHSwSD780hmnS0LX9Zg31ra5EUhziscHUGgjey5sUsJ
         nwCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=O8DMWOUenMgtOR360lcJUiZ4yuOX0G+0YNA1ttPAiwY=;
        b=jBYxxHlp1JNvkhIbPv7YZn0jEgs5sRsvsEYx1qCZSSV21lPNurXlw1ex34I1gcLOsq
         /PRgmi1SQ1Qk7Dcish61EILotnpmigYRQayPo3zyjkwlVntT26kOEilBMwqkI40CcnRe
         vhCnfNo9A7j6u7DMpo31eBy8Bt4Wm8azOPdCnURZt2TkgHhLDR3GZNEBf/LQwbelbDG6
         8pK5PTFDi8cdW83Jc9F8L0CI7TsFS/Cd2m8PjMg8Aec3e3s7Tg3CZ0ONYw+eYZXgaaf1
         BEK00lIx680JhKtkCJNkdO7cjmB46IDE24T4TwoX9HXLHHKN6pext3WHs9KQs4O2UfZR
         0v4Q==
X-Gm-Message-State: AOAM533eLUKiMfuwyKt8UHgZGtiSm+k01B0mGPEs3IE+MYWvFLmiLh6a
	MoCk2dVhwVXAym3IuxQP72aLYfkyNrkr2Q==
X-Google-Smtp-Source: ABdhPJzwXALHPpWQG4lKdS6+vlU6jRuWJpqZCKbd8mxapyhgbFLHHiLoUOMzxlA5HEtX5M9o5xnJrw==
X-Received: by 2002:a63:2982:: with SMTP id p124mr245399pgp.390.1599796086070;
        Thu, 10 Sep 2020 20:48:06 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:d9a:84f1:6cc7:73ee? ([2601:646:9200:4e0:d9a:84f1:6cc7:73ee])
        by smtp.gmail.com with ESMTPSA id bb6sm460784pjb.15.2020.09.10.20.48.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 20:48:05 -0700 (PDT)
Subject: Re: [poky] ABI Compliance Checker
To: Thomas Besemer <thomas.besemer@gmail.com>, poky@lists.yoctoproject.org
References: <CAO7m3AmVswxx-TgxO9k3t1tRDratP39ZMi9YURqk5FJ0Y6FWCw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <81254f64-a5bb-f7de-8429-78c1c69312e8@gmail.com>
Date: Thu, 10 Sep 2020 20:48:04 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAO7m3AmVswxx-TgxO9k3t1tRDratP39ZMi9YURqk5FJ0Y6FWCw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 9/10/20 8:56 AM, Thomas Besemer wrote:
> Does anybody know of a meta-layer or .bb recipe for the
> ABI Compliance Checker to install in SDK, and be
> used as part of the host tools for?:
> 
> https://github.com/lvc/abi-compliance-checker
> 
> Or, can anybody suggest a .bb recipe that I can
> start with as a template to put this in the SDK?  It
> is simply a set of perl scripts that are only used
> on the host, as well as by application code using
> the SDK.
> 

if you did not see it in layer index then perhaps no one wrote a recipe 
for it. it would be good to write a native and nativesdk variants which 
then can be included in sdks

> Thanks,
> tom
> 
> 
> 
