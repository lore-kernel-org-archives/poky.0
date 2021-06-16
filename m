Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.5065.1623834671090628018
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 02:11:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eLmpFUqh;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id n35-20020a05600c3ba3b02901cdecb6bda8so3563401wms.5
        for <poky@lists.yoctoproject.org>; Wed, 16 Jun 2021 02:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=xTUr6UCW8VtRFlokOZE8/JKENY/6PfohZH18B0f2zGA=;
        b=eLmpFUqhbUDnOp9cGUutBXnfKLmsYItCrNukgQtV66k4YNRuctI2VXMl+zV9+Ld/3y
         Nlp/Wsst5+SY2JKH+jeEnlLrBplso4qCKB0Y7VL5AorUs2cWSKres+bkOReyCcaGBKvl
         umvIP0F8l+64Ks8PAikml0J4dZVMNYspqhg5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=xTUr6UCW8VtRFlokOZE8/JKENY/6PfohZH18B0f2zGA=;
        b=mLuKonByNYP94O30M1u5KdaEYClPKs7YUTctGSIBEYr7WEWmvjIs8Q0Pj1wa9jouns
         hNp3XlkPUHcdlLfADb2V6mw81YGqvO7uKbrVAQPq0UJZ+ljS0VqJU+KJHWe9UVk8x3Kq
         PAU0KpxVuCpr43RXXFDgxOHhshTd6LqmQwdhR14BcEK6HvPi3vFeKUafUA5GIZdz+99V
         dLiLwvayp4iFkf6BLjKIkxTk6JWc+ZoG9nxXfGw7N86FucllNBuX5LmnKcHl539PeqaM
         3Sy70dt5Xj880GsUvj7Bdd2lUb+T2hYyjEG1OBvBYJcqbc34rGSmNUxq/xZiuGB6Ri/Q
         NImg==
X-Gm-Message-State: AOAM5311ezaIqZcmneKzJhegsXF0AYA1PtPoeGIP7X5jMKPp5H3jyXxP
	lIycFBBg4FooJoJyDGbJ5JEd/A==
X-Google-Smtp-Source: ABdhPJwYl2xC5yNvpzW6oXfnvyC91ZbhmU/2kd2Mkp4dsanHCh+o+p1FZAYnomAMR1VCLjN3RrmH1Q==
X-Received: by 2002:a05:600c:47c4:: with SMTP id l4mr9948027wmo.145.1623834669352;
        Wed, 16 Jun 2021 02:11:09 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:1d6e:bde3:735d:6a7d? ([2001:8b0:aba:5f3c:1d6e:bde3:735d:6a7d])
        by smtp.gmail.com with ESMTPSA id z19sm4359476wmf.31.2021.06.16.02.11.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 02:11:08 -0700 (PDT)
Message-ID: <0451f536368310860d9acb12e5a8424881b545e8.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] local.conf.sample: disable prelink
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Mark Hatle
	 <mark.hatle@kernel.crashing.org>
Cc: poky@lists.yoctoproject.org, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Date: Wed, 16 Jun 2021 10:11:06 +0100
In-Reply-To: <CANNYZj8S7V5owiS0p3B1fD7n_JpF-OPLApO=e9d+SiPuyFWHZw@mail.gmail.com>
References: <20210615081225.1734033-1-alex.kanavin@gmail.com>
	 <5ed9e1d2676d4d31289ebaf2ec3b492c1daa88a7.camel@linuxfoundation.org>
	 <CANNYZj84MXS57sG5CWLmS-Y_0-w8h1_9NLmtjFEo4pJ5snXvcA@mail.gmail.com>
	 <CANNYZj8S7V5owiS0p3B1fD7n_JpF-OPLApO=e9d+SiPuyFWHZw@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-06-15 at 17:21 +0200, Alexander Kanavin wrote:
> So the memory usage is actually *better* without prelink. And any timing 
> benefits are lost in statistical noise, in these tests at least. 

The numbers certainly don't look convincing, thanks for running the tests.

> So I do not think it is wrong to question the usefulness of this feature. 
> I'd like to hear Mark's take on this, as prelink-cross is primarily his 
> work, he's put a lot of effort into it, and I would want to know where 
> the benefits are. Note that Red Hat abandoned prelink in 2013, and 
> prelink-cross likewise hasn't seen any commits for two years.

Mark and I did briefly talk yesterday and whilst Mark can/will speak
up, the summary was "drop it".

What makes me sad is that this is an embedded focused feature which 
the project should be caring about, i.e. memory footprint and speed.
I don't know why the numbers don't show it, Mark and I have theories
but it would take work to explore them and neither of us have that time,
nor are we experts on prelink able to maintain it with the time we have
available.

In my view the project should be caring about things like this, instead 
it looks more like a race to look like 'any other desktop distro' and 
drop anything which looks different.

I've tried to say no. Nobody else would appear to care, I'm hearing 
silence. I can't fight this.

Cheers,

Richard

