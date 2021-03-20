Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.1940.1616235523621804717
 for <poky@lists.yoctoproject.org>;
 Sat, 20 Mar 2021 03:18:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FeJ/qirT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id m20-20020a7bcb940000b029010cab7e5a9fso8575269wmi.3
        for <poky@lists.yoctoproject.org>; Sat, 20 Mar 2021 03:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=LAgmhbMhooQcEKt408k9EgfVY7oZqCgaMySFZ/WbEj8=;
        b=FeJ/qirTO+JkZSJdYJSDV94OtZV8qyZgc7m4WCI5BKoDFptTZZGlv090y2u4mZ+Prx
         HXvzoX6VdClWaToncB1litVLJFDSxRjgVMrn/44YTn0MUa3Om0ks2neAvYe7vigBtMYb
         QNhh0S+MEGM2vpZ1fgrWLW34uBq+fu15HpQJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=LAgmhbMhooQcEKt408k9EgfVY7oZqCgaMySFZ/WbEj8=;
        b=lgc4vO3WKKNPfJesDje8jz1YW62lhyY1pCEQOVtivdLK9PopCpQ6glr5mhKfOWqP3m
         m7fl22BZkEEGPk5vnb8qdIBDYkHGkqIH9aSTxI2yYP0D0MVdc1Qec2ncMoXCqkqblOS/
         xC2o9dPnPXjsCWS5tTkbvbF8AdzelX1dT861OnS9WDzX1Jl2XETpW6nWciPdPhWucqam
         GQHoCrjjE0XIsB+MuuEW5KcWqDxRvWgRdThezR/yAcMqrQ2WSd8nea/RQ04fFCFXNQaV
         ipy9UIRjmD3/jon9qO0ObxyJyiC7p5WQWaCFOuULvJVzYjpVEXH0Kj9kqVshnPTle++G
         pI7A==
X-Gm-Message-State: AOAM533JqL3vlKtSkRj8bKGspTnivuC/90y777jvkvEJeuIsDBhUQHvS
	gRmG9WBLCKTgHgUROk5ApuRjKw==
X-Google-Smtp-Source: ABdhPJwzlGPfJ6LIpvfaeGqU2bvpgK9a9Ax6+BLeY3PiprjldDG/2MBI3m8AeXEOX2l/HXT1pdsCcA==
X-Received: by 2002:a05:600c:2945:: with SMTP id n5mr7336699wmd.78.1616235522074;
        Sat, 20 Mar 2021 03:18:42 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:585f:9b77:4475:9530? ([2001:8b0:aba:5f3c:585f:9b77:4475:9530])
        by smtp.gmail.com with ESMTPSA id k4sm15636604wrd.9.2021.03.20.03.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Mar 2021 03:18:41 -0700 (PDT)
Message-ID: <e30213a69ef89a8a083441bb1fa80bda3fd16c48.camel@linuxfoundation.org>
Subject: Re: [poky] gatesgarth wic pseudo issue
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Aaron Brice <aaron.brice@nikolamotor.com>, poky@lists.yoctoproject.org
Date: Sat, 20 Mar 2021 10:18:39 +0000
In-Reply-To: <CAMRWY0HLsy9xDiFMSgxt77ViptO19OrSYu-HX2dAiF07NYjNpg@mail.gmail.com>
References: 
	<CAMRWY0HLsy9xDiFMSgxt77ViptO19OrSYu-HX2dAiF07NYjNpg@mail.gmail.com>
User-Agent: Evolution 3.39.2-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

On Fri, 2021-03-19 at 16:06 -0700, Aaron Brice wrote:
> I recently upgraded from dunfell to gatesgarth and it is causing problems with the .wic file.
> 
> Our .wks file contains:
> 
> part / --source rootfs --ondisk sda --fstype=ext4 --label platform --align 1024 --use-uuid --extra-space 0 --
> overhead-factor 1
> part /bk --source rootfs-tar --ondisk sda --fstype=ext4 --label archive --align 1024 --use-uuid --extra-space
> 0 --overhead-factor 1 
> 
> Where scripts/lib/wic/plugins/source/rootfs-tar.py wic plugin creates an empty partition and puts a
> rootfs.tar.gz in it containing the contents of the previous rootfs partition.  There is a script in the first
> partition that does an install using the tar in the second partition.
> 
> On gatesgarth, the rootfs.tar.gz is created with incorrect uid/gid, the uid and gid of the user running
> yocto.  It's caused by commit c58711f0ea2a4d3b54e9f5f442abe3192f4697d0 which added PSEUDO_UNLOAD=1 to the wic
> command.  How can I get my plugin to work in this case?
> 
> Or generically, is there a better way to create a USB install wic file?

The pseudo context needs to match the environment wic is working within
which may not be the same as the parent bitbake environment, hence the unload.

If you look at the pseudo scripts you'll see that some operations are run under 
pseudo. I suspect your plugin needs to do something like that and run the
operation under pseudo.

Cheers,

Richard

