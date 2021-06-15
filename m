Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.6650.1623747851104585481
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 02:04:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bayFurYK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id m18so17437587wrv.2
        for <poky@lists.yoctoproject.org>; Tue, 15 Jun 2021 02:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=YW57C3L2llFS/N6xQGus6Ro+1IRss+gnXMnqX+hq+Pc=;
        b=bayFurYKSMFEPtEHnZY1fB2d2/VCIHz/GARKADQMJ9KOQNo3bc0nuz+DSaddhGyawt
         YT+rUOUjYWwSnvsdDWf1lt7Vdn0KQKcYk1JCKxKw7UL1+R20NxDIJjRZFRG8v5wv+xDN
         r2HSf6MtregtovGySK1ANvTYv8Qv3a5GtpMV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=YW57C3L2llFS/N6xQGus6Ro+1IRss+gnXMnqX+hq+Pc=;
        b=nXAPZJXxpT63RdyJHtevkCs0hOJfxTH5V02qWYipyC7Hwl8fGGiYRMquyDqyb1ER/B
         dwx3BWfDkc6ijOXYRsUm9iSyvdaY3BQ7U7edaonF4bdTGbt3a3f8ehZfLX9s/S1GlMMO
         e0Gr+EJ6TOQE1wI9p49L4hpPpLSI7Wqwwqx39VA2RvnSXIogvIJSCTSx3+Szisy6meah
         PQhiM7Eegm/UiAOzNBEWM30EWKsbYempyyUuN/g/mZsJVUkrgb+v34Oq2MzXXr7Y1tWv
         dtRhRzibhSm8TiD/2j9BKqAJRy4gH/7DNvjaIg5KqT4HlEn+VsejpIsDuP74/btkrhG8
         JHaw==
X-Gm-Message-State: AOAM5306NzGLnJaEzAJxV1adIDU/OAZk0LxKZmyuuAH1EhXrScSNloWy
	8+8oxJZwu8z5iDT3ZZZwiRsmgw==
X-Google-Smtp-Source: ABdhPJzbyqtCQjgDkbP54ET9K8dw8+zjMfLXmNvWyng75IolpV+XKPRSm2Ns/XeNDxPHsqqkF/qf8Q==
X-Received: by 2002:a05:6000:1543:: with SMTP id 3mr24096497wry.342.1623747849374;
        Tue, 15 Jun 2021 02:04:09 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:c376:a25:72e5:3c84? ([2001:8b0:aba:5f3c:c376:a25:72e5:3c84])
        by smtp.gmail.com with ESMTPSA id l13sm18993589wrz.34.2021.06.15.02.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 02:04:09 -0700 (PDT)
Message-ID: <edfbd4fe9f2ef0c1625c4a0d40ea058592fcfdc3.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] local.conf.sample: disable prelink
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org
Date: Tue, 15 Jun 2021 10:04:08 +0100
In-Reply-To: <CANNYZj84MXS57sG5CWLmS-Y_0-w8h1_9NLmtjFEo4pJ5snXvcA@mail.gmail.com>
References: <20210615081225.1734033-1-alex.kanavin@gmail.com>
	 <5ed9e1d2676d4d31289ebaf2ec3b492c1daa88a7.camel@linuxfoundation.org>
	 <CANNYZj84MXS57sG5CWLmS-Y_0-w8h1_9NLmtjFEo4pJ5snXvcA@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-06-15 at 10:55 +0200, Alexander Kanavin wrote:
> On Tue, 15 Jun 2021 at 10:48, Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
> > I appreciate the desire simply to delete/disable anything that causes issues
> > but in this case I draw the line and my answer is no. It works fine in the
> > vast majority of usage.
> > 
> 
> 
> But where are the benchmarks that show it's actually beneficial? 

Where are the benchmarks showing nearly any change we make is 
beneficial? The recently smp enabling for qemu don't have any,
nor do many other changes. We don't have the people/resources to
require benchmarks for everything like that.

> And commitment from someone to maintain it and address open issues 
> (there are more than just this one)?

We have a ton of areas of the project with this problem, for example
pseudo or eSDK, or even devtool and all it's bugs. We're not removing 
them and we're not removing this.

Worst case, it has to go onto the list of last resort which is I 
get around to fixing it, again, when I have time. You'll note from 
the history I have some previous experience at least :/.

Cheers,

Richard



