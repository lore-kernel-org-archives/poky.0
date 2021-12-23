Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web09.30878.1640250319337320160
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Dec 2021 01:05:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DPdjmcQQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id w20so1137638wra.9
        for <poky@lists.yoctoproject.org>; Thu, 23 Dec 2021 01:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=sVb7+q6DTApuX8mTRlUgSe8ujBl1oO3GQa8LoisHKHg=;
        b=DPdjmcQQi7t4vKI1/dQq36WmVw3EETyNjVFUtp5uaqOurR3/gH4nHC6jK1e7yJCUIY
         /Nn9W5iyb/dseJhTflad1+ykX+b9kwDcQdIgjZEwd6Y4fHJmNZvoBOgs8R3LDk0iw5rZ
         PiIRkoNQQkfrHC2Q+0P4wlpEp1E3uI+mu2hWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=sVb7+q6DTApuX8mTRlUgSe8ujBl1oO3GQa8LoisHKHg=;
        b=6x0pbuKo44JYQmTo4BsEv0avrMaWV+A/5tA8pWbXECrumgb7KOWDLE0UZocTdnC09D
         ivZcg7boBiOIeW3NUMTGOnvhVTwBOt6B+M+AUePwcbcSqcegi+ssqkS2aIxPSbeODDLC
         7ka/vIUFRum0Yxj07yTMLRHnadH3hwXv4PIipf7oKpJLzae6O0XMZkHYYwWImEk9TON2
         y3YWrVr59MtCP9WsDRbAjO59SAitIJl+gUhWFlGYWS1IbxqhnnQRxfjDZfAo5KC0XXLz
         5CSCaXzK9wZY5+bbXnyBSrkkKsGErNGXMNMcvyOjTPj7HLIaIzGKRdzxbWABK6MlceS/
         O7cQ==
X-Gm-Message-State: AOAM532OcUp8wgPwDZfhuL8ieoJldGfLN2BYgwReZja0UkDvYPuQC4vt
	akEHQ218M0vLe7wx5Bx6HyNXfA==
X-Google-Smtp-Source: ABdhPJxD34JArKm3OY9tcXFpA02i5zO1NxAXcxwirwN4WyCSUfZqbQupXqUQIOHg5NQHXPYh2gVIYA==
X-Received: by 2002:adf:a111:: with SMTP id o17mr1007829wro.526.1640250317943;
        Thu, 23 Dec 2021 01:05:17 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:1853:9343:6af4:2b3f? ([2001:8b0:aba:5f3c:1853:9343:6af4:2b3f])
        by smtp.gmail.com with ESMTPSA id g6sm4393535wri.67.2021.12.23.01.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Dec 2021 01:05:17 -0800 (PST)
Message-ID: <6cbc4a5da6e89e2807af922f10823ffc52558466.camel@linuxfoundation.org>
Subject: Re: [PATCH] meta-yocto-bsp: Introduce the v5.15 bbappend
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Kevin Hao <kexin.hao@windriver.com>, poky@lists.yoctoproject.org
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 23 Dec 2021 09:05:15 +0000
In-Reply-To: <YcEt21DUeGUajmfC@pek-khao-d2>
References: <20211116001033.463741-1-kexin.hao@windriver.com>
	 <YcEt21DUeGUajmfC@pek-khao-d2>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2021-12-21 at 09:28 +0800, Kevin Hao wrote:
> On Tue, Nov 16, 2021 at 08:10:33AM +0800, Kevin Hao wrote:
> > Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> > ---
> >  .../linux/linux-yocto_5.15.bbappend           | 23 +++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >  create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> 
> Hi Richard,
> 
> Did you miss this patch or have any concerns about it? I don't see it in
> either master-next or master branches.

Sorry, it just got lost. I've queued it.

Cheers,

Richard

