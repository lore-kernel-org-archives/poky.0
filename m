Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web09.22307.1647806296943187924
 for <poky@lists.yoctoproject.org>;
 Sun, 20 Mar 2022 12:58:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OtjYKG93;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: fntoth@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id bi12so26282322ejb.3
        for <poky@lists.yoctoproject.org>; Sun, 20 Mar 2022 12:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZJjWuaG/fdRQJ8v5mkS7z8MPddsKK1Mu+KTnluAE6Yk=;
        b=OtjYKG930G91jbhK9TT8D34xv5w32//QWzQOfvPriyhfCNelPIO/zDGWdLZ8OMgo26
         l6/FpkCnRHh6J+AZ7tfdJYi2LJ+5RvjwvAVDCzNr0c1OJswovkr+WVCHmfnHQdFzGjk2
         Kr8i9aq7ikfRpDY5kBelzs+4xcZShDRTwUXODUxAkSXRH+cVg1k2DJ0XQBbK45XI9OZ1
         Jd+ytyW3UVtAh0SAa1JWYsnwd0Dc1T+S8ACJBx/CObgUFtv5Lp7A7/pnAmP+hdIrGGxd
         tzeECSr/zTvUfKEI+YmGLomWejKQGM2fLO/h+VhxfBb6wCTiqHpMMXu/Ue38fX2MHw63
         s38Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZJjWuaG/fdRQJ8v5mkS7z8MPddsKK1Mu+KTnluAE6Yk=;
        b=aoemCu3Asig8vmaIuzQuRCAOYFWNGcbo7zH5eiHDxjdfgu90CBVnJtMgk2mgVwif/G
         TWs8O22AlCVDmPtWGKlUe81VEPitcOdo5w7sfP5d+qtufAVI+DKw+/LjdFZflw8RtMXT
         7cFdnKOWUBEYRgJuHPGKDzcF/9NRW/4A4wL7eJMV63Re8XVTuhslfj66+hQlqg3cruIt
         fqMjogp3e37lhhqFYDRAieXS5IbU6HFI0dYuhXMh59OUM0FHXI0iaL5XK90/H40sSpTz
         CiPfLv5+mil7h+3R32Wdt2+miVbztiGr55SahvJFtq2JE86gLXP+pNKMXFi9EccIA9Nd
         YSqA==
X-Gm-Message-State: AOAM530hHlLzoN50/tj5WMqJ2hQdOmo6f+InBtPIlbl4+X4TkvYBlnnC
	NDtuYxu8lD+49SYHh4Bzdsk=
X-Google-Smtp-Source: ABdhPJz1yjXbMSM5G8mWI118qCPv7r7GPrAid6GkQGqeNnjxsK0HXNDjBvRADWrdabOyWP7A0uZhsg==
X-Received: by 2002:a17:907:3ea9:b0:6df:f197:81ae with SMTP id hs41-20020a1709073ea900b006dff19781aemr5352238ejc.402.1647806295187;
        Sun, 20 Mar 2022 12:58:15 -0700 (PDT)
Return-Path: <fntoth@gmail.com>
Received: from ?IPV6:2a02:a466:68ed:1:33b9:de97:a34b:9ae7? ([2a02:a466:68ed:1:33b9:de97:a34b:9ae7])
        by smtp.gmail.com with ESMTPSA id bq23-20020a170906d0d700b006db0372d3a2sm6062494ejb.20.2022.03.20.12.58.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Mar 2022 12:58:14 -0700 (PDT)
Message-ID: <75759e1a-d4d9-a614-d1ba-73508a858936@gmail.com>
Date: Sun, 20 Mar 2022 20:58:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [poky] [PULL][PATCH 0/2] Implement debian packages GPG signing
To: Xavier Berger <xavier.berger@biologic.net>,
 Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
References: <29294.1624221743778282039@lists.yoctoproject.org>
 <16036.1647539972048006331@lists.yoctoproject.org>
 <CANNYZj9u=ELdqRekS-N-PY2z5nngV14iBSC77SKCUE7jZqUDJg@mail.gmail.com>
 <b482b039-9133-6d80-156f-f578995203e6@gmail.com>
 <68aa2281f21141feb76d82c4d5bed2f8@biologic.net>
From: "Ferry Toth" <fntoth@gmail.com>
In-Reply-To: <68aa2281f21141feb76d82c4d5bed2f8@biologic.net>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

If you don't mind I can send them to oe-core?

Op 18-03-2022 om 16:49 schreef Xavier Berger:
> Hello,
> 
> To avoid the signing issue we had with deb, we decided to switch our 
> project to rpm.
> 
> Creating the required tests to validate my merge request was too complex 
> in regards to my knowledge so I gave up and I will no more working on 
> such branch.
> 
> Best regards,
> 
> Xavier
> 
> *De :*Ferry Toth <fntoth@gmail.com>
> *Envoyé :* vendredi 18 mars 2022 13:09
> *À :* Alexander Kanavin <alex.kanavin@gmail.com>; Xavier Berger 
> <xavier.berger@biologic.net>
> *Cc :* poky@lists.yoctoproject.org
> *Objet :* Re: [poky] [PULL][PATCH 0/2] Implement debian packages GPG signing
> 
> Hi Alex,
> 
> Clear. But they are not originally mine, I only fixed them up after 
> rebase to gatesgarth.
> 
> I was hoping Xavier would respond. I put him in To: now.
> 
> Thanks,
> 
> Ferry
> 
> Op 17-03-2022 om 21:22 schreef Alexander Kanavin:
> 
>     You need to rebase any patches you have to master and send them to the
> 
>     oe-core list, otherwise nothing is going to happen.
> 
>     Alex
> 
>     On Thu, 17 Mar 2022 at 18:59, Ferry Toth<fntoth@gmail.com>  <mailto:fntoth@gmail.com>  wrote:
> 
>         It seems nobody is interested in using apt for package management? Strange.
> 
>         Let me explain: since gatesgart apt requires a repository to be signed. The above linked patches do exactly that. The can still be applied to hardknott and honister. To me seems to be a good addition that brings deb to the same level as rpm and ipk.
> 
>         On the signing-keys issue, it may be unrelated. Let me self answer this:
> 
>         signing-keys-dev depends on signing-keys which doesn't exist. It is not built because it is empty.
> 
>         This is resolved by adding to the recipe:
> 
>         ALLOW_EMPTY_${PN} = "1"
> 
>         
> 
