Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web09.148.1582325343805201035
 for <poky@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 14:49:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Wrd1oplT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id z12so165388wmi.4
        for <poky@lists.yoctoproject.org>; Fri, 21 Feb 2020 14:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=/+TiWI3Jp9V+XfIYY8khhLSFWazjXvuclX1oYW7OuL0=;
        b=Wrd1oplTNep23BaHwH7Nelr5sEY0/7b5Wj312GZkZqAy+VsOIJTQ2lEO7km8mHpNSw
         DU6aAB024BlTFT7INVn/Qy3JESDPy8BMDwNW/pTelKrECRV+u/jX4t5tS5vjXy9nae0p
         UMKtY/a00KYFNkZ48ZiPDsjjiuUVuVxsbjnSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=/+TiWI3Jp9V+XfIYY8khhLSFWazjXvuclX1oYW7OuL0=;
        b=Ef9VgzNR5I1M8+O519h/nUfQk84a/WDQRbF6EXlBDEYTyRXQ2BC/wtyUrdcZVgwjqj
         SHOTsi3kNoC1IKqINkvHhl1lFLUjOolOu7rC/z+oWAGF/TVE7IsVVqYs/ewet4k9lshk
         vcoCdrfKMJVdlVZxMHb3FRQEsOJex9M+0AKJVM5yLTpcTepqZhM4XI7Nd3bagnB3bhnb
         dY/GpVQvrl7l4BTp6iBqn6Zvlyu0qasW6dloVuWLMaZPnbNCS290Wm2Uc2VWLPmYloHL
         puaat0Y7Gb9YJQmDl7q+bAMOrppAr+sgDILQIIQThKP6KyzaayYa83+pGkQ2/SRXRZC+
         pq8A==
X-Gm-Message-State: APjAAAXkQcbCC8Yw8K6Ca+xhjiZQMnyV8UeVc5o0DCQrERSoDYUeyFtP
	xx98GQyQNkT2bnZLc/HV+vkLXQ==
X-Google-Smtp-Source: APXvYqxwVgwe2khuUXnSt5+o6yj5F0pQwCmeNcUeSYut451P7zTjVIb65ryNlBAt0/GwaSxplSMnTw==
X-Received: by 2002:a1c:7d93:: with SMTP id y141mr5876082wmc.111.1582325342146;
        Fri, 21 Feb 2020 14:49:02 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id q1sm5665154wrw.5.2020.02.21.14.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 14:49:01 -0800 (PST)
Message-ID: <f590f3b1920170f0aae2f4f3047430799cd34faf.camel@linuxfoundation.org>
Subject: Re: [poky] zeus build ubuntu 18.04
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: R Srinivasan <rs@toprllc.com>, poky@lists.yoctoproject.org
Date: Fri, 21 Feb 2020 22:49:00 +0000
In-Reply-To: <zYsX.1582324514042415680.U6E7@lists.yoctoproject.org>
References: <zYsX.1582324514042415680.U6E7@lists.yoctoproject.org>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-02-21 at 14:35 -0800, R Srinivasan wrote:
> I just changed my system to Ubuntu 1804 and did my first yocto build
> - totally vanilla. bitbake core-image-minimal
> 
> When I tried to run qemu - I get this error:
> 
> Failed to run qemu: Could not initialize SDL(x11 not available) -
> exiting
> 
> Never seen this before in my previous environments.
> 
> i have now installed xorg on my host but does not appear to change
> anything. 
> 
> Help please

How are you trying to run qemu? Are you expecting graphical qemu or a
console? Have you tried adding "nographic" as an option to runqemu?

Cheers,

Richard

