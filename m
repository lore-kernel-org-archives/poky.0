Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5382BE00D54; Mon,  3 Jun 2019 05:30:37 -0700 (PDT)
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
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7492CE00D45
	for <poky@yoctoproject.org>; Mon,  3 Jun 2019 05:30:36 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id p11so7020360wre.7
	for <poky@yoctoproject.org>; Mon, 03 Jun 2019 05:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=riR8RLGlKIljvDA8ixw/XXSyenOG/l/YmDF4YMn86UI=;
	b=YWeZhYBrXPtojGmqaBQb+g01G2OVqAoogfQJXtB/mPS9Aqg6LUgQfeynbClAGK1tTG
	aSnO7czhVXyIJRHU0WvwfmyGbRct6cptd0GxXSPEOFBnG9RwVsaXD++F5H8MJjfd2VUf
	uLoDzXHEMvwXQJiK1/Nhtmc37Nn+Z3d6R1Vio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=riR8RLGlKIljvDA8ixw/XXSyenOG/l/YmDF4YMn86UI=;
	b=SoKZI/c8dqpkU4a2m/FpVrh2YKKm+8e8mZmKNyyCT4m8euEPn5SYGl2pTHGbY6Dvxl
	8S7GoUZHiQ8B6pA+20ZI0ynwnNm6/44nJJJE5ii6emg+T7HAt1K69hpKoL1aT4l6S7iL
	f6dYV+Kss2l0G6th+xndzewO00jUkl1J1t/zW0NpyLenQPc6zdoxT98Hxk4Rx9rA9Ga5
	VBBlE55mZiu4Gua4pY7rqSdBdudEVGK7e3ZE1qfqqK3rtGTjHZOTrn2UHh5kyLNsYhU4
	yrstrfBMfG+xqwkaVh3/Gp9MqnHk0aVtX+cTX/DdCGld4f+5JHHPYRLjL+omcPfiu6VV
	KxbQ==
X-Gm-Message-State: APjAAAXzcDIgc2Wf44c54EJav/+uLlWGUY/RgJFLYLFQJbnT8evNOOSS
	J6Wzsi0cGd35lWysQZkAw/ZxAw==
X-Google-Smtp-Source: APXvYqyeYvOooaaaztJ5Np6emh+FugpmzcxcU5gWKTyym5eYuTCiWZOfyr/V68wjb1mc2l49iECk2Q==
X-Received: by 2002:a5d:5108:: with SMTP id s8mr8974212wrt.341.1559565035641; 
	Mon, 03 Jun 2019 05:30:35 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	l18sm34218428wrh.54.2019.06.03.05.30.34
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 03 Jun 2019 05:30:34 -0700 (PDT)
Message-ID: <51adf784752be06beea78dbe4a523a403671dbe0.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: kai.kang@windriver.com
Date: Mon, 03 Jun 2019 13:30:32 +0100
In-Reply-To: <20190602145530.183521-1-kai.kang@windriver.com>
References: <20190602145530.183521-1-kai.kang@windriver.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [meta-poky][PATCH v6 0/2] Make systemd as default init manager and configure wired network
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
X-List-Received-Date: Mon, 03 Jun 2019 12:30:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2019-06-02 at 10:55 -0400, kai.kang@windriver.com wrote:
> From: Kai Kang <kai.kang@windriver.com>
> 
> v6:
> * create .inc files as Richard suggested, and include them according
> to POKY_INIT_MANAGER
> 
> Kai Kang (2):
>   poky.conf: make systemd as default init manager
>   systemd-conf: configure wired network with dhcp

This is looking good, I do agree with Peter about the file naming. I
ran it through the autobuilder to see where we are at runtime and the
results were not so good:

https://autobuilder.yoctoproject.org/typhoon/#/builders/85/builds/484

We may need to reduce some of the free space in the ptest image and it
looks like there is an NFS startup failure issue in the sdk images.
There may be other issues in there too but those were the two I
immediately saw.

Cheers,

Richard


