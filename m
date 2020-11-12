Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web12.11731.1605217584258685784
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 13:46:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=I2vswUc+;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f65.google.com with SMTP id j7so7588264wrp.3
        for <poky@lists.yoctoproject.org>; Thu, 12 Nov 2020 13:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=57i46wQKweL6Gv3dm9B3O32mI18j/IpI3VJcxyDCd0o=;
        b=I2vswUc+90I+GIU7iAIKZFnq27hG1mUgEK8lYxtQfSJuWEr92ArCw8N1DtryuHeGwK
         SKybTvw3bWA/gw63nLzkK566oUyKn30d9gbcB1VbgZyJyKl2tG/qpZoDofH2Y4lKDsyB
         nA6RcT6kIlPJujeiWT2YfzKTXWeWIQ07tnHGM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=57i46wQKweL6Gv3dm9B3O32mI18j/IpI3VJcxyDCd0o=;
        b=Twgymoe38Ac8GxX6DB4EVUC/2Pmgxz8KaSeJEcC7CzwTgqdeYOdN+isi/rQwNFtr79
         o+m4pLSMxmuQrCa69ZY8MnXW+Iyo646YUIIcqaOow/bwtL0xybA3+isdv8CimypeHLpO
         tDzf5S0jGDi+h6It76neIiycUpcrcwpMvCuiC4MBe9hvzvI0N2Q4EVq6SDarxCli9B1h
         p3oh/b7cQZpGazjsQyezptshiA91VscY1Xp/ylNZwSotrrxfu/Pu7VVSIseDvvEe/8/A
         cdudyhypihfi6D9k+D1+QuqttVkOXQprJFdTesUGdT6frJm7zsLKZDqCONKMn2E/KGNj
         kG5g==
X-Gm-Message-State: AOAM530KwLOPyky3c7MOwdfva50eMHionGOcJE8JjGM0jzo7yWfwBQ7t
	bdfYQa+DW57VtNoZ8w5oTTc+Lg==
X-Google-Smtp-Source: ABdhPJyod2HyX9X6HppTvSq7oD9YLmjzVCGgTox9mjMsPRs8B+OrP2APgRDmVhZczeWy+v5WFQ1dhA==
X-Received: by 2002:a5d:42c9:: with SMTP id t9mr1775675wrr.13.1605217582198;
        Thu, 12 Nov 2020 13:46:22 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from e.3.a.b.8.4.f.3.4.e.5.7.b.c.8.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (e.3.a.b.8.4.f.3.4.e.5.7.b.c.8.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:48cb:75e4:3f48:ba3e])
        by smtp.gmail.com with ESMTPSA id b8sm7577299wmj.9.2020.11.12.13.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 13:46:21 -0800 (PST)
Message-ID: <350488a2acca2dc4d2935f7b3a83799bb22a825b.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v4] poky-tiny: enable section removal
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, poky@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
Date: Thu, 12 Nov 2020 21:46:20 +0000
In-Reply-To: <20201110230319.29851-1-okaya@kernel.org>
References: <20201110230319.29851-1-okaya@kernel.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-11-10 at 23:03 +0000, Sinan Kaya wrote:
> Use GCC sections flags so that unused sections can be garbage
> collected at link time.
> 
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>  meta-poky/conf/distro/poky-tiny.conf | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)

I did try this again but still has perl-native issues:

https://autobuilder.yoctoproject.org/typhoon/#/builders/15/builds/2977
https://autobuilder.yoctoproject.org/typhoon/#/builders/87/builds/1566
(and other selftest failures too)

Cheers,

Richard

