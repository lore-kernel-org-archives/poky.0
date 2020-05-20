Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web10.12159.1589980212338921961
 for <poky@lists.yoctoproject.org>;
 Wed, 20 May 2020 06:10:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dynamicdevices-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=OSxWu4Ao;
 spf=none, err=permanent DNS error (domain: dynamicdevices.co.uk, ip: 209.85.128.47, mailfrom: ajlennon@dynamicdevices.co.uk)
Received: by mail-wm1-f47.google.com with SMTP id m185so2793792wme.3
        for <poky@lists.yoctoproject.org>; Wed, 20 May 2020 06:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dynamicdevices-co-uk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=KQmvqrjCi1ogjEzWsjl0pMzFeIeUx3A1CqknzAHarPQ=;
        b=OSxWu4AockA3H1UtGapnOH3IA6gorjD7MVuToLJI7d87DYoU60tm4S9kJmp+ludvZW
         h3AOG5kBBqdcrb6mPprRUBKwnOMiuYDMGvIOb3aUKcaHN7NZD7L1SkF/90FY5U899nUn
         3BhW732mO812PZnRUpSTBg8g4a5gecIfl5WlgiCNWDxPoMC68IJGaWhlZq6MySfwPa3c
         nmgC3W3jqJe4vDgJI7msdRYZMw8sSWLu6HXIXjUrQrYr/9GTD3tFNTOmcQbMj/S8DJ1s
         miltUPuiYfjqhE5DQB3GElbbUIBdfN85IhjFeCjGji18aqfKc5HjKsPOvIR8lE1kG9yA
         U5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=KQmvqrjCi1ogjEzWsjl0pMzFeIeUx3A1CqknzAHarPQ=;
        b=mBlfaow7GqT2HeHrc3ulZTZv14UUhfqJTLNcH0K6rwJJpc5LQXSQu4ZEs2I4OZfS1A
         UcEbaIQPAWSJSy//P24YEiFkVB7Dd0nL1Eaq12GkeZlib0AOFiuosEvkTaOm9+bHY3rH
         tEgD4sWN9PruYs/Lk7BmMJLCd174lMoX1YcS5Du2kXObM0j3YJUSl4RyX6TD1nLBL7lR
         BY81Phf9FFAJTycVtxtT46Acp2RcKsAZeSDZRXxy/NwIqDyf17rc64xv/5rdsG03Dx4d
         CEs9L7PDYgZDxaGmPEDAvqyPhJ6HqcVB4OOqzfMfC6l+6jsucNgaLERarg7HwUi6auTl
         qQuw==
X-Gm-Message-State: AOAM530L1AjMjaTU/zgKUiL7/H04Q8vFZRVsjKEqa9TADxAyfJUuMZZ6
	9lvmDq5IvSVak/Bjv1+nfzRifXR5MO++KaXQ
X-Google-Smtp-Source: ABdhPJynmY0siPG06cE6urJ++/rxVrGO/KYS5yvpJmoTM3uH5PrbF6/F2MDKo2GUHa73JkxGciKlaA==
X-Received: by 2002:a1c:7410:: with SMTP id p16mr4842120wmc.134.1589980210479;
        Wed, 20 May 2020 06:10:10 -0700 (PDT)
Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from [192.168.0.219] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net. [92.232.58.145])
        by smtp.gmail.com with ESMTPSA id e22sm2705414wrc.41.2020.05.20.06.10.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 06:10:09 -0700 (PDT)
Subject: Re: [poky] Problem building meta-mono gtk-sharp with dunfell release
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
References: <Tkjn.1589910615239216242.Ajap@lists.yoctoproject.org>
 <38fe9dc192f312a12b73323581383c9ed5842f06.camel@linuxfoundation.org>
 <f5a8b269-6bb8-12de-995a-b3f130852d63@dynamicdevices.co.uk>
 <a58229a9d18b3142f5195aea982d806126fc8224.camel@linuxfoundation.org>
From: "Alex J Lennon" <ajlennon@dynamicdevices.co.uk>
Message-ID: <baa378f2-132a-899e-288a-8f04b6ad7710@dynamicdevices.co.uk>
Date: Wed, 20 May 2020 14:10:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <a58229a9d18b3142f5195aea982d806126fc8224.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 20/05/2020 13:19, Richard Purdie wrote:
> On Wed, 2020-05-20 at 13:10 +0100, Alex J Lennon wrote:
>> On 19/05/2020 22:05, Richard Purdie wrote:
>>> On Tue, 2020-05-19 at 10:50 -0700, Alex J Lennon wrote:
>>>> Hi,
>>>>
>>>> I've run into a problem with my CI building meta-mono gtk-sharp
>>>> recipe with dunfell and I wonder if anybody can advise?
>>>>
>>>>> File: '/data_drive/git/monotest/poky/meta/lib/oe/sstatesig.py',
>>>>> lineno: 548, function: process
>>>>>        0544:                    add_perm(stat.S_IXOTH, 'x')
>>>>>        0545:
>>>>>        0546:                if include_owners:
>>>>>        0547:                    try:
>>>>>    *** 0548:                        update_hash(" %10s" %
>>>>> pwd.getpwuid(s.st_uid).pw_name)
>>>>>        0549:                        update_hash(" %10s" %
>>>>> grp.getgrgid(s.st_gid).gr_name)
>>>>>        0550:                    except KeyError:
>>>>>        0551:                        bb.warn("KeyError in %s" %
>>>>> path)
>>>>>        0552:                        raise
>>>>> Exception: KeyError: 'getpwuid(): uid not found: 1000'
>>>>>    
>>>>    Full log is here
>>> It means the ownership of files in the output of that recipe is
>>> questionable. Adding some "chown root.root ${D}/XXX" would probably
>>> fix
>>> it.
>>>
>> Thanks Richard! I went down this line:
>>
>> addtask do_file_ownership after do_install before do_package
>>
>> do_file_ownership() {
>>     chown root.root ${D}${libdir}/mono/${PN}-2.0/*.dll
>> }
>>
>> I'm getting an error that I can't change ownership
> That is because its not running under pseudo.
>
> do_file_ownership[fakeroot] = "1"
>
> should fix that.
>
> Cheers,
>
> Richard
>
>
Thanks again. Still fighting here unfortunately. I tried a couple of 
approaches but get the same error.

I'm not sure what to think. Is it because fakeroot is intercepting and 
the files aren't really changing ownership and then we are checking the 
real ownership ?

(1)

addtask do_file_ownership after do_install before do_package

do_file_ownership[fakeroot] = "1"

do_file_ownership() {
   find ${D} -name *.dll -exec chown root.root {} \;
}

or (2)

do_install_append() {
   find ${D} -name *.dll -exec chown root.root {} \;
}

Still results in some kind of failure on the sstate files

WARNING: gtk-sharp-2.12.45-r0 do_package: KeyError in 
./package/usr/lib/mono/gtk-sharp-2.0/atk-sharp.dll

Cheers,

Alex


