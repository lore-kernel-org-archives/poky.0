Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web12.11269.1589976642708506116
 for <poky@lists.yoctoproject.org>;
 Wed, 20 May 2020 05:10:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dynamicdevices-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=sNeJkLpA;
 spf=none, err=permanent DNS error (domain: dynamicdevices.co.uk, ip: 209.85.128.68, mailfrom: ajlennon@dynamicdevices.co.uk)
Received: by mail-wm1-f68.google.com with SMTP id h4so2306795wmb.4
        for <poky@lists.yoctoproject.org>; Wed, 20 May 2020 05:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dynamicdevices-co-uk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=GgfN1mIFqEHtqBbm6jFR15v0rCC4HcaDb0izypR540s=;
        b=sNeJkLpAAHMExtqqwBLo5lN3L9RHt+6PeiMsXbTAMsojK5KL+1tVHyczcBtfuQefjE
         2LqNmkS4n51eQwdyLiNeAVGvAnlawFLjcrQ5LFigE/LHof01dP82LGsTR6lPk1rSJWCy
         HvnrqQLqdgymq6pUE1CFORyi7ths/3a/ENQmv5Z0mh8jPf5WI6DmHtRm/rxtVja7qkc/
         PYsenACe+G/VJJJybBw9+SnxZvakqXzMtEcWnhc9hXQfsloxOnRKa2pm6ARF1d8jQjv/
         H7FtYWPNkAvrDWWmbbn2acDl6E+IUDv4/vcnLtNvIU7/0te6mE7xW53wPRX09a440AS6
         WWYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=GgfN1mIFqEHtqBbm6jFR15v0rCC4HcaDb0izypR540s=;
        b=ZeSSO6zU5+qruw1u3s+4RvXISt74IvUQfnTwfcOWLTEkDjYZ2paBUMpC5eVweY1bwO
         oMLH/JPAWt8PBVA1hkhwmx7HevQsn1LpiJMCPClyG4cORfaR1w2Y956YNvXVPfEKFFQj
         DK4kHXYwqfsoph6cLDLOtEt66sHik9bIaIjwAPsHAzkgb0FugqeQC3Jg9pspBp/kNf//
         gTW5PNtcUUj3eA4bJ7M7mEAR9lq/scGcdNllLv9yh+Bj5nENTrqHdSTcxIYBqeMkGQrz
         Ic0kIzQlXmOty1oB0nQYgOLunmFOBAGuMbX3oGwzKf1ihqVBNl6KzW+v89RI+1ZBcErc
         bpng==
X-Gm-Message-State: AOAM533jS6ctYrf9HF2ZKZebReO2ogBe99UADL3o4TGZ/zrtxfppTFXG
	6XscT5rBuYKoPZxNBF0TQ/wNsfrabrJCej4T
X-Google-Smtp-Source: ABdhPJyfy3+cqJRC//lGawAljR4qxcX3LQcuuvbvFGaRR7hO9TPo3vo5rpPc7YsldKD8z1VLDT/UwA==
X-Received: by 2002:a05:600c:2219:: with SMTP id z25mr4287098wml.128.1589976640499;
        Wed, 20 May 2020 05:10:40 -0700 (PDT)
Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from [192.168.0.219] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net. [92.232.58.145])
        by smtp.gmail.com with ESMTPSA id t6sm3017135wma.4.2020.05.20.05.10.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 05:10:39 -0700 (PDT)
Subject: Re: [poky] Problem building meta-mono gtk-sharp with dunfell release
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
References: <Tkjn.1589910615239216242.Ajap@lists.yoctoproject.org>
 <38fe9dc192f312a12b73323581383c9ed5842f06.camel@linuxfoundation.org>
From: "Alex J Lennon" <ajlennon@dynamicdevices.co.uk>
Message-ID: <f5a8b269-6bb8-12de-995a-b3f130852d63@dynamicdevices.co.uk>
Date: Wed, 20 May 2020 13:10:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <38fe9dc192f312a12b73323581383c9ed5842f06.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 19/05/2020 22:05, Richard Purdie wrote:
> On Tue, 2020-05-19 at 10:50 -0700, Alex J Lennon wrote:
>> Hi,
>>
>> I've run into a problem with my CI building meta-mono gtk-sharp
>> recipe with dunfell and I wonder if anybody can advise?
>>
>>> File: '/data_drive/git/monotest/poky/meta/lib/oe/sstatesig.py',
>>> lineno: 548, function: process
>>>       0544:                    add_perm(stat.S_IXOTH, 'x')
>>>       0545:
>>>       0546:                if include_owners:
>>>       0547:                    try:
>>>   *** 0548:                        update_hash(" %10s" %
>>> pwd.getpwuid(s.st_uid).pw_name)
>>>       0549:                        update_hash(" %10s" %
>>> grp.getgrgid(s.st_gid).gr_name)
>>>       0550:                    except KeyError:
>>>       0551:                        bb.warn("KeyError in %s" % path)
>>>       0552:                        raise
>>> Exception: KeyError: 'getpwuid(): uid not found: 1000'
>>>   
>>   Full log is here
> It means the ownership of files in the output of that recipe is
> questionable. Adding some "chown root.root ${D}/XXX" would probably fix
> it.
>
Thanks Richard! I went down this line:

addtask do_file_ownership after do_install before do_package

do_file_ownership() {
   chown root.root ${D}${libdir}/mono/${PN}-2.0/*.dll
}

I'm getting an error that I can't change ownership

...

| ERROR: Execution of 
'/data_drive/git/monotest/poky/build/tmp/work/core2-32-poky-linux/gtk-sharp/2.12.45-r0/temp/run.do_file_ownership.29234' 
failed with exit code 1:
| chown: changing ownership of 
'/data_drive/git/monotest/poky/build/tmp/work/core2-32-poky-linux/gtk-sharp/2.12.45-r0/image/usr/lib/mono/gtk-sharp-2.0/atk-sharp.dll': 
Operation not permitted

...

Cheers,

Alex


