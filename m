Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.10213.1583488116841986015
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Mar 2020 01:48:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Tj+47OJ6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id p9so1631977wmc.2
        for <poky@lists.yoctoproject.org>; Fri, 06 Mar 2020 01:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=iVU+9ju+xrz3Fwn/ReHEUYFDtnAdIP7T3HwQlrjKXaU=;
        b=Tj+47OJ6zkag3C9nvezrLTR34yBppPokiwUIDpHzlG4Kig2u01WT4PZIMoER0h+7OL
         RhP3nsASmSEOvJ0+t3pVzrpkDMyHHTuKMrlzDqUbT6fgIVGTXNuFacEsygpmATyf9coZ
         WUNg2Vv107uzWIWoY1uTK83Y5CXIDfCgCo51A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=iVU+9ju+xrz3Fwn/ReHEUYFDtnAdIP7T3HwQlrjKXaU=;
        b=jVxRrk2OqOsmoPykmttRwbk0MsyWr7eYUmacx5ZyjKvmi2MWwwXatZndt47HrKjPDQ
         Djc+7rtu6dZKuYLEdn0FfY/2opIbMN7RPGx86KbtJKAWxJQI+wO4hHueLIOwNuJDsK6n
         Gz6oC4t8Q7r0b2jTHWVz6SJAwcwehJQRNRZ3WWab5zkrb1FKob7/9RYSbrLRJ7IpR63R
         2gzAYXdLmnm1CLELZ1uegQrCR4KhDUdTY828072t0VRTsMXcoiqzbv8IbHaBvJsZngHB
         K9wkUR8uWwXE5v6q6DKz0Xt94m3KUQY5QYqfZZEC4nBmutUr9Ig9nCYHc/8BKZFf0DnA
         NiYA==
X-Gm-Message-State: ANhLgQ1qEcPJbXg+BYQBKamq3Klfb1cPBuJTuLbA2uL5fagxZyEVSSo3
	hB+oFiyujyx3vJW5QzeOuk8IWw==
X-Google-Smtp-Source: ADFU+vvga/ZEdwJGpWjJF/JvhO0hkWUS6uv7Nkc1CXhico7ZOoecwprjAPGVkhnZzdfvmBu0mULgPQ==
X-Received: by 2002:a7b:c354:: with SMTP id l20mr2268752wmj.40.1583488115281;
        Fri, 06 Mar 2020 01:48:35 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id p16sm48054435wrw.15.2020.03.06.01.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2020 01:48:34 -0800 (PST)
Message-ID: <329c92c2210817903bb3a07f46e4019484665373.camel@linuxfoundation.org>
Subject: Re: [poky] 'require' statement and bbappend
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: thomas.koeller@baslerweb.com, poky@lists.yoctoproject.org
Date: Fri, 06 Mar 2020 09:48:33 +0000
In-Reply-To: <X4K7.1583487268784158714.Q64w@lists.yoctoproject.org>
References: <X4K7.1583487268784158714.Q64w@lists.yoctoproject.org>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-03-06 at 01:34 -0800, thomas.koeller@baslerweb.com wrote:
> I have a recipe that I want to extend through a .bbappend file. The
> recipe contains a line that says,
> 
> require linux-imx-src-${PV}.inc
> 
> Now my .bbappend file changes PV like so:
> 
> PV = "4.14.98-git${SRCPV}"

In order to parse, bitbake has to immediately expand PV at that point
in parsing. Its like writing:

REQUIRE_FILE := "linux-imx-src-${PV}.inc"
require ${REQUIRE_FILE}

if that helps explain it?

The parser has to know the value of PV there at that point in time.

Cheers,

Richard

