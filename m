Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web08.7076.1620293760184337681
 for <poky@lists.yoctoproject.org>;
 Thu, 06 May 2021 02:36:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=B6S9owjK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id j3-20020a05600c4843b02901484662c4ebso4967326wmo.0
        for <poky@lists.yoctoproject.org>; Thu, 06 May 2021 02:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=uU9FsXY+Wi6kP8gNYH9rB6W/PN/BBS2o0GROCRvpuz4=;
        b=B6S9owjKWDXPdmLOTpUkhZ4w7Db0sLdEkDvJwabSvKAOPd0x0dZhWNsyufuSiVfh+k
         JK6WzfuaiMlpmECREILaqBXMCdfdOQosKvKbAR8REG8OJfYJpHmFpHPrFQI/BF3nRST2
         vALcIVS5slkbjapdKkjOzTlksnsOuMoCw/7cY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=uU9FsXY+Wi6kP8gNYH9rB6W/PN/BBS2o0GROCRvpuz4=;
        b=hrpGVCL+eaKNa3TK+ubCw678vPvvGvw62weC+BWMgVf3j0RB8tDyosIcmI7ISW5eh9
         ixhuOueXQqZXXsfBHWmY5ip7xYD08a5DLRK1JuBn+3AZU59dv9gb7o6UGHigkfKgahh/
         JUqfCO53/vY0/PGyBjSLD3o6CHcvBaq/oqhpG2zMhZDtdlK4Bxqjh9M5tD/9zLXoTaqZ
         YYWfCrX2GrMRfntNyL8JRMCQv29eEii1/2Sb18VIEWo8TzEBDEOB4ybGObrfzILf53Ky
         1Dzcc1hOiMISAwLQdiz6vUA0dLAzkX2+JOAQ3Ib8XIbFozOuKDqefAL5gNSCex4v52CI
         6N6w==
X-Gm-Message-State: AOAM532YEFjrUeKEwOR3Lk8io4D96kaKjsZByyaRliSKWpy8/NmTnCv0
	OA9ehxldjySNXXJ5yQIMFD7dYg==
X-Google-Smtp-Source: ABdhPJw87LMDJOlu+Vyje+/ymyDQjZsHbHz8ZjyDKZ1ii1yijIlEopA+qJLW6xblBDz5lGPB2rbs0Q==
X-Received: by 2002:a1c:238d:: with SMTP id j135mr14403002wmj.170.1620293758478;
        Thu, 06 May 2021 02:35:58 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:d0ab:d9f1:6e0d:9f6e? ([2001:8b0:aba:5f3c:d0ab:d9f1:6e0d:9f6e])
        by smtp.gmail.com with ESMTPSA id m13sm3318381wrw.86.2021.05.06.02.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 02:35:58 -0700 (PDT)
Message-ID: <3117f6331a0ede5a381da496b23a75a1f38b033a.camel@linuxfoundation.org>
Subject: Re: [poky] no dt overlay example in meta-skeleton
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: dan@engineeredarts.co.uk, poky@lists.yoctoproject.org
Date: Thu, 06 May 2021 10:35:55 +0100
In-Reply-To: <Mlpg.1620293245950505523.Z7tz@lists.yoctoproject.org>
References: <Mlpg.1620293245950505523.Z7tz@lists.yoctoproject.org>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2021-05-06 at 02:27 -0700, dan@engineeredarts.co.uk wrote:
> Hi, 
> 
> In the  the meta-skeleton repo there is an example that shows how to 
> build a standalone kernel module but no example of how to include or
> build an accompanying device tree overlay. Is there an existing "standard" way
> to achieve this? I am aware it can be done via the a .append on the linux kernel. 

I'm not aware of one but it would be something that could be nice to
add if you do work it out and were willing!

Cheers,

Richard

