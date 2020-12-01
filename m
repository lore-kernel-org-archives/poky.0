Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web10.1074.1606860810580106913
 for <poky@lists.yoctoproject.org>;
 Tue, 01 Dec 2020 14:13:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WNu/EMRL;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f67.google.com with SMTP id l1so5287407wrb.9
        for <poky@lists.yoctoproject.org>; Tue, 01 Dec 2020 14:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=8Sc+fK1Ro/UF1Vp2nIgxANaM+c0jn0eOaFcpupSa4CI=;
        b=WNu/EMRLAIBzSwJ0FlJcSDms+QUi+oHtjsXhPZDqtqqIVFCKOk3iBC9UUNI9X6kZat
         e1Js5K7Nu+xCjnX8CZJy14GDSboqxbnO8yfah1lClqzBCtnyKEcHH1zbydnYSBE45fsq
         lMkCTb8n56lGVNMMpqVVcw6hn9BRfSRNwETfc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=8Sc+fK1Ro/UF1Vp2nIgxANaM+c0jn0eOaFcpupSa4CI=;
        b=nevFlIEPjQDM1ZJsuHC0WzOteWvct9I3J/dPgJkdoooLBIWyOgAHvxA3nhNO6QsBAJ
         9nTfPTnD6Fs+YvuktSVtCjzTxwdjrIMTn9AupKZekNdTHjqbgAPRbRPPV1j1+ttLMoWw
         sbVOuhg/6cKbUrHLCH3zNSQS//7/sTzWlc6nJJxO7PKExV+X6qKnupZLDmAphLcN6jHk
         WmmVflouX1h1Kpp8OK8hz5fhmI/XamV0KezfCSyTulpoTrT3F6tAz6eVKpVqU41leb1/
         XqSBLzrex+OgGnKZlsek5OzO0eA/TeODQvB5IfDIyYZjGCK3uxs7gBxGz7kQU5YNTsEB
         qvKg==
X-Gm-Message-State: AOAM532NAkHOfmbog+IGTVVJRpB5en7eOyQHDb+ZvBDgGjiSg4zI36Bb
	XY+lyRLN/58Sf3X7DYTKxVxbyA==
X-Google-Smtp-Source: ABdhPJzDS6Hn5TdKZg7zEj/hxEhb/o/J03jxLefdmZMy23iqoRQxhVZ0gr8uDrliSpPQ1evAzos8MQ==
X-Received: by 2002:a05:6000:11c2:: with SMTP id i2mr6598757wrx.21.1606860809064;
        Tue, 01 Dec 2020 14:13:29 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 6.8.4.7.c.c.2.8.a.5.e.3.8.c.1.b.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (6.8.4.7.c.c.2.8.a.5.e.3.8.c.1.b.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:b1c8:3e5a:82cc:7486])
        by smtp.gmail.com with ESMTPSA id d13sm1566694wrb.39.2020.12.01.14.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 14:13:28 -0800 (PST)
Message-ID: <a22941ee1786ac7349863ca321fb91e0b6ba7c75.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] image_types: add zstd initramfs and squashfs support
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, poky@lists.yoctoproject.org
Date: Tue, 01 Dec 2020 22:13:27 +0000
In-Reply-To: <20201121020434.19912-1-okaya@kernel.org>
References: <20201121020434.19912-1-okaya@kernel.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2020-11-21 at 02:04 +0000, Sinan Kaya wrote:
> Add support for zstandard format squashfs and initramfs.
> 
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>  documentation/ref-manual/ref-variables.rst |  2 ++
>  meta/classes/base.bbclass                  |  4 ++++
>  meta/classes/image_types.bbclass           |  6 ++++--
>  meta/classes/kernel-fitimage.bbclass       |  2 +-
>  meta/classes/kernel.bbclass                | 10 ++++++++--
>  5 files changed, 19 insertions(+), 5 deletions(-)

This is hard to apply as is as documentation is in a separate
repository, we really need separate patches (but thanks for updating
the docs!).

I also suspect this will break some selftests when run on the
autobuilder as some iterate image types. I haven't found the time to
check into that properly yet and didn't want to risk breaking the
builds with the patch at those points in time.

Cheers,

Richard

