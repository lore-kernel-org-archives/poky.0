Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9B5DE00D33; Thu, 11 Apr 2019 14:48:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1A46E00D30
	for <poky@yoctoproject.org>; Thu, 11 Apr 2019 14:48:15 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id w1so9273064wrp.2
	for <poky@yoctoproject.org>; Thu, 11 Apr 2019 14:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=Gdu1t4tiV/0PLTIbpehBVNCvcPhTZTDxyudCoMNgpmU=;
	b=gntArw2e92ColYeXIiHNy/UeYJqGr7TqzDY3LqgOmo9Yd7GDjrnl6KQNX25Ho/0oVc
	aBxGtYMdl+Ypuq870HaP1uDoI8gNHuEcL17K4PywWCC9mMkYxnuzMEF8JW2LcOUR9DN9
	ZGG5yt2ZouvpZsSEKMA/nvC4TKqRDCDApbtgA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=Gdu1t4tiV/0PLTIbpehBVNCvcPhTZTDxyudCoMNgpmU=;
	b=fTQAqJW5qyf7K3MSM6EFj2FUwYe2jz5Hh/1uBFWJPhGrmJS7cpJGMRa790UigVSPd/
	cg6qTkWEI+eEgwHq4Gz+iXs9SY0OeGZ9avepyLj8LOIP5jKkHDpx2iqmlq3b65RHzczK
	C5QjShWAjGyul00XpfmwvHiypuJHO1hkO1u150jN5lHwnchzdAwaRMY9bZLzymk4lCNI
	G+4vH5vYQQRY4hOB1DiOeuZA/v5JvbBs8BflXpnl1IFeqcBgMq1iY+kA4IGNkJF3Hco3
	awciQ3H1GChO5fvqvBvtWVAUtcebsUN39Ilj23B8j8Zz1dNUtCalXVin7fkz/EJdo/l1
	PNlg==
X-Gm-Message-State: APjAAAUmyXiyk6P9GFC3ID2x35LGjC02OxcsuPdEPoZbQh0FRYgmOdkd
	MGmJZ6Jxd0+wZ93Y4tOBXbhulQ==
X-Google-Smtp-Source: APXvYqxkm3xpffxIi0MPke6pTEOb5a8ByEdAjUwNYKVyCYDiWIMoTKb24x2hGtGeoFgKZAKmR8zlXA==
X-Received: by 2002:a5d:6050:: with SMTP id j16mr28272371wrt.253.1555019294848;
	Thu, 11 Apr 2019 14:48:14 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	a10sm41373527wrs.19.2019.04.11.14.48.13
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 11 Apr 2019 14:48:13 -0700 (PDT)
Message-ID: <5e2b82e9ea8410dc37edc534c6f1c3efd7639f6f.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jonathan Richardson <jonathan.richardson@broadcom.com>, 
	poky@yoctoproject.org
Date: Thu, 11 Apr 2019 22:48:12 +0100
In-Reply-To: <6687346091c25467c61566ecf86ea6f8@mail.gmail.com>
References: <6687346091c25467c61566ecf86ea6f8@mail.gmail.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Subject: Re: libc configuration of multilib config
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Apr 2019 21:48:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2019-04-11 at 14:05 -0700, Jonathan Richardson wrote:
> Hi,
>  
> We have a cortex-A72 tuning defined as our default tuning based on
> armv8. We also have some bare metal code that runs on a cortex M0.
> Yocto allows you to set a default tune for that multilib config so we
> call it softfp but it’s an armv6 architecture with soft floating
> point:
>  
> MULTILIB_GLOBAL_VARIANTS += "softfp"
> MULTILIBS += "multilib:softfp"
> DEFAULTTUNE_virtclass-multilib-softfp = "armv6t-novfp"
>  
> Since we only have 1 recipe for code running on that processor (the
> SOC contains armv8 and an M0) we compile it as softp-recipe_name, add
> it to EXTRA_IMAGEDEPENDS along with other bootloaders and have
> everything in the same deploy/machine when we create our image.
>                                                 
> Now we want to use newlib instead of glibc for the softfp multilib
> config only. I don’t see a way of configuring this. At this point
> should we put it in a different MACHINE? Should we be defining a
> multilib config for a different architecture or is this overusing the
> feature?

This sounds like you want a separate MACHINE and to use multiconfig
instead of multilib...

Cheers,

Richard


