Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web08.11404.1610837120798951844
 for <poky@lists.yoctoproject.org>;
 Sat, 16 Jan 2021 14:45:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bCedmh3N;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id 91so12895367wrj.7
        for <poky@lists.yoctoproject.org>; Sat, 16 Jan 2021 14:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=EXfgcLfFEMCKgN8gUyrROFnjzcmelFXSgUbDz8DKPno=;
        b=bCedmh3NG7s6VSsq/AX0q1VHY/jnhrgYXARS0Xdm7IPhs6LuOf6ytIcpt9qJ6tX+Ba
         LOkVnqN2irYaHn6K73m9Du1umGik7RHaDvXHtEJIPt9hX3FhGO4isefz5GP4vLItKQSQ
         hntkt7UUaxKT0FOlMRaTlIPVYC7iCJ6MrErLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=EXfgcLfFEMCKgN8gUyrROFnjzcmelFXSgUbDz8DKPno=;
        b=E0WMJlh+ZKr4sizjEkIs4PVJTu2/UXjeXi8Euoi0mhZZTa4qE0auH9fmJchtl4Ipyt
         7GFqf/cvvrSQvbvPFZce7kNqRD7nTsm1AJaWXG8DW7FuLhpVp3xiYyXZx8jW+iOEkpd2
         xpMK1dAgGntNj1IJu02ufkz3yDzcq8g+Lsvsli94f3UaQ415jOSbYliP+5xSk8wm9H8Z
         6912OLh4bDVnnQyuo0xdUEI84sqPgMuCUPsNZo9IFJVnxjQ40eAW/Acsvds8ozk+gJO/
         5ayHEnkUYSyPpsojmNMPlrBAO/iLljwcn682wd0doLzzo3CaKPxBwf5xH3TTAkRNKGIU
         md5w==
X-Gm-Message-State: AOAM530n9hyFcHqPTEI8HpFbi/9y5ypEHaJ+tHeVs0PNRd0dyKZSlEWz
	0/HXbNMf03+w0UsFwKiz3MVFTg==
X-Google-Smtp-Source: ABdhPJwGWJhIjZY6ZzXsy0jVCyHbzQSM7fCz+2SucySxj/NebOs89qjjqBj6CJ0h8zsyWcfzPh2qJQ==
X-Received: by 2002:adf:ae01:: with SMTP id x1mr19222405wrc.381.1610837119148;
        Sat, 16 Jan 2021 14:45:19 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:bfb4:a7c0:34bb:ed0e? ([2001:8b0:aba:5f3c:bfb4:a7c0:34bb:ed0e])
        by smtp.gmail.com with ESMTPSA id y14sm15463366wru.96.2021.01.16.14.45.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jan 2021 14:45:18 -0800 (PST)
Message-ID: <67bed30de305d6b690976a88434ee9ef69f3af87.camel@linuxfoundation.org>
Subject: Re: [poky] [yocto] Python3-native illegal instruction on poky dunfell
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Daniela-Marinela Bistrean <daniela.marinela.bistrean@gmail.com>
Cc: Ross Burton <ross@burtonini.com>, yocto@lists.yoctoproject.org, 
	poky@lists.yoctoproject.org
Date: Sat, 16 Jan 2021 22:45:17 +0000
In-Reply-To: <CAA7auRRUxpgZ2XdGfDbJh4oqrDqMq42Ume6F-qShr27uQA44Eg@mail.gmail.com>
References: 
	<CAA7auRTsQqBhdOfD_aYNg2Xb6ZfMxHRiWTNxR7SwEQiZ-oVbxA@mail.gmail.com>
	 <CAAnfSTv87TAn538sATnFDajmLi=SmUoxZvczCTMfZetBB1JFOw@mail.gmail.com>
	 <1659300A74F5C5D5.4243@lists.yoctoproject.org>
	 <CAA7auRRUxpgZ2XdGfDbJh4oqrDqMq42Ume6F-qShr27uQA44Eg@mail.gmail.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2021-01-16 at 16:48 +0200, Daniela-Marinela Bistrean wrote:
> Hello again,
> I solved the mystery and I am describing it here in case anyone has
> the same problem.
> 
> Basically, what I omitted last time and seems to be critical to the
> problem is that I was running a virtual machine. The one bit causing
> the issue was that avx2 was disabled in my VM and python requires it.
> Enabling avx2 fixed the issue.
> 
> I managed to reproduce the issue with qemu using the following
> command line:
> $ qemu-system-x86_64 -enable-kvm  -boot d -m 8G -cpu host,-avx2 -smp
> 4 -hda disk.bin
> 
> Hope it helps,Daniela-Marinela Bistrean

Thanks for reporting back and letting us know. Its now in the archives
in case someone else runs into it. Glad you got sorted out too!

Cheers,

Richard

