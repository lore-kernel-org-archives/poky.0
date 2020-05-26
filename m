Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web12.109.1590527227456529480
 for <poky@lists.yoctoproject.org>;
 Tue, 26 May 2020 14:07:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dynamicdevices-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=Vm+79UEX;
 spf=none, err=permanent DNS error (domain: dynamicdevices.co.uk, ip: 209.85.221.52, mailfrom: ajlennon@dynamicdevices.co.uk)
Received: by mail-wr1-f52.google.com with SMTP id s8so21856966wrt.9
        for <poky@lists.yoctoproject.org>; Tue, 26 May 2020 14:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dynamicdevices-co-uk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=GH8xzyBay+1fUb9Jlm9BWDMbrSyNWdMMKB4HOsIxZY0=;
        b=Vm+79UEXmQK/IVNRzTc6EGe7eVyZft+i3yB0/oQX3fG6SKQDp6j010c+g0OF+eQ2/T
         kVo72xyle/3qooiS9pKZP+CuPp60VKACjXBKWi1thTi1KKfGOZBLPjk/jTlZC+/uHfd+
         2N1H7QNiTF5DaE+CxOZ4y+JB9lkIOueIEiA/i85+T+HkMSwZyTsjLyoxj6zEyI3JPXPP
         90xGkSbJ4ZNtkOiD6ls/gZqC5UEcdaGKukqguIWBoBPApOn+g62fta8rAJiHM67RaaHH
         5+7rCI8VLZaxvJTHFzviYvhfZ80Xy+Af/SO+1ytaY+ViLsJGnlKlYzaCmilIJNqTIptv
         kb6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=GH8xzyBay+1fUb9Jlm9BWDMbrSyNWdMMKB4HOsIxZY0=;
        b=khKqskF47huE6OTCZPPVHl1ddO02kQV5zKJiOStzEuQDjTQ+Q8FuGZxuDZuMz8JXJt
         +swf81QFl42wrpTAY9QEVxWO9X3cZoHBH9e2j9E4s/NAS3LFkymCzgsGY7oo6RTenW/4
         wtLkeUaG3yoULpbqA10XUQwB4UEqC1jo5lCE8V7RuPYOW6XHldRHWY7MvC5sv8wzwKtZ
         7NHLMLBxiT177l1AbSM4oZW1rL3/y1D1SJc1Gg8R8QQP9A/DJCUJbh+N7SsCHQo9N9VN
         PYMNwXIvfUJrWguIhoS8R/Sf38eJQBrbN1Bgf64ru7wv5IH+o8PvPor4Wb63aTDvUdqT
         5mSQ==
X-Gm-Message-State: AOAM531yRzftnxHmUNnnZeIf4r3wDcUOltTe9PpiOJUe149PxI5BrUHz
	otDeEAxNXz23UZwDlFsKp9ytvyLmASRzWA==
X-Google-Smtp-Source: ABdhPJyWVp80Qfpig7U9mHaOZsCObnpIpvPWO1NggwOB/497NS/ppnD2lYhgMQypQLJcetaGRwMl9w==
X-Received: by 2002:a05:6000:1289:: with SMTP id f9mr21928822wrx.5.1590527225611;
        Tue, 26 May 2020 14:07:05 -0700 (PDT)
Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from [192.168.0.219] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net. [92.232.58.145])
        by smtp.gmail.com with ESMTPSA id m24sm697488wmi.14.2020.05.26.14.07.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 14:07:04 -0700 (PDT)
Subject: Re: [poky] Problem building meta-mono gtk-sharp with dunfell release
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
References: <Tkjn.1589910615239216242.Ajap@lists.yoctoproject.org>
 <38fe9dc192f312a12b73323581383c9ed5842f06.camel@linuxfoundation.org>
 <f5a8b269-6bb8-12de-995a-b3f130852d63@dynamicdevices.co.uk>
 <a58229a9d18b3142f5195aea982d806126fc8224.camel@linuxfoundation.org>
From: "Alex J Lennon" <ajlennon@dynamicdevices.co.uk>
Message-ID: <d1992e88-dd1d-6fca-237b-a1061392f17c@dynamicdevices.co.uk>
Date: Tue, 26 May 2020 22:07:03 +0100
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
Hey Richard,

OK I have been having another look and have a solution that builds.

It looks like there was a problem with symlinks as chown seems not to 
modify ownership unless you give it a prod with -h

For others who see this problem try

do_install_append() {
   find ${D} -name *.dll -exec chown -h root:root {} \;
}

Still fairly unclear on why ownership needs to be changed, and why other 
recipes aren't having the problem but Jenkins is happy so I am happy :)

Thanks!

Alex


