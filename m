Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web12.4503.1598475215929385756
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 13:53:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hd+oUa5v;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f67.google.com with SMTP id y3so3250531wrl.4
        for <poky@lists.yoctoproject.org>; Wed, 26 Aug 2020 13:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=fH239DiD2vjNRZgViIAMNKITRSHBlMm8bNVYK9Xip24=;
        b=hd+oUa5vdP6EpojT5JkkUAMNF2ESqU0VXmFH9RhXtfYpxGtGJ1j7l2LxmFP2cNQlZF
         JREQ1Tk4ihKBClz01qFcKl37rw+K9f4p2rkdVo2ltdBuQpGk7chB/RSA/R7tdyfsk7KO
         dsG7rYcpi5nqG9wFUauI5z1RkpHpoxR0iOJ2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=fH239DiD2vjNRZgViIAMNKITRSHBlMm8bNVYK9Xip24=;
        b=VT10w8fQ9P8DS7wOxREwanWHdvt0Vq5cUJzqEIZwU+Qb5iwzKZsMAYkjfpeg7Neco9
         RG1zVLGa5TcDJ4bRWLeC/rW5cLnEo8ct+s9xMS2+8rWfzHfyBGSpzjqUbN8cRpBX1FQ/
         TSBuP6rXB02fuuf77LJT2MRjd1o8piLHIBQwDVKEtsA/WgzasKU9UcbrM7JYBReejCjN
         XMiGa4Tbuw5vlEOmBEe9c4Q+dpAvaaElbVyatrwwr78uAD5IxW16ZHtrhBFtiohsDE6u
         k6Tev2XOo4aZ0ql9GKhI+NqbQIowtXP+aZjh4g+YCDdDwwFu+zW0qiDBAAwkzA0zD7SI
         mTgw==
X-Gm-Message-State: AOAM5314+6qEeoCe8gYEUSUGXfm4Ttt1MCwJ1hPJLDbkj33tjlT0sc5w
	Hg8XT/MGmwNO1SdJ8YUhBtzmaw==
X-Google-Smtp-Source: ABdhPJyPmV3GgrgpmNar5n8s5yLkbRUlRCxaZSrkMpa94BW0aoLgEyFrgfiye3p27QYZhjwEW/41gA==
X-Received: by 2002:a5d:544a:: with SMTP id w10mr17477440wrv.317.1598475214372;
        Wed, 26 Aug 2020 13:53:34 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c407:538:d07:8b9d])
        by smtp.gmail.com with ESMTPSA id a7sm22926wmj.24.2020.08.26.13.53.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 13:53:33 -0700 (PDT)
Message-ID: <b167f1a72560eec8d073de4b44538cc09efea9c8.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky.conf: do not install packagegroup-core-device-devel into qemu images
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Ross Burton <ross@burtonini.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, poky@lists.yoctoproject.org
Date: Wed, 26 Aug 2020 21:53:33 +0100
In-Reply-To: <CAAnfSTuLEADjROSUb-W9rYSk=ZjFxQxYUVmDg6Z597Wqz22Pog@mail.gmail.com>
References: <20200826145206.6871-1-alex.kanavin@gmail.com>
	 <3adabcedbdb85a19e12d0bb3f50a99d6030affa2.camel@linuxfoundation.org>
	 <CANNYZj94DOMzkj8ND65SDZNAF7ytaSJXE6L_fKkVtU9Dt6mwFQ@mail.gmail.com>
	 <aea26ec4a292d5179170b6020e61d4062b099053.camel@linuxfoundation.org>
	 <CAAnfSTuLEADjROSUb-W9rYSk=ZjFxQxYUVmDg6Z597Wqz22Pog@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-08-26 at 21:51 +0100, Ross Burton wrote:
> On Wed, 26 Aug 2020 at 17:14, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > > The x32 test, and the multilib test both need binutils in core-
> > > image-
> > > sato - probably should be tweaked in config.json, as neither test
> > > is
> > > added to TEST_SUITES by default?
> > 
> > That feels extremely ugly but its one way to address it I guess :/
> 
> Would it be better to make the tests check for binutils being
> present,
> and then ensuring that at least some of those tests are executed with
> core-image-sato-sdk or similar?

Alex sent a patch to autobuilder-helper so I replied there.

I'm wondering why we don't scp the file and then run readelf locally on
the server which avoids this problem?

Cheers,

Richard

