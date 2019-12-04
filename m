Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
 by mx.groups.io with SMTP id smtpd.web12.5684.1575472722464915152
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 07:18:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RZUJal3s;
 spf=pass (domain: gmail.com, ip: 209.85.166.68, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f68.google.com with SMTP id v18so8422886iol.2
        for <poky@lists.yoctoproject.org>; Wed, 04 Dec 2019 07:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=qy2oqBPTEGZCi0hQ7vjYtY/8q5q8pwNM6m2zosEJSRE=;
        b=RZUJal3sgsV1T+jnOz3bJJUumNVcjSbwMH8fHCdKXV9fLE85pESkZa2705wxRYFe6q
         7UdRWt1wjS+pcm5XiO93TecmPtZaaih8KzpdXqhslc19N6HxtniXOLocJ1YENKVSQ0K8
         7GU4BneOtss2SoMeN9iYALMegUFSzsbbiI5cJxxt5igGh9qpDW8BKHSX1ekS3glbdYeY
         5AKTdnSeSFOwfjok0Zjvd79yc8mFR2x6/2EK99Q3ytr4fwiuTSlmsj33+Xz1dtitlAMO
         6Er3S5+0pZJlC+iqbHPzGXiwDyPmgYrqcci9vw4hr1GK8dR1I2xsakHUcZbI5Mb0+nKA
         WJjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=qy2oqBPTEGZCi0hQ7vjYtY/8q5q8pwNM6m2zosEJSRE=;
        b=CPU0Jx9bnkEZ5CF5ax3UfGSfb8dIcs1vuXrx2723zI6MhaMcNv8BxA//8bQzPoBSUB
         Igh0olSagjc6bqYx7usUyyK/vAHND9x7EHBCUd/ryfKK5WmCAzr0d/IWLa7U8oRQx68G
         iTvkb7hUnmkZ032cgyepkz6xSVYxBT0Ojy3O/xCBKSyeNKN3EFirLr6t4aFCD9Uk3sk4
         o/0YvGsKLsC4yargVY/GBEuvRX6mg3fPXUpXeh1Xs/KiipWMXihOF52ctQeYxgzxwGdS
         z2e82WszZduMqHXORUtHZByX6hmcHgL8pPMMTbqzjNXndCgMrFexOzwGo0Q7gkh2HnTO
         c9xw==
X-Gm-Message-State: APjAAAXKNNQ8lW8wpTMS0EkmhyBLyeG/xuWX1VIFtLJYZxy4WqmjIadD
	EMuNqfDIAihNNlWIVPkHZuWX5BoOk6Y=
X-Google-Smtp-Source: APXvYqythagUK/yqrSMBiXDX6dhcnAo74aK7jAINiQPnAKROzKdLINydpEtlJND3hKJb0CgzQLS2zQ==
X-Received: by 2002:a05:6638:72c:: with SMTP id j12mr3537911jad.136.1575472720834;
        Wed, 04 Dec 2019 07:18:40 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from [10.30.196.43] ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id d84sm1882946ild.0.2019.12.04.07.18.38
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2019 07:18:38 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [poky] [PATCH] poky: Default to enabling a local hash equivalence server
To: poky@lists.yoctoproject.org
References: <20191204120959.25639-1-richard.purdie@linuxfoundation.org>
 <8c767875-784a-c98e-ef49-60502d27f651@kernel.crashing.org>
 <3ac065fe5611aa5d7007f5438fbbd5b4dfd78477.camel@linuxfoundation.org>
 <26c58eb9-008b-fe10-8046-90e3e3d59b66@kernel.crashing.org>
Message-ID: <93db7bb1-2a7e-980a-469e-98cb877d9f5b@gmail.com>
Date: Wed, 4 Dec 2019 09:18:37 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <26c58eb9-008b-fe10-8046-90e3e3d59b66@kernel.crashing.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 12/4/19 8:23 AM, Mark Hatle wrote:
>
> On 12/4/19 8:18 AM, Richard Purdie wrote:
>> On Wed, 2019-12-04 at 08:04 -0600, Mark Hatle wrote:
>>> It does seem to cause issues w/ PR Server usage and packagefeed
>>> stability.  (I'm not saying don't do this, I think we absolutely
>>> SHOULD have it enabled.. we but we will need to figure out the
>>> issues.)
>> Right, there are potential interactions which we need to resolve. That
>> said, I think the benefit is significant to the majority of users and
>> most don't use PRServ so this is the right direction.
>>
>>> PR Service, when this is enabled, even if the hash is equivalent a
>>> new package version is produced (at least locally) in all cases.
>> Should it? I don't think that is what you want. If its not changed, you
>> don't want to rebuild it? If you don't rebuild it, you don't need a new
>> PR number?
> If do_install was shown to be equivalent, and there is no metadata change (not
> sure how there could be if it was equivalent) then no reason to do_package.

Only sstate tasks can be determined to be equivalent because the 
mechanism used to determine equivalence is to checksum the sstate 
tarball contents. As such, do_install isn't eligible for hash 
equivalence and can't be shown to be equivalent.


>
>> You only want a new PR number if it rebuilds?
> That makes the most sense to me.
>
>> Fixing this could be as simple as ensuring its the unihash the PRServ
>> sees rather than taskhash.
> That should work, and would fit within the current design.
>
>>> Adding in packagefeed-stability and the image is generated with the
>>> new package versions that don't actually end up existing in the
>>> feed.  (This might just be a packagefeed-stability bug and not hash
>>> equivalency.)
>> I suspect we reworked parts of rootfs generation and this hasn't been
>> tested with packagefeed-stability unfortunately.
>>
>> I still hope we could obsolete packagefeed-stability with hashequiv.
> I'm not sure if there are cases where packagefeed-stability would kick in that
> hash equivalency wouldn't.
>
> --Mark
>
>> Cheers,
>>
>> Richard
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#11853): https://lists.yoctoproject.org/g/poky/message/11853
>> Mute This Topic: https://lists.yoctoproject.org/mt/66431026/3616948
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [mark.hatle@kernel.crashing.org]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#11854): https://lists.yoctoproject.org/g/poky/message/11854
>> Mute This Topic: https://lists.yoctoproject.org/mt/66431026/3616693
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [JPEWhacker@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
