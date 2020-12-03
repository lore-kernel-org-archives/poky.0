Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.11148.1607006275125859004
 for <poky@lists.yoctoproject.org>;
 Thu, 03 Dec 2020 06:37:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YoSdZons;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 115AA38C0867
	for <poky@yoctoproject.org>; Thu,  3 Dec 2020 14:37:54 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a3so4112493wmb.5
        for <poky@yoctoproject.org>; Thu, 03 Dec 2020 06:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=LIoj8z8kQmVZPHgCYVMvP1h0DCZOy0WVKG/m1lBBoNs=;
        b=YoSdZonsbhkduRwUXTCoo2RynBcEwO1NZT3g8RF5TTHa8BhmpzkiRXWuMQpzC1hcx9
         5AdCJEOCHklHDCMnTSzzodrnRrRHncoTozMwuNlhqa1WV8F/XQpZj4ISqai5bis54vED
         GO2L4kqiR1ton4WqMYfOs0pIDElA0u/6nqahg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=LIoj8z8kQmVZPHgCYVMvP1h0DCZOy0WVKG/m1lBBoNs=;
        b=V1JRSX55HIU0gXi+KNwKPK1fu3FQAJY7b9mit7vFgr9F+mOl7U+MtZ1Y2GfwgeBMDJ
         0QMa0JKXpN7Br63e0OMUoxCgSk+kTZZ1N1JFRSkYSJLtl9VcpiFJEd9AGbm//N/Snp+X
         5uyAJ4D/aWRvpo2wZXQtsjx5vzXpQ4nGsVfzs4TZimXVirAX3zGg/mhqccwu/zpLbg7q
         DUwt6s1H73Z8Hi279nCB+WMwEd0U7jG7QtqYv3Pg/GtqR+yHhs+cchKPlhyIyUh2t5vM
         CDx3PuWoNbQJ6EltxdqYJUh7NYFhBLMXbH4VnApT1isN+pZaxF+dOKf1w6GrDCsAX6X6
         Z7GA==
X-Gm-Message-State: AOAM533LQ+RuA9/Gto3WaNUmmFn5QtnulddKbqxJLbn37YYIG0EkkwlF
	8JQRQixGu+CJLLRkyTMdpFqFYA==
X-Google-Smtp-Source: ABdhPJx7+cnlIGJUdnI0cwAUYdF99DAjlV8HgKTGaIn1yuIENGyBzVgOpAKAtG/UETEX93IPkTXORA==
X-Received: by 2002:a1c:9ecf:: with SMTP id h198mr3690910wme.104.1607006272342;
        Thu, 03 Dec 2020 06:37:52 -0800 (PST)
Received: from 9.a.5.b.a.5.d.c.a.3.5.4.d.f.4.b.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (9.a.5.b.a.5.d.c.a.3.5.4.d.f.4.b.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:b4fd:453a:cd5a:b5a9])
        by smtp.gmail.com with ESMTPSA id b74sm1931888wme.27.2020.12.03.06.37.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 06:37:51 -0800 (PST)
Message-ID: <31c05a1e3da5fae63a10ae25b8b7d71292f3dc14.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky.conf: do not write current date into distro version
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, poky@yoctoproject.org
Date: Thu, 03 Dec 2020 14:37:49 +0000
In-Reply-To: <20201203133628.12420-1-alex.kanavin@gmail.com>
References: <20201203133628.12420-1-alex.kanavin@gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-12-03 at 14:36 +0100, Alexander Kanavin wrote:
> This leaks into target installs of items like os-release,
> and makes them non-reproducible.
> 
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  meta-poky/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 31dc110bf6..20e258714a 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -1,6 +1,6 @@
>  DISTRO = "poky"
>  DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
> -DISTRO_VERSION = "3.2+snapshot-${DATE}"
> +DISTRO_VERSION = "3.2+snapshot${@oe.utils.ifelse(d.getVar('BUILD_REPRODUCIBLE_BINARIES') == '1', '', '-${DATE}')}"
>  DISTRO_CODENAME = "master"
>  SDK_VENDOR = "-pokysdk"
>  SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"

Perhaps we should replace this with the current poky git hash?

Cheers,

Richard

