Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
 by mx.groups.io with SMTP id smtpd.web12.32398.1590999529197769380
 for <poky@lists.yoctoproject.org>;
 Mon, 01 Jun 2020 01:18:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rhKp8U6z;
 spf=pass (domain: gmail.com, ip: 209.85.218.65, mailfrom: breno.debian@gmail.com)
Received: by mail-ej1-f65.google.com with SMTP id a2so8360387ejb.10
        for <poky@lists.yoctoproject.org>; Mon, 01 Jun 2020 01:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=i98MyIcJXevVJtU1c2QHCK8m3+j4VCRuiNZBiBwJPyQ=;
        b=rhKp8U6zJwdY3GwMCzp57abq5UAqOiICnuaUuo78HjQCK34UCCPsUBsG2HVo75TsI1
         hrcRtz9F9q/Cl02G+g8BhhCkUg+i6FJh4sNPCvVVHNDgse9SH9DY2S93vHmwgFSclUgm
         OJ1ZfxTHqtXXStvvvATNiF2+TzbHi5rDp0k0nL1xncB3+Uk5NbXBaCmDvQDnR3Yem92m
         bntdQXX0OPu6lhvbkB8J1/R2ROIzIm1X8TuxFMkl1LA0641u7hkwWxneDHKP/+9ine0N
         2R1FNeGunubSRikJwWw2EscvVx66k1JDmYLdU2/fsikPp2KVBd8+doi6cTNTJYx41EN7
         QSjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=i98MyIcJXevVJtU1c2QHCK8m3+j4VCRuiNZBiBwJPyQ=;
        b=LQ7BHGSixrytRwNsQOR+4KTL7CcUp8MaJv8jSTMIbKJEHilNmEp0W2lWYrPtBL8AJX
         H+yVOv/ZnAr+0wwaK+0+JlpYT31S/cUKY0PzJ63DBJVQ4/rcIgYpt6daUngDRwAd5IGw
         VGvu2kLUm/Jw8Q87ITkmuI8DcagSodirx3xaWvRHjCL3lEwAOzVIXT9K4/wgERJXNspE
         FZMIsT2lo1uMA8kTYKYjy3woH19sHgrlBJz1BRgGdfTqniaipOwephmDGbHw47ndeyQX
         4DU85j8kyHbHX1m43vsIsrYI/Bion20N2wm69SL+cibVYWP9uW/ecNGjWm1QH4mbQy3q
         AqNg==
X-Gm-Message-State: AOAM532xh1uXX+2X5432dmBV4MuTabxCyi0Gjm0PH/fFNLzEqhQRHCvO
	epTGSUrv7rcn9IN3Z7dQ0IDTlTkI
X-Google-Smtp-Source: ABdhPJwB4wPOoDNZ/WVWJeZmcImmK/1jld6dLuIdi3YMQCU2iQ0Guty9/ztVXVJ4IB5+z+bfsG9kyg==
X-Received: by 2002:a17:906:944c:: with SMTP id z12mr18153884ejx.472.1590999527414;
        Mon, 01 Jun 2020 01:18:47 -0700 (PDT)
Return-Path: <breno.debian@gmail.com>
Received: from ?IPv6:2620:10d:c0d2:1103:1c3a:dd3b:c5bd:d95e? ([2620:10d:c093:400::5:91da])
        by smtp.gmail.com with ESMTPSA id b15sm15954886edk.90.2020.06.01.01.18.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 01:18:46 -0700 (PDT)
Subject: Re: [poky] [PATCH] devtool: Add IPv6 deploy targets targets
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 breno.debian@gmail.com, poky@lists.yoctoproject.org
References: <42a9297b-911b-6e38-076f-2a542249ffaa@debian.org>
 <9a1e0eef-9eb6-a483-8d59-9ca3cad69b20@debian.org>
 <9b38b1a02c0f4e266c25e05b27b2b619f738cd99.camel@linuxfoundation.org>
From: "Breno Leitao" <breno.debian@gmail.com>
Message-ID: <bd86a079-436d-9976-0ef4-1327428dd5d1@debian.org>
Date: Mon, 1 Jun 2020 09:18:45 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <9b38b1a02c0f4e266c25e05b27b2b619f738cd99.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Richard,

On 21/05/2020 14:14, Richard Purdie wrote:
> Hi,
> 
> On Thu, 2020-05-21 at 13:28 +0100, breno.debian@gmail.com wrote:
>> I've sent this message 3 weeks ago and I haven't heard any feedback
>> about it.
>> I am wondering if I have sent it to the right mainling list.
> 
> I'm not sure what happened to it here, I don't remember seeing it and I
> can't find a copy of it in my email. It is in the archives.
> 
> Patches for oe-core like this one need to go to the openembedded-core
> mailing list so this is the wrong list.

Sorry about sending it to the wrong place.
 
> (https://lists.openembedded.org/g/openembedded-core/topics)
> 
> Other than that the patch looks reasonable at a quick glance so could
> you resend it there please?

Sure. I sent it to openembedded-core mailing list now:

https://lists.openembedded.org/g/openembedded-core/message/138771
