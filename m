Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
 by mx.groups.io with SMTP id smtpd.web10.285.1594939945353788464
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 15:52:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YcLCGoOn;
 spf=pass (domain: gmail.com, ip: 209.85.210.67, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f67.google.com with SMTP id e90so5542577ote.1
        for <poky@lists.yoctoproject.org>; Thu, 16 Jul 2020 15:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=IbArvPhT4Sa4py3hgi6Zkae3IuUowWMcSb5xXg5/pqY=;
        b=YcLCGoOnjLOW13POMaEojmjj8oY/15YUOOOA5EEeQKTYgcmPPwCo/HoxDeN+6QSxFi
         Fyriy8xvR0iQ6FuOZgcl8BbmWcYFMEmdnGJwZJiaI5vrPCUGCpF5B+AAowzGPs9RcDZV
         i7B9xIhiO9KAypd2+x8r4ncswIejBgO/tBHxPR+MQNphICwBwuIVxi8myMO7OqgRTFhG
         S1RdHiEdiIa4pqoaJ6+7qzdP06Xs4fDI/9k8Xxqd/3uiRnrxVteyO3wkDoZj18Mp9qEV
         i/XBqsYBNHGZndHA6/QBGZXWWOIy0ifKymB6YGzRJ8LU/Dmyqpvazu40rI15Wp4orZ7q
         3Oiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=IbArvPhT4Sa4py3hgi6Zkae3IuUowWMcSb5xXg5/pqY=;
        b=l/G02Jwwkvq8wT0t3bk1TQRMB1cEdpj3M/AiH8c/YNrb8UzlDyBtlXZh1Bf7+neKjE
         DuS9Ky4ZNbQzcbSKIew0YPKvYEbrPD1e28d6o4dvQQNwyh96uLOoW123czMfFAnrsJT8
         KJghAYiBU0JGqP1Wcv6FyeMMOFYbuwkZxIREKr5oBxG1QXgT1/iKJnm053L107KsFunC
         UNz+MdJ+cu559Hw9jDQMN5QtSu7hHL/wE0RzrWO/VkX6SOQCmqQ4bcYjwlJFTKt5u4CR
         F6Li3iuRA2WAlfWUnOEhLEpGFhpJL1m4yBtr5xWsCNWDpVNDvGgBeW2kTdTwcNqvSh9a
         Id6g==
X-Gm-Message-State: AOAM532zJkJPu1FWa3xgBFNg6VXChMp4OYxgLCWdu0eO784lSOqq9nLm
	oJUsz5PzueUKzkJ4gTuqOFaUn0bkvis=
X-Google-Smtp-Source: ABdhPJx1gRWpJijPobfoZDd9wTUhFCB1YRkagxrXB42pFss6a9uwtsNVjwvuXMIN1T2G8S7dWiJCig==
X-Received: by 2002:a05:6830:2405:: with SMTP id j5mr6515506ots.340.1594939944554;
        Thu, 16 Jul 2020 15:52:24 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:7df4:7f73:717d:af68? ([2601:202:4180:a5c0:7df4:7f73:717d:af68])
        by smtp.gmail.com with ESMTPSA id e11sm1478036otq.41.2020.07.16.15.52.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jul 2020 15:52:24 -0700 (PDT)
Subject: Re: [poky] [meta-yocto][dunfell] poky: Add fedora32 as a supported distro
To: Steve Sakoman <steve@sakoman.com>
Cc: poky@lists.yoctoproject.org
References: <cover.1594937430.git.steve@sakoman.com>
 <aff81f13dec648e6546b0ec2887c55c49fdacb7f.1594937430.git.steve@sakoman.com>
 <bbfbd6da-0398-8c60-664c-b5bd6c19b06a@gmail.com>
 <CAOSpxdax5K5ty-PgyfCdnvZoZVruPcX2+-n-+7CT7a4ZjgXvaQ@mail.gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <840e8d8f-dbe8-478b-8426-673aa1ead7ad@gmail.com>
Date: Thu, 16 Jul 2020 15:52:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAOSpxdax5K5ty-PgyfCdnvZoZVruPcX2+-n-+7CT7a4ZjgXvaQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 7/16/20 3:48 PM, Steve Sakoman wrote:
> On Thu, Jul 16, 2020 at 12:31 PM akuster808 <akuster808@gmail.com> wrote:
>> I believe Ubuntu 19.x has been removed from the AB. Not sure if this file need to reflect that or not?
> I think not, otherwise users who are currently using Ubuntu 19.x will
> get an error when they upgrade to the latest version of dunfell.
>
> Of course things may break on Ubuntu 19.x at some point since we
> aren't testing it, but we can deal with that when we get reports.
just had to ask. Sounds reasonable.

-armin
> Steve
>
>
> Steve
>
>> -armin
>>
>> On 7/16/20 3:11 PM, Steve Sakoman wrote:
>>
>> Signed-off-by: Steve Sakoman <steve@sakoman.com>
>> ---
>>  meta-poky/conf/distro/poky.conf | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
>> index 7c4a285..7f0a157 100644
>> --- a/meta-poky/conf/distro/poky.conf
>> +++ b/meta-poky/conf/distro/poky.conf
>> @@ -59,6 +59,7 @@ SANITY_TESTED_DISTROS ?= " \
>>              ubuntu-20.04 \n \
>>              fedora-30 \n \
>>              fedora-31 \n \
>> +            fedora-32 \n \
>>              centos-7 \n \
>>              centos-8 \n \
>>              debian-8 \n \
>>
>>
>> 
>>
>>

