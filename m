Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.11091.1626096790306251452
 for <poky@lists.yoctoproject.org>;
 Mon, 12 Jul 2021 06:33:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dynamicdevices-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=wTIriTA4;
 spf=none, err=SPF record not found (domain: dynamicdevices.co.uk, ip: 209.85.221.52, mailfrom: ajlennon@dynamicdevices.co.uk)
Received: by mail-wr1-f52.google.com with SMTP id t5so11790667wrw.12
        for <poky@lists.yoctoproject.org>; Mon, 12 Jul 2021 06:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dynamicdevices-co-uk.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=oZxpYPSPFTw0ziK1LADnglsEyZPug48yIsJ4eS2I2r8=;
        b=wTIriTA4vL8m46hLpP2g2tMY2tgwjhEX3WS9N1EwbIIhdf4GGKu9kDPq6bCj/NpY0o
         8jEKOo2hiJM45ZeY73aBb6KgTp6fRJOAWFwBht9T2HmxGariAMTCEL41g7c5EtZd4UKw
         hK6QoUFwzpjcp6oXIWZDOnHRP/2rqBJNBXR1eevd1+dEJrtCvM3VKIkJxxk9E9heEPde
         g9mKYlWNb772pTqhWyXKIo7gRVPLklYt6k2Lgp3wuhev3qw01WY1Au8lAWNtnDY53waT
         RJn13BWtjdC727K5Be4favZcEGaqnyaQG50kduben2D+Gugf5XltT1BZWUywqemNMFfk
         8C6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=oZxpYPSPFTw0ziK1LADnglsEyZPug48yIsJ4eS2I2r8=;
        b=XZiOJDWGURQFQXTvkSWpdxbGWTX/KkNCXv4pYrfFz1gFyuVjEjMkFCkDBa88bFqeWg
         vrfcLi4661Sgx/XQlNjsW0HxFo9Raw3gylnySXHA0bSN18dnsS56JlwUsEFf+HI4jyNp
         BTRn2Yw1Qa0pavsB/ibxSMM+SAgkCXzQeO3GITPssPZNlpvRzDBcQUAZVqimv4I5WCyK
         kvTNesjiLB9qoXpJZzaiajax/aRPig8q8H929aAZm18vdY3YfGdPDsi74ImT46QzU+Vk
         EYbEzzh+CdPnJAfQ4grBgTDcrO4UkH4quwaPobRkE6BkbLe1409r0t8qILclZ3OI6KTN
         by2w==
X-Gm-Message-State: AOAM531Aw+lw1IfYe6RQgOQc67XlMEZfAD0BatJWf9Q3eHThDvtQvAQk
	v8bJU3fGcyo9vpbaz9QJvXTcxMlGcFtGszQB
X-Google-Smtp-Source: ABdhPJySks85q6NBFpwf2YlOEQitjugWkSEQqUq1JOEydOUlN6XFRu/cfqVx8E3N6MyRc2nWDjd8FA==
X-Received: by 2002:a5d:4bc4:: with SMTP id l4mr58025273wrt.67.1626096788463;
        Mon, 12 Jul 2021 06:33:08 -0700 (PDT)
Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from [192.168.0.219] (cpc110903-live30-2-0-cust594.17-2.cable.virginm.net. [86.7.42.83])
        by smtp.gmail.com with ESMTPSA id r17sm963557wmq.13.2021.07.12.06.33.07
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 06:33:08 -0700 (PDT)
To: poky@lists.yoctoproject.org
From: "Alex J Lennon" <ajlennon@dynamicdevices.co.uk>
Subject: Job opportunity (experienced, permie, North West UK)
Message-ID: <baadd3b0-ad98-ea80-3d3a-5f1a27b22d36@dynamicdevices.co.uk>
Date: Mon, 12 Jul 2021 14:33:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi all,

I hope this isn't inappropriate for the list (I am not a recruitment agent!)

Dynamic Devices has doing some consultancy for a Yocto Embedded Linux 
client up near Blackburn.

They are looking for a permie senior experienced Linux engineer to 
manage a remote team and provide architectural and development leadership.

Hard to find I suspect so I thought I would reach out to the community 
in case anybody is looking.

NB. They aren't looking for contractor(s) atm. If you're interested 
please contact me directly and I'll hook you up.

Kind Regards,

Alex


