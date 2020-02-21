Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
 by mx.groups.io with SMTP id smtpd.web10.162.1582325484566333631
 for <poky@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 14:51:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VN0sKS+H;
 spf=pass (domain: gmail.com, ip: 209.85.166.169, mailfrom: raj.khem@gmail.com)
Received: by mail-il1-f169.google.com with SMTP id x2so2951654ila.9
        for <poky@lists.yoctoproject.org>; Fri, 21 Feb 2020 14:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=Z9IX9cORvhV+1cZnOS0AYZ3k03jONDmLxaFDFAsandA=;
        b=VN0sKS+Hr3wN9DM8Wo2yMVk+SnjvT8e/2jz1o6LYZbPhLK49+eZWl2gY6HWz0tk+x3
         W+eox78pZPMIa2LCx4AhTwA9J0TBQW8xhsOrHRELZN8p1c5PlATu213oPNwCECOUE/fU
         mxumbCTxtdcRqBEyGSr5lcAprrT25614c26ZdDFgExf7Y+1D1nTjHg/XlfNyM3ujkHpB
         soDfM5Ht9G1mJP9Jk/fmeF6k75IYNGmvvORB9IL+73me+tWW3fHgi5tmCrtton+uoT4F
         lgfKXoznjp7CqOLbZIDXGaeed+dU/NEY4IUVaTV/a+o/Nk/EOEKRXG3lHJ32dxlLx0MH
         xm6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Z9IX9cORvhV+1cZnOS0AYZ3k03jONDmLxaFDFAsandA=;
        b=dKPqG5ltYin9rBhncuaru9O8ia9rh7YXGjomaIKkiISBVvmtR9S35mZTeC6JTHARdp
         pbf5BLF165ZIXtnA78YU4QULRHKAd9PpmChHQl7+0nmwIxWF4OqZicuIq0PsRcm+p1fX
         tN3UxP7X1jbOeH7XwfE0+dhswZz8sT1Wn7GgWf6UThMzKcDGWlnlhxPwbuadl9otKLxD
         /kQvxA0wkbjuo6XCdGusPC5VUdTPTh7LtcRk8Wl+/MFDOXgRL4nFN7qSlFWK9guGyrbh
         VIank6n1ha3SYnkCoIsn2Xz2h6WpM95naTlgoWBf97y6lDO7lHb7teThtxaTR1gXpthR
         z63A==
X-Gm-Message-State: APjAAAUgICF5KMyGNZGkYG4wtfGpFt9QOKqcRFGKIXNwujR0cJaTHdW3
	zGLuAB0LBTCM3F9fWHzCngIA6Bfwwew=
X-Google-Smtp-Source: APXvYqw6+wsz78D72tLTQcx1Q5opa9/jLl9ckQUleTzgAQ2Vhe8zxvCcI8led2TGfg5YsTh9Pb/Waw==
X-Received: by 2002:a92:58d7:: with SMTP id z84mr38253993ilf.179.1582325483380;
        Fri, 21 Feb 2020 14:51:23 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:949d:f94a:fa18:f7b4? ([2601:646:9200:4e0:949d:f94a:fa18:f7b4])
        by smtp.gmail.com with ESMTPSA id w5sm1351498ila.41.2020.02.21.14.51.22
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2020 14:51:22 -0800 (PST)
Subject: Re: [poky] zeus build ubuntu 18.04
To: poky@lists.yoctoproject.org
References: <zYsX.1582324514042415680.U6E7@lists.yoctoproject.org>
 <f590f3b1920170f0aae2f4f3047430799cd34faf.camel@linuxfoundation.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <08b1015e-d4ce-cf04-1360-a2a33cbdad46@gmail.com>
Date: Fri, 21 Feb 2020 14:51:21 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <f590f3b1920170f0aae2f4f3047430799cd34faf.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 2/21/20 2:49 PM, Richard Purdie wrote:
> On Fri, 2020-02-21 at 14:35 -0800, R Srinivasan wrote:
>> I just changed my system to Ubuntu 1804 and did my first yocto build
>> - totally vanilla. bitbake core-image-minimal
>>
>> When I tried to run qemu - I get this error:
>>
>> Failed to run qemu: Could not initialize SDL(x11 not available) -
>> exiting
>>
>> Never seen this before in my previous environments.
>>
>> i have now installed xorg on my host but does not appear to change
>> anything.
>>
>> Help please
> 
> How are you trying to run qemu? Are you expecting graphical qemu or a
> console? Have you tried adding "nographic" as an option to runqemu?
> 

I am sure nographic will work.

I think the problem is that qemu still tries to launch with sdl backend 
when SDL is not present, so I wonder if qemu detects this during build 
then runqemu should not launch qemu with a backend perhaps default to 
nographic automatically

> Cheers,
> 
> Richard
> 
> 
> 
> 
