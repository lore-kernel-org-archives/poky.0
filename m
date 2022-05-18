Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web10.6856.1652889507367704281
 for <poky@lists.yoctoproject.org>;
 Wed, 18 May 2022 08:58:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cSSH1Duc;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id 137so2539527pgb.5
        for <poky@lists.yoctoproject.org>; Wed, 18 May 2022 08:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=01LjluZq6E1fp9YqlUJZnlri3ssRuw+fEGu6hw2zVR8=;
        b=cSSH1DucfUgp64voi+i/7OMqCaPiD2PZnLELlju0bPEzbSCZU8ZEb4wOdQgRIiM7E5
         13wJ+UfI4rstFPL+Mnml+YBfM08Ob+CIX+LlfHDUIyMsC0iOcuxvfIKOPDVBC3n4Dr4G
         7mby3lLOSEVniK1NTDayLcQhrPve4S93/22BEaV9Wm5Od3uiwSST8tNG0/eWY0q/uuEo
         X3Gk54BgT2y4ScjXKdzAEK7NlAcX1ZWrizQsTB+CTiSPIP8ORjpjMM41o4utLKXZL6h/
         aG5qq0G/MRK0L2WPK6wTBE2LRx1exBy1XmTXpmZgdOsFweEAgHcz0eviFjdG6udnLE8S
         694g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=01LjluZq6E1fp9YqlUJZnlri3ssRuw+fEGu6hw2zVR8=;
        b=xycw7a+yjI/Zj5b4uKaYdfr2qOAiQiyEhM5j4AX0pvb9qCNEAgmRdBYsCvdCosJ6cF
         AnJ80zzx/cibBuvfIhxqAd5Fnoiq+mu9wenryQovlwLZgG2sIDXVxmP9t9dbgr45njz2
         SZj2cMWmZu0CuadPbifR5HHYh923PPPXQGGZBayH/jrrESa+j0QTHg+8ZIr+0HINxoEt
         UrqK08k75JEzfilkFHnbUrbST+euruIeECxiN2wAITXXmkyFWgrPKoNpyn+63afongII
         njApawNiKKhnsNPoa0Nxcf6I9dCFGy8lSSUJrYjLRFlihiyM4Wuhb2irz9j08Scr6nGW
         5ezA==
X-Gm-Message-State: AOAM530dbH6A0IbEvq1OPcoNuZX/Y7j33HRifqpkiB35ZgfNWHp2pZLX
	aTirl0lHwEU8GBpR5nB71mM=
X-Google-Smtp-Source: ABdhPJzi5SlocZekmDZkqjn90Lo32e0VkEd2/xrc5gkqTqj8scfnKvThuT0Dh47o6H9UPnzCFqaxVw==
X-Received: by 2002:a65:6b95:0:b0:3f2:638f:db1d with SMTP id d21-20020a656b95000000b003f2638fdb1dmr142193pgw.604.1652889506818;
        Wed, 18 May 2022 08:58:26 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:20c7:18ec:c14d:acfe? ([2601:646:9200:a0f0:20c7:18ec:c14d:acfe])
        by smtp.gmail.com with ESMTPSA id x11-20020a170902a38b00b0015e9d4a5d27sm1862056pla.23.2022.05.18.08.58.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 08:58:26 -0700 (PDT)
Message-ID: <e84bba5e-3d55-61e7-4809-70ff3960df51@gmail.com>
Date: Wed, 18 May 2022 08:58:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.9.0
Subject: Re: [poky] Need suggestion to handle COMBINED_FEATURES variable.
To: Rahul Chauhan <rahulchauhankitps@gmail.com>, poky@lists.yoctoproject.org
References: <iXLe.1652882488907922335.H4ri@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <iXLe.1652882488907922335.H4ri@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 5/18/22 7:01 AM, Rahul Chauhan wrote:
> Hi Team,
> I need one suggestion.
> 
> As we know wifi is the default distro feature.
> meta/conf/distro/include/default-distrovars.inc 
> <https://git.yoctoproject.org/poky/tree/meta/conf/distro/include/default-distrovars.inc> (this 
> file add the DISTRO_FEATURES_DEFAULT)
> 
> packagegroup-base-wifi is dependent on COMBINED_FEATURES wifi.
> 
> ${@bb.utils.contains('COMBINED_FEATURES', 'wifi', 
> 'packagegroup-base-wifi', '',d)} \
> 
> 
> I don't want to include*packagegroup-base-wifi*  package group in my build.
> 
> One way I can use DISTRO_FEATURES_remove = "wifi" in my distro.

Thats perhaps ok. poky distro config is a template that is meant to 
serve as a reference. Ideally you should be defining your own distro 
config in this case derivided from poky.conf and set the DISTRO_FEATURES 
that suites your usecase.


> 
> Second thing I can use COMBINED_FEATURES_remove = "wifi".
> But here my question is if I am using COMBINED_FEATURES_remove where is 
> the ideal place to keep this variable.
> Or suggest me what is the ideal way to remove the combined feature from 
> the build. (I dont't want to keep it in local.conf file)
> Thanks in advance.
> Rahul Chauhan
> 
> 
> 
> 
