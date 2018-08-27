Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90A94E00939; Mon, 27 Aug 2018 16:12:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFC12E0053F
	for <poky@yoctoproject.org>; Mon, 27 Aug 2018 16:12:33 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id u12-v6so522537wrr.4
	for <poky@yoctoproject.org>; Mon, 27 Aug 2018 16:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=r7gC2s5s3ou06DTeSjhK2l39dY1Lb7v9tlsUEuBRz8Q=;
	b=OIWOLDfOadrhi+7gzA2VjVshXItipnc0Xg7cY9HtGotIbyiWLhk1PM4NnAYMdfGbVg
	XHWe3gktR7sA8wK+Vkjda2L81hywWDV6vmC1Uej6DGw8q+aNQVt85/73hspd+/aS0FfA
	bkITwleboXOjUZm2u3Ga30v+RhmN9VIdjyND0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=r7gC2s5s3ou06DTeSjhK2l39dY1Lb7v9tlsUEuBRz8Q=;
	b=VfTg1F1ME6dIKyHxx5uv30sQuPlxSezoEttM4Jg5hXhVxY3f+mV6rHf0YT/15n8yz3
	LuMRahlrSFDO5weJi6xNIcW2wrcgtU/NJSXSS8RnypQsUpaRZsHRC6AVdCcAEqshsxi0
	+zhqVvXbQXuxjjvRMQFloiCFGSjkkRCZ/4fWGnw1D69hdzOl8wwtbb2KzCa5vgoQBpDf
	FFzuV3/eB3KeE3pmHB6RWTvAZOFeV7+J9wd9wwdIB0OoILmObLHXXxVlcjpTnff//SLe
	OBygX8/tmosa1/pr5VUVzM+JPxIisd2NPTYCfmy0ZJw6yTqwAcyehrqJRj8jDPJOU/vF
	MQvw==
X-Gm-Message-State: APzg51AbjI1sPij+d1q9Qf/UX53xtD75+jYPqheM2otE+jbY0D9ZWnQs
	DbHmzxF//NUDClqLC7XipPQ2bA==
X-Google-Smtp-Source: ANB0VdY5/jJYJphcFXQKUBJ7ikO2cKzkUCm+IcF+FbV2BlpFHh19HAnXqBuWqgCcgzsDru020leY5Q==
X-Received: by 2002:adf:a599:: with SMTP id
	g25-v6mr10053149wrc.88.1535411552799; 
	Mon, 27 Aug 2018 16:12:32 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	m207-v6sm344549wma.31.2018.08.27.16.12.31
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 27 Aug 2018 16:12:31 -0700 (PDT)
Message-ID: <58902a1687cb8e24bc9f7fef1141db742f680924.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Kevin Hao
	<kexin.hao@windriver.com>, poky@yoctoproject.org
Date: Tue, 28 Aug 2018 00:12:30 +0100
In-Reply-To: <34a50b47-dcb3-1d1f-2ca8-bd4a486a475f@windriver.com>
References: <20180825125134.267328-1-kexin.hao@windriver.com>
	<34a50b47-dcb3-1d1f-2ca8-bd4a486a475f@windriver.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
Subject: Re: [PATCH] meta-yocto-bsp: Bump the kernel to v4.18
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
X-List-Received-Date: Mon, 27 Aug 2018 23:12:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2018-08-27 at 09:47 -0400, Bruce Ashfield wrote:
> On 2018-08-25 8:51 AM, Kevin Hao wrote:
> > Bump the kernel to v4.18 for all the boards in meta-yocto-bsp
> > layer.
> > 
> 
> Thanks Kevin, this is fantastic.
> 
> Richard: I don't know the status of my other 4.18 changes, but I
> could
> take this into my queue and re-submit it all with the 4.15 kernel
> being removed.
> 
> Or since there are no major problems with my 4.18 uprev, maybe this
> should just be independently grabbed ? Versus me re-submitting
> unchanged
> patches.

The original patch queue was testing in -next. I was away for the
weekend so the results were waiting for me when I got back.

As you say, it seems ok from the kernel perspective, there were some
other issues with other patches.

I've pulled in Kevin's patch for the next round of testing, no need to
resend anything.

If it works out and merges, we can then just remove 4.15 with a new
additional patch submission?

Cheers,

Richard

