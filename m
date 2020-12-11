Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web08.9441.1607704454136165619
 for <poky@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 08:34:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=opmWjRHE;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id n7so7485210pgg.2
        for <poky@lists.yoctoproject.org>; Fri, 11 Dec 2020 08:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=yTe6s7+iMQfMqcuqmvhhjesM2T4i7Dcsnvy+2Qa9C/4=;
        b=opmWjRHE/Kz1pcjR/ZKIMupK93hdCCwaOTmHYchnrc2g1/lIbyGwpfkeMLN6vXbI4Z
         gOf1CqO4fhrsybeekfG4z9kDViRVqhK+RT57e1+zeWN5lDQEJUGGoPAuuO4dWYmUfuRL
         XMFkFSP/7RRRAhKz1MWj9hzcO1S3sqplnxe18s80XghYu5axwbLjQAEQS/Mf9UBKHu+A
         fxvldgyNTNvqmLzcXkRG4ZRq1TjZ6UX4IYaGf1rvwp1KfD4RrZrHYLZkvsAbD5Y1lGuX
         pNj/pY4n0K0eQ0LnyrRmJiCjcG9SfuC5bIzUNXed18DGfFUQkrqKWHKCJDCL8aTbcn/U
         5kQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yTe6s7+iMQfMqcuqmvhhjesM2T4i7Dcsnvy+2Qa9C/4=;
        b=nbYs5ANAMpR6NdAWuUFw6akm3WLQnxJH+GYKTZgR+r4zdCl1rpj7IlFM045xFYjrvm
         2K4stSk7x7E8n4kKRsnqcJFBOqr3r/OSOZr3mghThVNBCA2cAFkphkUCz3PF8rflmZU/
         00Yqxh6g1sUUFLfi5cBEY+v5OV+gSRGBYGpkRRECS3fDBCbHTNDgQPRhr0QveqjMZi5Y
         jjpbVUvpgn4/+0XQiWDmuEBiydFkhX8+yA0nBFWjB6xj1EAD3jJLFfcF+VtCDrCiqCJZ
         n+mqqqOWQO19bO2Dlybngt0h+JSfUvQi1gkg9Q3GrzIdLZYGgocicbOxbN9D02zSYq9y
         cpEg==
X-Gm-Message-State: AOAM531Vq7g4ssXOpwwNIU3cffhH0sCszx/Yny2VIc7Y0qfp6HcMSJ4J
	YLkoh61aVgyzxYGpXeQW2owS+B31wra27w==
X-Google-Smtp-Source: ABdhPJzoW3hJtMC1bkwwXP45Q4rGiQbfVxOlzJe3KFLnvmQjkqGJiy1ZUer2AhBgTxjArwOt5msO9g==
X-Received: by 2002:a62:1686:0:b029:197:5d15:2733 with SMTP id 128-20020a6216860000b02901975d152733mr12483179pfw.81.1607704453075;
        Fri, 11 Dec 2020 08:34:13 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::5bf5? ([2601:646:9200:4e0::5bf5])
        by smtp.gmail.com with ESMTPSA id x12sm10554759pgf.13.2020.12.11.08.34.12
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 08:34:12 -0800 (PST)
Subject: Re: [poky] Unable to complete even the basic tutorial about yocto #poky
To: poky@lists.yoctoproject.org
References: <36ff3eb5-6ffa-1d50-3f86-fbb74773b1b6@gmail.com>
 <5220.1607674688725471383@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <bc4af958-46e9-00fe-6372-cf613bb46cea@gmail.com>
Date: Fri, 11 Dec 2020 08:34:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <5220.1607674688725471383@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 12/11/20 12:18 AM, arunlee@gmail.com wrote:
> On Thu, Dec 10, 2020 at 09:12 AM, Khem Raj wrote:
> 
>     can you try runqemu nographic
> 
> runqemu nographics works fine
> 

OK, then perhaps try adding in local.conf
PACKAGECONFIG_append_pn-qemu-system-native = " sdl"

> 
> 
> 
