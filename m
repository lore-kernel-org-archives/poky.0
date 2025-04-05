Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9EC7C36018
	for <webhook@archiver.kernel.org>; Sat,  5 Apr 2025 04:56:11 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web10.1036.1743828968628744266
 for <poky@lists.yoctoproject.org>;
 Fri, 04 Apr 2025 21:56:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=co0DMWHz;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-225477548e1so26708005ad.0
        for <poky@lists.yoctoproject.org>; Fri, 04 Apr 2025 21:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743828968; x=1744433768; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6UZIgFXC0blEY0LAWCopHJlkHGlAxPvm5j4Hvo+r71Y=;
        b=co0DMWHzXPu4BIGsPZy12C74BakM+i02E0OJgHSqBUULhpCoD3RDRn+GyBeefR2b+f
         YPwbeDjQeJPt/BiHHOmm9jSsQ5kC6Msi1duvdDYGQwIrYW0vqL1buoYg4gFqOlqgungu
         sWXvH7DZF8crzPYPY+nPKhCI5R6KfSjlIkWOH+rVmRcV2NXVJZj41cYoGLTM6nQqynnE
         UyrM3rasMD7C/lMnj39wE2SjZqbNv+UC0MrWUL5+uJeNzpBAcdyDk7KweBEcyGaOqB6Z
         5ob88PmVQa2kxobAoMt3G8SFQfyy8kUSD1c+LLlAw58mf9uN0vZsIiY6C0OGMcmg6zR0
         gL+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743828968; x=1744433768;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6UZIgFXC0blEY0LAWCopHJlkHGlAxPvm5j4Hvo+r71Y=;
        b=WhmNxga9lShau6W8RBnCtGkKZ7KQtgfvv7gZqvRfXGzvueyeWpOYnCGntsvqu6bf3I
         cfMaC6TkcWltDtQzfO71uO77KXE8oDya8ArHEUBAp/cwUq5IeDzJf87442Q657n90Tjw
         U0X7xbb7aDgc3OZU1h/t14uR8/u1bMrQwPVFUjDmkvy3amcNCLcKY5ldHifDKvLGAOZm
         ZZLqD3Y0IQ8/1HAsRdLvH8Lip8P9hvuWYtEBRk1kMTLepNi0NkYt90JlV1Lq1h2Qjk32
         cXc383ZP5Wnh0FXsOkuzDsiCu/zzx9c/thC158jMqE6xSeDj+dWQf3/ahLW7WURf1AR2
         JMzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkkI45xu6jNfb2lkkAeqwkCDeXXqzXqmK7XhoXlLRfIdz3eTnvRrGz4n8+lDDEhfREVCOT@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxdpNBCr+0zG8YsgqlxSH1vVEyvgENZu/xax5+KPxTFqhNNFkSv
	U1Zg2eM4ev6gEL5Riy+0yoUZXALjjsVZ2/olSClIqH37w5DJtBA7
X-Gm-Gg: ASbGnctnLpj0YJysbALPiEtiho/zvL/WoMUftjBP5vDjmXYwhMMzRBOwnyAVu/Uvsr6
	HIrz3aEmJTvHu7papZZSrtAETlt99bcE1TDkImB9K3tNeVCtNSTBSy2E0jaHXVy0ymTYF9w372H
	d8tPcJV0IqOKOojnyFbEiIfzon6fMKbqAJ5icAdXIIHZSNUT4z+8NKnjjeRkKt7ck+l22cIedlu
	fPqW/kD877EpkuF5srlNV532iWqerKDo/OEObtsP/702MtRoV8zrc9BJ7OllM+6bNBZX8GgWdmV
	G/Z8nRXFHwq+w2IBO4DV5gk93qG9tQl7UtS1a+xPZ1oEJb+5dffSqTFvfv1+TfADaIV3Mqo8mvw
	PEDflTxXfr25T21uNrsQrjMBffZhJ1xKD
X-Google-Smtp-Source: AGHT+IHQELulE5r7laVngNFRNirOA+jg0TCR9fmAaCfDrAV9ANXzLk8g0+kU5el/A7S778xURE5UmA==
X-Received: by 2002:a17:903:1c2:b0:21a:8300:b9d5 with SMTP id d9443c01a7336-22a8a8721damr60563795ad.23.1743828967834;
        Fri, 04 Apr 2025 21:56:07 -0700 (PDT)
Received: from ?IPV6:2601:646:8201:fd20:ec3d:c567:e156:a268? ([2601:646:8201:fd20:ec3d:c567:e156:a268])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-229787776f8sm41367555ad.256.2025.04.04.21.56.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 21:56:07 -0700 (PDT)
Message-ID: <4890d1ff-3bdf-40e3-80d0-834339b2b8b0@gmail.com>
Date: Fri, 4 Apr 2025 21:56:06 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] systemd-systemctl-native broken after update to walnascar
 #poky #yocto
To: jan.kircher@leica-microsystems.com, poky@lists.yoctoproject.org,
 Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>
References: <1HoH.1743770357950104311.rsrM@lists.yoctoproject.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1HoH.1743770357950104311.rsrM@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 05 Apr 2025 04:56:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13589

On 4/4/25 5:39 AM, Jan Kircher via lists.yoctoproject.org wrote:
> Hi,
> 
> when we upgrade poky to walnascar, our builds fail due to systemd-systemctl-native (please find the log attached).
> 
> As a workaround we disabled Werror-nonnull with a simple .bbappend:
> BUILD_CFLAGS += "-Wno-error=nonnull"
> 
> We managed to narrow down the issue to our use of DEBUG_BUILD=1 in local.conf. Images can be built again when we remove it. However, we struggle to solve this issue on our own. Is it possible for anyone to reproduce this issue? Adding DEBUG_BUILD=1 to local.conf should be enough, then bitbake systemd-systemctl-native should fail.
> 

I think you have uncovered a systemd bug, I have sent a possible fix 
upstream, please test it in your scenario and see if it work.

https://github.com/systemd/systemd/pull/37017

I observed few things while looking at your build logs. The failing file 
is compiled with -O0 by default but when we do a DEBUG_BUILD = "1" it 
appends -Og -g to compiler flags, -Og != O0 so we are kind of overriding 
upstream's behavior and thusly it may find problems like this, bigger 
issue is it is untested path.

Secondly, you observed this problem when compiling a native package, I 
wonder if there is value in extending DEBUG_BUILD to non-target packages 
at all unless we want to debug native/nativesdk/cross packages which 
often is not the case. So maybe we should limit the scope of DEBUG_BUILD 
to just target packages.

> Greetings,
> Jan
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13587): https://lists.yoctoproject.org/g/poky/message/13587
> Mute This Topic: https://lists.yoctoproject.org/mt/112083239/1997914
> Mute #poky:https://lists.yoctoproject.org/g/poky/mutehashtag/poky
> Mute #yocto:https://lists.yoctoproject.org/g/poky/mutehashtag/yocto
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
-Khem

