Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web10.10816.1634654638075569328
 for <poky@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 07:43:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Ecm55U1l;
 spf=pass (domain: konsulko.com, ip: 209.85.222.181, mailfrom: trini@konsulko.com)
Received: by mail-qk1-f181.google.com with SMTP id r15so134994qkp.8
        for <poky@lists.yoctoproject.org>; Tue, 19 Oct 2021 07:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=COllHaKcj8Gxfc+YwsgIitq+/6uR/SsTZyCgS0rsgv4=;
        b=Ecm55U1lUcWopK9jD8xiSTZimZ6mWRDOVZUPNXTJ90NRBre4q0hTDBs3Kavl/B4/JO
         ngQoY8FtExrUBYeSOixCDEKD7BPdmOKWgcIarKuqLI9dKVIjMEflwFLYMIoiFFAeKcQr
         zDA0muVsr8qid4SWpf88hmt/0bWU5MF4P9GhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=COllHaKcj8Gxfc+YwsgIitq+/6uR/SsTZyCgS0rsgv4=;
        b=eEei4L4PaSMDTVdGPl29v4FNI2fmLBg7t+n2DG6UutgfNZOM3ZfyT13hyEaiUgIBIa
         NmoqS78MXUAPpFT/xxk0w59PPVacxoL4jREuREjIZgJVD6h6PX5qR8zWlPYXKh5ELgs/
         BmxLJVL74cipFgSOteywOXvwTzMyfWlpu52iW2AhSMBj3qX/Sp/fiYnE8biN/0KHEIf5
         4urjal5L55KuvJb/Kr5nBg/F3siEa0JWXpuy+Pvm79jyadzM7nU/uKni0gbgijOj/pOT
         r1hOk6OTQwJ5212MzRMXuwEqYX1ZaphnF9bgSB3Lj4xZzKoZCvKppyYoKQ7Zt38K/vel
         SFgQ==
X-Gm-Message-State: AOAM531wQea4GzSvYz1r0KFdZ77QevKDnyIkQKLmgPqz3dtggl22MC1M
	S0/qRapilvK5+jmYByY6Oh8zj1+KcYM6jg==
X-Google-Smtp-Source: ABdhPJwk2TutU+QjCQ2JQCnk9qtszVDkj5QeUx18O3ViU7ESmA10Ji3NraZN3hkDzkJUcqDXQpI22A==
X-Received: by 2002:a37:9703:: with SMTP id z3mr240584qkd.517.1634654637173;
        Tue, 19 Oct 2021 07:43:57 -0700 (PDT)
Return-Path: <trini@konsulko.com>
Received: from bill-the-cat (2603-6081-7b01-cbda-b5ac-d4ae-96e7-5d3d.res6.spectrum.com. [2603:6081:7b01:cbda:b5ac:d4ae:96e7:5d3d])
        by smtp.gmail.com with ESMTPSA id m28sm7994714qkm.23.2021.10.19.07.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 07:43:56 -0700 (PDT)
Date: Tue, 19 Oct 2021 10:43:55 -0400
From: "Tom Rini" <trini@konsulko.com>
To: Jon Mason <jdmason@kudzu.us>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH 1/2] beaglebone-yocto: use correct CPU and QB_RNG
Message-ID: <20211019144355.GF7964@bill-the-cat>
References: <20211014143124.13941-1-jdmason@kudzu.us>
 <CAPoiz9y9V0Q2h=_YbMEhV9gRHokcExN+zrtdQD0h=7ZSgDf-kA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPoiz9y9V0Q2h=_YbMEhV9gRHokcExN+zrtdQD0h=7ZSgDf-kA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 19, 2021 at 10:38:57AM -0400, Jon Mason wrote:

> Please drop this patch.  There is a bug in it.  cortex-a8 doesn't work
> with the virt machine.  Also, it is still lacking the serial settings
> to get it working properly.  I have a patch now that is working, but
> actually waiting for CI to pass before sending it this time.

I guess I'll re-ask, given the rest of the thread.  As this isn't, and
can't, emulate the beaglebone in QEMU, should we not just drop all of
these runqemu related options?

-- 
Tom
