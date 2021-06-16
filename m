Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web12.9654.1623860115849263853
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 09:15:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=T6FS1rxT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso3482901wmc.1
        for <poky@lists.yoctoproject.org>; Wed, 16 Jun 2021 09:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=FqtMk+zjtdzy5gyyj2xNxZP35/9l0E2pV+NBVZcnEx8=;
        b=T6FS1rxTjIgJ2rgiiTNOnt4GGoNHmO9/V8pmJ57XFhIO+BUvYSOrwDMiY8zoOk+8I8
         56TSqiNDc/jz4BZ8dOw2gROHCcRbmLk5WhCJR6QAdvTkGPW6E607rdw0UER8/BJv20I+
         DahVWqFq3dckgmCMY7up02BZjguXWDITZPqnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=FqtMk+zjtdzy5gyyj2xNxZP35/9l0E2pV+NBVZcnEx8=;
        b=szGjHEZejrULCCemxQt6F+W5VX1a9G0l+VZmFqsYy02Jk4A2c+okZtY097Ftb+zAW3
         YWUEtNhKoJljb6ZBZa2aAgB/TA+/EjT9RJTwjoUXt8dQtA5vojkQX7fw1tT/FG9TfOfl
         2K24Ei6q5UiHhLrtPk059Uzpy/oMYRep1GeC5tp1RoQAe4OKs3A74AK0sFL8vp6LAy1t
         Qbe5/FqLzgTqxMntfa4ogvOXn+IdFgYmfYU7DJfCyQKsDMr3PY7G1/vYz6FloPULVxi1
         ZkvtagyFCPROP4V2f26Pv3CFGej7F1zYuEjmgPzopKFO88+P8qJ8BtqRj15gpj8QaM/9
         sfrQ==
X-Gm-Message-State: AOAM531yZGgKFLdqge36aCFnSL8pPMDrJV3iuiD4h9ePwrhvfE+IBqYU
	LETT0S3LKkpihmKB+X3tyT6jGw==
X-Google-Smtp-Source: ABdhPJw/8/6ti3SNagpfNlNdW9lNDxR5aJZ/mC0MBZ8R8nKkYHHgi3giFUgLUsxjS8bid0eCikF5dg==
X-Received: by 2002:a05:600c:511d:: with SMTP id o29mr12665429wms.0.1623860114451;
        Wed, 16 Jun 2021 09:15:14 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:31b6:9a4e:bc39:a574? ([2001:8b0:aba:5f3c:31b6:9a4e:bc39:a574])
        by smtp.gmail.com with ESMTPSA id b11sm2650021wrf.43.2021.06.16.09.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 09:15:14 -0700 (PDT)
Message-ID: <45b724cdb0aad3e8e42a54a2a01f8bafcc73e706.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] README.poky: Update to switch to markdown format and update
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Paul Barker <pbarker@konsulko.com>
Cc: poky@lists.yoctoproject.org
Date: Wed, 16 Jun 2021 17:15:11 +0100
In-Reply-To: <CAM9ZRVsCsog4x5OHaq9zsWiJXuG0dzvsUq6x3KR48HpBrzuWRg@mail.gmail.com>
References: <20210607152809.3071859-1-richard.purdie@linuxfoundation.org>
	 <CAM9ZRVsCsog4x5OHaq9zsWiJXuG0dzvsUq6x3KR48HpBrzuWRg@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2021-06-08 at 09:53 +0100, Paul Barker wrote:
> I've given this a quick review for markdown usage, hopefully some of
> these comments are useful. I recommend checking with
> https://github.com/markdownlint/markdownlint to help find subtle
> syntax errors which might trip up the rendering.
> 
> On Mon, 7 Jun 2021 at 16:30, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > --- a/meta-poky/README.poky
> > +++ b/meta-poky/README.poky
> > @@ -1,35 +1,19 @@
> > -Poky
> > -====
> > +#Poky
> 
> Underlining with = characters is still supported for h1 headings if
> this is preferred.

Thanks all for the review. I've sent a v2 which hopefully addresses
the feedback (and passes the linter apart from some white space I left
as it made the diff more readable).

Cheers,

Richard

