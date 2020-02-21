Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
 by mx.groups.io with SMTP id smtpd.web10.74.1582324994404027336
 for <poky@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 14:43:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RFtJuGUw;
 spf=pass (domain: gmail.com, ip: 209.85.166.172, mailfrom: raj.khem@gmail.com)
Received: by mail-il1-f172.google.com with SMTP id v13so2969926iln.4
        for <poky@lists.yoctoproject.org>; Fri, 21 Feb 2020 14:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=cnhDrdZ2WhaToGe2+qge2R24wfPCBrk/na4r8yQ0ZIA=;
        b=RFtJuGUwq5OJKRbt0mjeBZbR/2mQFCgLB6AMZsBVBMswmnL0c56g72L9klg7VhBHiI
         P2Cj7u+b8V4YCxfaKfTejfIiqcGUqp5QfsgkslQZ1n6BiY/dZwKy5d9KJUFKoOMRLtn2
         qf0HPIWJHf/8HUy66LcDp9Fg27MmF0xpVUVYE+PfqPKriyfkUOgJHJEM9UNgm6SQvfSE
         VMjaayVYzTTgnHMz0412azXwNHzXyTXmiB7nt06AR4VSt55vIDYfa44/lsw1cU1UNzpY
         mtCiXZ/E/STstkaUASi4GDCJTsrLRYwZe/KotlSbwaoE+Aef7Bondg/ewJDNQ6P1VnUF
         8gGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cnhDrdZ2WhaToGe2+qge2R24wfPCBrk/na4r8yQ0ZIA=;
        b=axgCTuiR3M7MaG0Mu91mgDz2T7De6PcAST7GamxfPH8LoyJDQmygzTX3FjE/QsVD73
         R4bzpfic9eDIWHP6j87HeTcCj567xaXcPK3pJa6yEsfRwh404Ci19efwFW3aWaKu1fjb
         TH+pEuFtpIYHK29xQ7yVRelfL1lafAGtUWtP6EpO8GvrQCHMcVyn0Ekk+/iRSNrXl+vH
         5q3WWpvv/X78214log1n/oaVheTv2POpE6F0OThktMCz0CL5ChIla3jm04HM0zTCAf6o
         e8YU3Q5zMigGQKS+9fV221dyo8C78sejs+hvQxTLgcY86dLCasUrgI1p7FRep8Hg8+o/
         7/3A==
X-Gm-Message-State: APjAAAWHCOyT2j/9tUQaoy8PZre3Nm+ZisG8lv20l5D7//9yZYVtRF7R
	lVe8xhBCPQiL5RGtVoZMwTgYE92zZCk=
X-Google-Smtp-Source: APXvYqzQLL6jegiMDA5qZj2BLXUEOjFtQRt7AsKQ6tXqjILreucIPnftdtku4GFvd9c+ftTF3jHTcQ==
X-Received: by 2002:a92:9603:: with SMTP id g3mr40567725ilh.231.1582324993381;
        Fri, 21 Feb 2020 14:43:13 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:949d:f94a:fa18:f7b4? ([2601:646:9200:4e0:949d:f94a:fa18:f7b4])
        by smtp.gmail.com with ESMTPSA id s88sm1345879ilk.79.2020.02.21.14.43.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2020 14:43:12 -0800 (PST)
Subject: Re: [poky] zeus build ubuntu 18.04
To: R Srinivasan <rs@toprllc.com>, poky@lists.yoctoproject.org
References: <zYsX.1582324514042415680.U6E7@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <13ec173e-34ba-828f-c520-00a7b1ebaa06@gmail.com>
Date: Fri, 21 Feb 2020 14:43:11 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <zYsX.1582324514042415680.U6E7@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 2/21/20 2:35 PM, R Srinivasan wrote:
> I just changed my system to Ubuntu 1804 and did my first yocto build - 
> totally vanilla. bitbake core-image-minimal
> 
> When I tried to run qemu - I get this error:
> 
> Failed to run qemu: Could not initialize SDL(x11 not available) - exiting
> 
> Never seen this before in my previous environments.
> 
> i have now installed xorg on my host but does not appear to change 
> anything.
> 

perhaps rebuild the image after installing x11.

> Help please
> -- 
> R Srinivasan
> rs@toprllc.com
> 
> 
> 
