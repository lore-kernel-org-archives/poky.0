Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web10.5450.1590066887665413675
 for <poky@lists.yoctoproject.org>;
 Thu, 21 May 2020 06:14:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=e2r3h4BK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f67.google.com with SMTP id e1so6622674wrt.5
        for <poky@lists.yoctoproject.org>; Thu, 21 May 2020 06:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=x+DhMTg21Rom9bzdK3f0dUHnl4OUMbiDKN/LzD0PZCo=;
        b=e2r3h4BKUATxIjVHgRfSa0zyRSPs0erfK9mnrsPYetQ77IZDm8VaOORe8/mYCehr3s
         FBndV65lKJG5+iH/FkqXD2T8IvJ2XNBb/BZaKqDAaNumF6/a9hTzsWWcvxSWVnlGGuQ4
         +002MqSRaipZA+Z21hzSjy6wCmo/41VXQNR5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=x+DhMTg21Rom9bzdK3f0dUHnl4OUMbiDKN/LzD0PZCo=;
        b=kHMZPjUghg4bvPsJSccQQi0pJcjzrHdxx4KBcJ8HtAQPU3n+TeRUh3jf30+6xXDaH5
         iN2IwbogXBNiBMORz+wbjsYyuHjLrAqsxNpndDVNrQyzjkywfh6OmFmQq2BlGWW0J1aM
         ZQCXnZck5dPOzLcNZVjGW/n+qbJHRtFP5yzZsB/vgqtKCRu2aowJCWgR/0lRTNZW20Fi
         1uxnarljnq1mOCxQCyuLxGPkfYG8vNR4Ybvs6B8LGvkxpkjR/cYFMcJ9O6EJesuiyNNk
         FWSo/gVfQPIOwqxqXc1ekAeWGJaQez7ECBn7joZrJnFGcLfjqu1+sM0SIGA5UBrh5N2e
         qBPQ==
X-Gm-Message-State: AOAM532DDvsd/QAO1WrV7IR+XQiwAXX1L+5sOLRiKjIIHooYHi3vl8Bt
	8HeDY7Q2xW0gILX8rqGcN5qMDA==
X-Google-Smtp-Source: ABdhPJxX3j6S+zAwEQBluCqN7uqb2LFb+NTjeeJfImcjcPWM6yyFxv3XD+co+/47EnStdc5LxMA48g==
X-Received: by 2002:a5d:526f:: with SMTP id l15mr8316905wrc.367.1590066886053;
        Thu, 21 May 2020 06:14:46 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id q15sm5643625wrf.87.2020.05.21.06.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2020 06:14:45 -0700 (PDT)
Message-ID: <9b38b1a02c0f4e266c25e05b27b2b619f738cd99.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] devtool: Add IPv6 deploy targets targets
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: breno.debian@gmail.com, poky@lists.yoctoproject.org
Date: Thu, 21 May 2020 14:14:44 +0100
In-Reply-To: <9a1e0eef-9eb6-a483-8d59-9ca3cad69b20@debian.org>
References: <42a9297b-911b-6e38-076f-2a542249ffaa@debian.org>
	 <9a1e0eef-9eb6-a483-8d59-9ca3cad69b20@debian.org>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Thu, 2020-05-21 at 13:28 +0100, breno.debian@gmail.com wrote:
> I've sent this message 3 weeks ago and I haven't heard any feedback
> about it.
> I am wondering if I have sent it to the right mainling list.

I'm not sure what happened to it here, I don't remember seeing it and I
can't find a copy of it in my email. It is in the archives.

Patches for oe-core like this one need to go to the openembedded-core
mailing list so this is the wrong list.

(https://lists.openembedded.org/g/openembedded-core/topics)

Other than that the patch looks reasonable at a quick glance so could
you resend it there please?

Cheers,

Richard

