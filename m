Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web08.921.1606331970889039970
 for <poky@lists.yoctoproject.org>;
 Wed, 25 Nov 2020 11:19:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RIAr1mUI;
 spf=pass (domain: gmail.com, ip: 209.85.210.181, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id b63so3225305pfg.12
        for <poky@lists.yoctoproject.org>; Wed, 25 Nov 2020 11:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=E4F4rXQeT5B6v3UDKFNBn/5NcbJkglL+gokOzckKv+c=;
        b=RIAr1mUIL+nO2G3PSdPY27ORj/7pbbp6Er1CSmKk440FBs1dLT5ZC4NM+OAPKkA+2M
         N4WoITc3bbitw3oNotfMWkP5+gSpoC1vpV0xWeKmHmb5oFIzYwQ8JaS+koE3QaRF8rKk
         2WCCH5Li+QalrDQj6S7VQmZz5otfWwdczobsZMQaiiDegjdqwh2u83kPUcVz4MpQgIhG
         9fygxyFb+Pqli2pGk4tKgaVr1w3jQ/lfuBRulGHkG7K7IQlY5f/PRTxebVq44g09/oFI
         zBq7qo64znAK+1qc5ebSEPSu/0BsZE6WvxG5ksPqsTV0tdDQZtTcQTlcFHsE6nCMBWHG
         pv2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=E4F4rXQeT5B6v3UDKFNBn/5NcbJkglL+gokOzckKv+c=;
        b=AOc3c5QQjKgCOslddt42hBmM+5Jx4Acw7K9jqPhvy5KqjULN9oneEFmo4vlRWeI8rq
         3AJytvoZzWf4jV3UIgztTTABIple8BbdhxwfdsWVnaNw4NjOqINXt/c4tnN1VEqnBRx4
         tkZBDUKgf3Sz6XRKqWFZ41GWodqQtumTVHsMdJ3xuIZ5JqEYxaczQ0aIXYLAt8GxS9eZ
         aNzqYzMsu8EPXjyDRIzOKSGu1x46Ud3v04/AmuoooRDK/njBwQiiFy+B29sQ/1E/o7Mx
         qXYWEtiTsV4nmAUyNOolqKvEXAVYmX0rcLO4VOzCDllAnuadTuE5GQ55kTzmEk2sDd8F
         1yiQ==
X-Gm-Message-State: AOAM531TqFt+BUTdeImPeBV1PqbHxP5lh/wtAicCyWx+kbXUfVen2YgN
	6/fwETOKBYEIVtN8Ws8/zyrDUiLF3wbNZw==
X-Google-Smtp-Source: ABdhPJxTuhNCsMPmbQRjAixdcu11bOVYjAm/zUSu9KVbBctBeENRZkSl0laT6QaOW6cWRxw33Ax3XQ==
X-Received: by 2002:a17:90a:a090:: with SMTP id r16mr5963131pjp.179.1606331970089;
        Wed, 25 Nov 2020 11:19:30 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:ecdb:94e8:2d6c:dea4? ([2601:646:9200:4e0:ecdb:94e8:2d6c:dea4])
        by smtp.gmail.com with ESMTPSA id p14sm3572551pjo.53.2020.11.25.11.19.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 11:19:29 -0800 (PST)
Subject: Re: [poky] gfortran omp_lib.mod and omp_lib.h is missing #gcc
To: benoit.sansoni@gmail.com, poky@lists.yoctoproject.org
References: <5Etz.1606303593611019998.offr@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <1a8eda55-0d46-def1-183f-ec384e449172@gmail.com>
Date: Wed, 25 Nov 2020 11:19:28 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <5Etz.1606303593611019998.offr@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 11/25/20 3:26 AM, benoit.sansoni@gmail.com wrote:
> Hi,
> 
> I need openmp used by gfortran.
> omp_lib.mod and omp_lib.h are missing even if I added libgfortran and 
> libgfortran-dev recipes in my yocto image.
> 
> Do you have an idea how I can provide those files in my image ?
> 

these are not part of standard compiler runtime but rather part of 
compiler headers. So you wont be able to include them unless you add 
target gfortran compiler on your image

> Thanks
> Benoit
> 
> 
> 
> 
