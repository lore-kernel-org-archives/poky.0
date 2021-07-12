Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web11.11134.1626097024937284814
 for <poky@lists.yoctoproject.org>;
 Mon, 12 Jul 2021 06:37:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cO0nHOYx;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id g24so10123563pji.4
        for <poky@lists.yoctoproject.org>; Mon, 12 Jul 2021 06:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=OSUwG2If/ZiLvHkM0CB8nNv9nBpAOKyMRfPo0x+PuRE=;
        b=cO0nHOYxayw2pVOSHBColCF7aKxhS8rl5/VmK+nZNL+GqrpZH64V0JZWTueXSdyrGk
         /WN6dorXO86YLYNM7iOgMosLtzkV6k0ke+Dnnx3E9WZHbPzbmBkT8LArDh4mtqcbcs5K
         0/Bj0Yy1b0JcI3wf6c/FIpRIXDpYQM+RAs2xYWCUlsEcjG0CK0QXB52SaWq2LuDq8P0w
         nweGpGzz3zWF3uiCsFddduHqRDe7/4maPC3JnP1yYP1x8Dn1u3lBG5npuoQcKhSQzuzM
         6MaSSBoK2R+OwcBdOPrWnpcbeh/JN/9G8/dYrDdlQ1kwnkJYgUTqMq7o43A0xct6VDKu
         7hSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=OSUwG2If/ZiLvHkM0CB8nNv9nBpAOKyMRfPo0x+PuRE=;
        b=ZWNGY3D7kUFHzbBH6zVU+5AIo9cQwFy/POgP/tmaMj4AKtC6hBdeFCBn76FDFDc3+c
         Rx8BNrZBsWi3L/dxt0vhWMuBhkVGEm3JtCFAN2J5Ag0P/C++9j+VlhD6mCdhHQdxkaXW
         Ei7gO22H848Uli/H0dJ4XbWRNQkQqqr/oDDWFkBJRLwq0YApBwzNZOrSbtJS81Iewedw
         8D3Dn9tnP4c0HscPbZCzw/BgMypYXMdFIg5OsPV2gwVBbQyOUjxG7TnEVzPo8+Sy93ui
         a4mWq5lFAptsTDFHpH4Esf9edHhDNTQHWXpTHP/tC+aMVQFxlAnTq0eL3u9BamXh8iVT
         djKQ==
X-Gm-Message-State: AOAM5329DX6tgPLXmqS8o0jSSIWGiOgbqG46CQcOPSL2wMJR5M7sNPt1
	/aQCXwdj18cEum5LcPgSsW7+n21fRJdPKw==
X-Google-Smtp-Source: ABdhPJzVxdO2uVnxZqSpyRLmvRCV3apBQkDEaP5ik5ikD6DejjmqCJyIN89vjLm1etiIHjsS5yla7g==
X-Received: by 2002:a17:902:9a8c:b029:113:d891:2eaf with SMTP id w12-20020a1709029a8cb0290113d8912eafmr43449524plp.61.1626097024090;
        Mon, 12 Jul 2021 06:37:04 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:47a9:e029:ea8:ce68? ([2601:202:4180:a5c0:47a9:e029:ea8:ce68])
        by smtp.gmail.com with ESMTPSA id v21sm20841847pju.47.2021.07.12.06.37.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 06:37:03 -0700 (PDT)
Subject: Re: [poky] Job opportunity (experienced, permie, North West UK)
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, poky@lists.yoctoproject.org
References: <baadd3b0-ad98-ea80-3d3a-5f1a27b22d36@dynamicdevices.co.uk>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <7f482ba9-22cd-394f-160b-a82195c1bfe3@gmail.com>
Date: Mon, 12 Jul 2021 06:37:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <baadd3b0-ad98-ea80-3d3a-5f1a27b22d36@dynamicdevices.co.uk>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


Hello,

On 7/12/21 6:33 AM, Alex J Lennon wrote:
> Hi all,
>
> I hope this isn't inappropriate for the list (I am not a recruitment
> agent!)

Try posting this on : https://www.yoctoproject.org/community/jobs/

-armin
>
> Dynamic Devices has doing some consultancy for a Yocto Embedded Linux
> client up near Blackburn.
>
> They are looking for a permie senior experienced Linux engineer to
> manage a remote team and provide architectural and development
> leadership.
>
> Hard to find I suspect so I thought I would reach out to the community
> in case anybody is looking.
>
> NB. They aren't looking for contractor(s) atm. If you're interested
> please contact me directly and I'll hook you up.
>
> Kind Regards,
>
> Alex
>
>
>
> 
>

