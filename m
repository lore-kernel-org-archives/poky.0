Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web08.10720.1628091418005852442
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 08:36:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=L7YI5TM+;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id p5so2748103wro.7
        for <poky@lists.yoctoproject.org>; Wed, 04 Aug 2021 08:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=aOHBlUmeqhJ0Jw0rUS+nKUZJ0NfkcBHKtkvkYO0maao=;
        b=L7YI5TM+Crjmhd3Va2gpqbYeWuHrPrViE9DovgMuJPA/rleTr/RS5+q5uLV6B5LmbU
         OVctbIxzHuxBsnTL/FEi0wXT5dI6h2CE9ug3LgbICZWs7tJyGImtUxj7KPTSEvffWgBG
         N8AZKQLLxQOus5VxFmk2xHGVIX8aliSQBtsB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=aOHBlUmeqhJ0Jw0rUS+nKUZJ0NfkcBHKtkvkYO0maao=;
        b=dWe1NZfGlsC3ExqZ6NWI5q528x+u8bVeNNsYWdCOmYBEBvxpHpEa9U56/DfF3thv2G
         PyMgUqa4zx5YxBnPa0+zoUXFLW+aOGFeKkrHk0pjR8j47sVqbe0idfZi5KZVXdDP1OvA
         unqq8VlD/nYh+6UEjPwrGUvoNZMbUamuwgGefF6zFXRTlIek4RVtGn8inugrvgvqdoAZ
         LQDojwOsIUFnh94bbmQNY52gfZ/hDB0XrzTuKV4ii3JK8Fqb7NFxUmxVee3jisiz1Kap
         VG+FwdGJz5efpbChSUAdaps4S7hDd7QYWXfWkat283uqZaXOKY3bnIpiJSV3uw0NQMJu
         LGKg==
X-Gm-Message-State: AOAM532oTa4vbwmcNuvmlWJLuwV1fDjShpc2QVjZKalq1gMeAuzvpDGA
	UvADujQiMc7SXyoTCyeB2UvYFg==
X-Google-Smtp-Source: ABdhPJwjMfrjufHs6/OhwLTV5NB4JpL4g6MDAlJ9FPeU+9xI96SfGTk1f4Kj+7LXcumJWOfJdTZSTw==
X-Received: by 2002:adf:b30a:: with SMTP id j10mr28555118wrd.43.1628091416655;
        Wed, 04 Aug 2021 08:36:56 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:895b:15d0:6c2e:72fa? ([2001:8b0:aba:5f3c:895b:15d0:6c2e:72fa])
        by smtp.gmail.com with ESMTPSA id k186sm7578666wme.45.2021.08.04.08.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 08:36:56 -0700 (PDT)
Message-ID: <8f99ba33a0e1a1c1d2d7c2f01a2ff12eaaf1334a.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky: Use SDKPATHINSTALL instead of SDKPATH
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>, 
	poky@lists.yoctoproject.org
Date: Wed, 04 Aug 2021 16:36:55 +0100
In-Reply-To: <d8c90433-0676-59ad-2561-b702155007c1@bootlin.com>
References: <20210730155049.3368068-1-richard.purdie@linuxfoundation.org>
	 <d8c90433-0676-59ad-2561-b702155007c1@bootlin.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2021-08-03 at 14:32 +0200, Michael Opdenacker wrote:
> Hi Richard,
> 
> On 7/30/21 5:50 PM, Richard Purdie wrote:
> > SDKPATHINSTALL is the default installation path used for the SDK but is not
> > the path encoded into every SDK binary as the default path. This change
> > allows it to contain things like dates without requiring every nativesdk
> > recipe to rebuild.
> 
> 
> I realize that SDKPATHINSTALL is not documented while SDKPATH is.
> Is it worth adding to the documentation?

Yes, and this one needs a note in the migration guide too as we should
recommend distros switch to it like I did with Poky.

Cheers,

Richard

