Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D535CE00D90; Wed, 31 Jul 2019 15:25:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.52 listed in list.dnswl.org]
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50728E00CDF
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 15:25:09 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id f17so61256793wme.2
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 15:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=DYDd+o8zMscW8KYNluhT5//8qxmDGYml+apEF5+Id2A=;
	b=GQoi9OB0cNJ1/CMG/GayM/WTRqnm6nEpY3ufyNRhRMjvgZHTFdvVnWnlGwcszNd0Dw
	4M1psjefDgd75qmyK1HxbGXTTMX+zlzz5Y2Q0c4FjZZpECqrLuVKJZttWUtFbCSjU172
	/mt+rYvakDH4Rf+uX0VeFKmH5gBoyn8bawEA4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=DYDd+o8zMscW8KYNluhT5//8qxmDGYml+apEF5+Id2A=;
	b=pt4/zvYcJxdKHJwfEoRczAPcVvCGtnQ93OzEk1JbVnxY5btwr9cF7hPv8YDik1f6sH
	klX41MQqqVew/JzeSgFpv5D0CQjXSdfQIgQ84Wln99CwatFa6zl7JPaqF2p34Qy9M6NS
	WpINng9f+ztEG/a1gniW7M48hyw8Y9712BNvs+ZNtDZd/AmGjv/7hfjAyyhypnWSRo0E
	u6l41WBklMThSPkzCGE9JbhzoOszXpPn9qjCfj83tOtct4Nkm0Rzk5G2CHb10JLboTm8
	UqOTCmyOwh6u03fGFhEMSkMJyZtuRZ9SCzj02QGLZ5F4HI+wHtZLSQ/JBVJvpoLFqv2g
	bHoA==
X-Gm-Message-State: APjAAAXyBeeKGnrx9mFXeLcbM5/IXgp6NJhvy7jtL3Q/NgzSlZCdb5L+
	MfyqfbA0Go/SvDpN2jherWOBiA==
X-Google-Smtp-Source: APXvYqxwG4zxjTdVmPMfxl4u/EUIYPvBLvegpJFYWvLRptW4iRgU/dfGe51thR9GFgeIFNvHLZSMCA==
X-Received: by 2002:a1c:c545:: with SMTP id v66mr1300301wmf.51.1564611909186; 
	Wed, 31 Jul 2019 15:25:09 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	c1sm158339669wrh.1.2019.07.31.15.25.07
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 31 Jul 2019 15:25:08 -0700 (PDT)
Message-ID: <e8d274bf7005058bf9e3df0cd3a0a6506b1bf598.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Niche Consulting India <contact@nicheconsult.in>, Khem Raj
	<raj.khem@gmail.com>
Date: Wed, 31 Jul 2019 23:25:07 +0100
In-Reply-To: <AB061DE5-38D5-471B-849A-EF16694940D3@nicheconsult.in>
References: <1564544459-411336-1-git-send-email-changqing.li@windriver.com>
	<8b53b4e5ccd515faed145f1844ac7be1170338fa.camel@linuxfoundation.org>
	<5DDDFCF3-C543-4699-91C4-AF5D54C98D8A@nicheconsult.in>
	<CAMKF1sqFNbLYMvtSxmyiS3K5naJqx7X7bOf9N0y4fNzpkCQOfQ@mail.gmail.com>
	<AB061DE5-38D5-471B-849A-EF16694940D3@nicheconsult.in>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: error in building qt5-image
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
X-List-Received-Date: Wed, 31 Jul 2019 22:25:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-07-31 at 22:53 +0530, Niche Consulting India wrote:
> there is no option to enforce single build process. Given below is
> usage of bit bake.

PARALLEL_MAKE = ""

or

PARALLEL_MAKE_pn-omxplayer = ""

will do that either globally or for that specific recipe.

Cheers,

Richard






