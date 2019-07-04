Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A124E00BE9; Thu,  4 Jul 2019 15:34:44 -0700 (PDT)
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
	*      [209.85.128.65 listed in list.dnswl.org]
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D93E00931
	for <poky@yoctoproject.org>; Thu,  4 Jul 2019 15:34:42 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id p74so3941584wme.4
	for <poky@yoctoproject.org>; Thu, 04 Jul 2019 15:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=zJggDSeUJHhejnqW2kL26czyG6ulZYiNuqpFfgMUPCk=;
	b=VC/NDO85qLhrXkKhJxkiX2tciZygLUZWIzNXWbwGScLQa66+8g8rmdB6B+xUc/uTZ/
	3baNO38+XJd3Yy5nzapqIClN1s9aIzP8PGHwvV++ZzUFVrfCXMVJvPCHsBnnCZyjZcCm
	kEG2ASWP9pfNBCk3AOjbAf8mENtaT5XcqmlW8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=zJggDSeUJHhejnqW2kL26czyG6ulZYiNuqpFfgMUPCk=;
	b=HpSnfjMKIxW4woqHu6/7934eLtEooJkx7zGTqZcESCIn5zU17A8qgpiMEps6rGvxry
	hD5o+8vzKNpZ4NYgK+Q28aVBoZ57ed/oXZGrHWZ+s0f+WHfwEM0EYEF2oI1qV/NbaObB
	s2QasCt6oYYrm3q4jmuufwBIO6jzi7tbMZBMg7xAlRnRUa7hlwDoCKT31PC/CunQk41l
	+ibY+wDvEd1bYIZWmjJXZ50mkn7adaH1mLP3sV9bKOdCEteSjcu9ErvSSJAhicJXy4dZ
	cXHybpBDNnZ8aV3weUVyu1uksiSw+ujTnt7n17dSG2cqZeM3FtB1zOy2dRiJ17heobNc
	WkFg==
X-Gm-Message-State: APjAAAWRWeSWgCG/Ymlg00FbsW5AhyUX1CDRzGqKokvQSupSEm0H8DL+
	lEKyJXmsqiOMh1rfgk9h8p68N42x19Q=
X-Google-Smtp-Source: APXvYqxZzQDDrfdT/3B9QW7/Hcrze19S+5sS1gcaPwo4n69UsCcnRMLToNft57HjfIHqcNBqA7VMVA==
X-Received: by 2002:a05:600c:23d2:: with SMTP id
	p18mr178338wmb.160.1562279682032; 
	Thu, 04 Jul 2019 15:34:42 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	h11sm7729279wrx.93.2019.07.04.15.34.41
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 04 Jul 2019 15:34:41 -0700 (PDT)
Message-ID: <de9d7616cf0be808440f3b368f0fc2fb274bd7a4.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: kai.kang@windriver.com
Date: Thu, 04 Jul 2019 23:34:39 +0100
In-Reply-To: <20190704134520.16320-3-kai.kang@windriver.com>
References: <20190704134520.16320-1-kai.kang@windriver.com>
	<20190704134520.16320-3-kai.kang@windriver.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [meta-poky][PATCH 2/2] poky.conf: make systemd as default init manager
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
X-List-Received-Date: Thu, 04 Jul 2019 22:34:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-07-04 at 21:45 +0800, kai.kang@windriver.com wrote:
> From: Kai Kang <kai.kang@windriver.com>
> 
> Make systemd as default init manager for distro poky. And set
> sysvinit
> as default value for musl considering security.
> 
> Update poky-tiny.conf to use new introduced variable INIT_MANGER.
> 
> [YOCTO #13031]
> 
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  meta-poky/conf/distro/poky-tiny.conf | 8 ++------
>  meta-poky/conf/distro/poky.conf      | 5 +++++
>  2 files changed, 7 insertions(+), 6 deletions(-)

I tested this in a build:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/259

and there are a number of failures in there which look related to this
and will need to be resolved before we can make this switch. I'll still
aim to get patch 1 in since we should be able to do that and at least
clean up poky to use it, then its just the switch ti systemd we need to
do.

Cheers,

Richard


