Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.8577.1624366349909986098
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Jun 2021 05:52:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dynamicdevices-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=IbA8GkDA;
 spf=none, err=SPF record not found (domain: dynamicdevices.co.uk, ip: 209.85.221.47, mailfrom: ajlennon@dynamicdevices.co.uk)
Received: by mail-wr1-f47.google.com with SMTP id b3so13267074wrm.6
        for <poky@lists.yoctoproject.org>; Tue, 22 Jun 2021 05:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dynamicdevices-co-uk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Pws6rNPJG7b5+raG+H1a2UXBpN2Om5lD1AQi3C6iDzQ=;
        b=IbA8GkDAIS9QhIlQ5nhwqbPzonxjiuWVamKmIXa6NEHqXKYaIG3LkI5EyVkaxiX1Jm
         VQiZ0rETCv7pSpt9VIsH8RL3zzqRqYqcjFkBn0w/srG47wrl7WqSRK81hwxZ54E01xlt
         urqYDPu4Nu8DJDsOQa23Z4GcXwCO/dGgVmPjfgcJZbS4los1P/qMdXUOR+vBPZe2kX/Y
         tVr/4fIMugSPQ7WzqZsR+a9MhejU2aq88ZX+vs/HRAifWGHQg2yJjViJKXfNLRzfIryw
         PKIdbDyT4B8eddwLNGANiXXHuTOCq50trsXN6zKK5bgwayNRD4hz5DDzGYEMp8iO891u
         e1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Pws6rNPJG7b5+raG+H1a2UXBpN2Om5lD1AQi3C6iDzQ=;
        b=k+UeVmKuTCyLmvDFB0bJ9ugoOOUrcc4X9t2SjIyuPEJ6amj0uIb0Ahn6Q3smln/YSu
         AKFcisnTh9WXjP+c+bamylvOPyWPqdSuLDT3+3+w1Z+eOTaoWEfZ7c5V1KjAQdC5rIxf
         CT7wP+klJt+iid5tZTJrjNvm4LJ8WBEPwN+EDI4bPn/goV7JtMGs8UWIeXH7lhgWawDW
         QmGBbzjX1ZjYuzDnYF5jVyyxVuzwtnAY3mBBQO+quyQUqdO5ZuJJmUkoNrNEHE5TI0iP
         e5u1T5NzfLkAhNY3/4Oj17EhgMB1m1sNpcqNdg7WoJsrwFIVcR4dXURxjgQik6C5Iq7O
         CEpw==
X-Gm-Message-State: AOAM531sy5Wz4VR33ap+EspmEhf0wd0SFYJjOa7oMgOcahDuK/fUSrYY
	02YoxyjYOjsebiEyhdevfpLWNdKQYl3uDw==
X-Google-Smtp-Source: ABdhPJxF8YkKNFfsffkU9VA4O1LeGc+zcGxScxajNZkZRQYpMiW9zrwmuL7dbKp/T/RwiERVr/EUmg==
X-Received: by 2002:a05:6000:186c:: with SMTP id d12mr4554134wri.123.1624366348127;
        Tue, 22 Jun 2021 05:52:28 -0700 (PDT)
Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from [192.168.0.219] (cpc110903-live30-2-0-cust594.17-2.cable.virginm.net. [86.7.42.83])
        by smtp.gmail.com with ESMTPSA id p16sm21581863wrs.52.2021.06.22.05.52.27
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 05:52:27 -0700 (PDT)
Subject: Re: [poky] howto run unit tests
To: poky@lists.yoctoproject.org
References: <646e26c8-aa05-7ae6-568d-321d7a266281@engineeredarts.co.uk>
From: "Alex J Lennon" <ajlennon@dynamicdevices.co.uk>
Message-ID: <e59de37f-51eb-8795-1898-450ad05e6cf9@dynamicdevices.co.uk>
Date: Tue, 22 Jun 2021 13:52:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <646e26c8-aa05-7ae6-568d-321d7a266281@engineeredarts.co.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 22/06/2021 13:48, Daniel Squires wrote:
> Hi,
> We are trying to run some built binaries as a task in a recipe as a 
> part of unit testing. This can potentially get complicated (though I 
> feel it could/should be abstracted away) as it may need to take care 
> of architecture differences between the host and the build target but 
> for now we are happy to just run for the cases where these match, and 
> possibly later look at using qemu.
> We are struggling to find any examples of this being done in existing 
> recipes. We managed to manually run what we want by copying built 
> files into the recipe-sysroot directory and using fakechroot but feel 
> there must be an existing way to achieve what we want, and that we 
> just haven't looked for the right thing.
> We have also found some docs re ptest however these seem to all relate 
> to running tests on the final resulting image, we wish to be able to 
> run some tests before this, on individual package builds as part of CI.
> Can anyone give any pointer re this?
> Many Thanks
>
>
Hi there,

Dunno if this is what you need but these are some very simple examples I 
put together to exercise the meta-mono layer build.

https://github.com/DynamicDevices/meta-mono/blob/master/lib/oeqa/runtime/cases/mono.py

Cheers,

Alex


