Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web10.10023.1605628161306821589
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 07:49:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QF9u6G76;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id s13so3666603wmh.4
        for <poky@lists.yoctoproject.org>; Tue, 17 Nov 2020 07:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=+kVVMwVfkNJFAACri39TQii75hnDfWnHIcNvYEnO04o=;
        b=QF9u6G76BDYFEv5e06K9Ulrz7VuOVSi7T1Ug/L+mLrfQyr7WjQzmZ935eha5j0j2os
         0vZTSW8M1HJUT+unifWD++VVXwJNeuxQtU9SZCNVcBw7q06mS/pp2wJ9xVO3InmYIhkm
         5amuD1Azzl9qIKlbuhy2IqI/jFzAsX5k+5TvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=+kVVMwVfkNJFAACri39TQii75hnDfWnHIcNvYEnO04o=;
        b=OB45wuEHkZkN7aPzFqNnB+iIiHOCLgv0d30bYeD0Dc8D4B+0/aUdkhpDLICax5x61h
         G6lyr++NVuG3quLnEQVY7EhYQ7adJehg48EQ9YfHHIFLEs/5j1nmKgrJxoGIS7FiCdks
         Tyg9Rpk2UfLJ5bW2h1lNm+kJw0LekHhqlm+TVECYs4S8wmqBujMWszVrNyABJETdyxwl
         CQwgltMbLkh1jxxjD4qtMDlMhjrgZ6O0/mva2tJP40YLaufF2q84a3lgBorPzFVp2UQC
         FxQBfXJlf07Lyf3lq8QUNM7FZwSYGhsqZIiNhftvky5vFbcKNz19bEIGJ4s5P37QIC74
         W2Bg==
X-Gm-Message-State: AOAM530lRUJjzw1WK1N+KnxOI+tFBMkJLn8yWjsujBoVpcFfiEKC1MY3
	h4DQd6ORbefNKMwXO7/Kd4ZKlQ==
X-Google-Smtp-Source: ABdhPJwv6jng65IHBI3cg+Jm4xlXWXLJ3rSfbK7cqPGzKmM25ip6MzB4J08y68hvl88OxSiowT/Acg==
X-Received: by 2002:a7b:c1d2:: with SMTP id a18mr284549wmj.41.1605628159892;
        Tue, 17 Nov 2020 07:49:19 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 2.2.2.0.7.3.f.1.3.6.f.f.7.9.4.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (2.2.2.0.7.3.f.1.3.6.f.f.7.9.4.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:9497:ff63:1f37:222])
        by smtp.gmail.com with ESMTPSA id m21sm7481593wmi.3.2020.11.17.07.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 07:49:19 -0800 (PST)
Message-ID: <ad18ad9f7c6244b90c0de9a7a5b975e0fe93807f.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v7] poky-tiny: enable section removal
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, poky@lists.yoctoproject.org
Date: Tue, 17 Nov 2020 15:49:18 +0000
In-Reply-To: <2fe8c77e-8dc5-cf9c-9569-b7d9d43f2a89@kernel.org>
References: <1647D622A62A0183.6873@lists.yoctoproject.org>
	 <2fe8c77e-8dc5-cf9c-9569-b7d9d43f2a89@kernel.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-11-16 at 14:30 -0500, Sinan Kaya wrote:
> Richard,
> 
> On 11/15/2020 7:40 PM, Sinan Kaya wrote:
> > Use GCC sections flags so that unused sections can be garbage
> > collected at link time.
> > 
> > Signed-off-by: Sinan Kaya <okaya@kernel.org>
> > ---
> >  meta-poky/conf/distro/include/gcsections.inc | 22
> > ++++++++++++++++++++
> >  meta-poky/conf/distro/poky-tiny.conf         |  2 ++
> >  2 files changed, 24 insertions(+)
> >  create mode 100644 meta-poky/conf/distro/include/gcsections.inc
> 
> How is v7 looking?
> 
> It built for me yesterday.

This version did pass on the autobuilder :)

Cheers,

Richard

