Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web08.1418.1625529832426170990
 for <poky@lists.yoctoproject.org>;
 Mon, 05 Jul 2021 17:03:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MAmlc6JQ;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id i13so11013151plb.10
        for <poky@lists.yoctoproject.org>; Mon, 05 Jul 2021 17:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=e3faSOGgLyFxan+cpNtvKaQr9fL/4q/hf4Gl8mnJcHo=;
        b=MAmlc6JQVSd1t2iM6BhLOWvZ/gbBejR4W+MA67M5LokmtCVB8zxdwgJ8V/1vuHsJN/
         KsyXGB2tmg7XaBhUBeX9QALaW8OWvyQMaiIJxDtotOnvLSCMJKuAt6YWlmKoUiE2isNc
         nByyoc27cbPgWU7fk22sbdgIKF8ZWB30ZtzQRbP3Mn/t+5qDdgHUTIQb+hb1GaKr0LEB
         zAcshAckEAHH+WI51qcROqH3x1eqh9lhY5u9lDNcfntfaGzRRqBOqhef5StbV5z0T1su
         fa6D7rAUuSkqpm5WCMbjCcMUESx6p0+7MXnj1n0LKh8zR1x3nRPuXLfGVpAI5qIVh92h
         Tq9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=e3faSOGgLyFxan+cpNtvKaQr9fL/4q/hf4Gl8mnJcHo=;
        b=Yb8IXn/EDwmr4u2VUGFv7W0Q6/KsKrD0/yqrjGIVhzCDp1nE7VYzEx4vtBDhaD+pho
         QTvfaDfM04jl2WjYl5KQM3wBnqYSEYr3qSo9SwtcF0YMeu4QvbKAXdv8u+9nSJVhzlpw
         liblaPixxQF/VklGTUzLkYvOjW+4PxCxCzAK6ce9hvo1JkMTEPtOy+bYVVAVc+unfbZw
         eVO+YzEf38FeU8Q+XzIzfXA42KNddIBVFkrQ/aNLyiwphftjVu4N7WX+QQzaF5cuheg2
         XWl9nguiDfitI2ePoo6UZUKdCfxLcXOcAa7uiEnpsKsPc6rGbPz05T83XVhFb7lWB6Br
         eyhA==
X-Gm-Message-State: AOAM531xMyQUft8Q8KDYzTM1pyGhvyrPMfSXWCmX7Yga0nnsxe7GnUj/
	x6b8EyGYUQcqEJBrqh3HynmZyxQ32jY/WQ==
X-Google-Smtp-Source: ABdhPJzcHqyQTTm6V1jKrQ1TVEI6sH07hRtCo5l6CqQZWMhBBsgXdE14mGsOCYt8W72fcRQ1oFE0FA==
X-Received: by 2002:a17:903:22c4:b029:129:8878:f872 with SMTP id y4-20020a17090322c4b02901298878f872mr7343199plg.74.1625529831704;
        Mon, 05 Jul 2021 17:03:51 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:37df:273f:1e4f:b167? ([2601:202:4180:a5c0:37df:273f:1e4f:b167])
        by smtp.gmail.com with ESMTPSA id x6sm799117pgq.67.2021.07.05.17.03.51
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jul 2021 17:03:51 -0700 (PDT)
Subject: Re: [poky] [PATCH] local.conf.sample: disable prelink
To: poky@lists.yoctoproject.org
References: <20210705183627.72790-1-alex.kanavin@gmail.com>
 <CAMKF1srCjD4ay0MJUq0G=V_gy7QwA1Y9ufmb+4bMPgWy=MNS-Q@mail.gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <d7ca2f7f-54c9-36ad-b574-830658a5ef76@gmail.com>
Date: Mon, 5 Jul 2021 17:03:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1srCjD4ay0MJUq0G=V_gy7QwA1Y9ufmb+4bMPgWy=MNS-Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 7/5/21 4:06 PM, Khem Raj wrote:
> On Mon, Jul 5, 2021 at 11:36 AM Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
>> Recent tests have not shown any improvement over not prelinking,
>> and without a regression test it is very hard to say when and how
>> this happened.[0]
>>
>> There's also a concern that no one is maintaining the code, and there
>> are open bugs (including serious ones such as [1]). Given that prelink
>> does intricate address arithmetic and rewriting of binaries the best
>> option is to disable the feature.
>>
>> [0] https://lists.yoctoproject.org/g/poky/message/12467
>> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=14429
>>
>> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
>> ---
>>  meta-poky/conf/local.conf.sample | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
>> index fb14379d28..1794126672 100644
>> --- a/meta-poky/conf/local.conf.sample
>> +++ b/meta-poky/conf/local.conf.sample
>> @@ -148,8 +148,7 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
>>  # enable extra features. Some available options which can be included in this variable
>>  # are:
>>  #   - 'buildstats' collect build statistics
>> -#   - 'image-prelink' in order to prelink the filesystem image
>> -USER_CLASSES ?= "buildstats image-prelink"
>> +USER_CLASSES ?= "buildstats"
> just disable it for ppc32 since thats a broken case we know.
So does PPC64 work with prelink? There is a long standing issue with it.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=1331

-armin
>
>
>>  #
>>  # Runtime testing of images
>> --
>> 2.31.1
>>
>>
>>
>>
>>
>> 
>>

