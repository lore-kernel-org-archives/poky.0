Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F710E00D89; Wed, 31 Jul 2019 02:00:22 -0700 (PDT)
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
	*      [209.85.221.67 listed in list.dnswl.org]
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55019E00D33
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 02:00:20 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id r1so68742993wrl.7
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 02:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=5p3sL1TR8twfZ5wldx2Ddy7hCN3OC5nQrfruEFwPzd4=;
	b=FYehwv6zqci+DGCv5G/ZtdjF8qg5SaB8dw2w3yj1oIKz9jbab+m8BA1dREJ7vPtbJu
	ot8fmOWMCYlSUZ5bgigroTZhgLlrZADFXPImZw9UQlXcWkMCQuKxR4wqTyHXQFv+2HWL
	XB8/VBMCQN0Vq2qjlajFJchx8mZ7vtqr1fJGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=5p3sL1TR8twfZ5wldx2Ddy7hCN3OC5nQrfruEFwPzd4=;
	b=GK31hZNp3Tav6/voOYbMWLXkx977+Opt4SrXMxflf2V6EYjRQDdJhn+7/e31ymjq3X
	oACJgnY6JRMkgYDPkNE0E+iBmNgHSV2uVPm/cahmySFf/Wc8+VPyRFz4WWxqPQ+hQHIK
	JHfjWkiT7x3NjeQBYjhJG/SqAxxZwEUJbH+vvGvVOb8b6Su/NZWYr0j/Cqh77SpM12IR
	2G8uGRLrePg0x7QIIabB+kcGt0gb7luT5hW4mXARCmLLaVTgAwftJ15k9CvCbPazESrB
	e5ORXtwk85v8Va1WIA87tnNDrGZB3JKC9WQ37j1UyaCriyyX4gzNOoSIHO1JtjWWuG9q
	bPqA==
X-Gm-Message-State: APjAAAXN+amPJ1YS8sn5oRaCS2liBT/smk9QcCI7hW8p/3q4dZzpzLeo
	aRPVM9LK86Lhq0fgCRTKRE1azQ==
X-Google-Smtp-Source: APXvYqyUA8FIsFqQmWc6dTBXE+EWy/O+ZwFEFNNqOBotezAxRRt4OmQFmwnPzGdrgJelmLI9npWasw==
X-Received: by 2002:adf:db8e:: with SMTP id u14mr11819094wri.314.1564563619309;
	Wed, 31 Jul 2019 02:00:19 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id p7sm42881203wrs.6.2019.07.31.02.00.18
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 31 Jul 2019 02:00:18 -0700 (PDT)
Message-ID: <8b53b4e5ccd515faed145f1844ac7be1170338fa.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: changqing.li@windriver.com, poky@yoctoproject.org
Date: Wed, 31 Jul 2019 10:00:17 +0100
In-Reply-To: <1564544459-411336-1-git-send-email-changqing.li@windriver.com>
References: <1564544459-411336-1-git-send-email-changqing.li@windriver.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: [PATCH] qemuboot-x86.inc: remove it and move content to corresponding conf
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
X-List-Received-Date: Wed, 31 Jul 2019 09:00:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-07-31 at 11:40 +0800, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
> 
> Configrations:
> MACHINE: qemux86-64
> require conf/multilib.conf
> MULTILIBS = "multilib:lib32"
> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
> 
> Reproduce steps:
> bitbake lib32-core-image-minimal
> runqemu qemux86-64 nographic lib32-core-image-minimal
> 
> Errors:
> qemu cannot bootup since:
> Booting from ROM...
> This kernel requires an x86-64 CPU, but only detected an i686 CPU.
> Unable to boot - please use a kernel appropriate for your CPU.
> QEMU: Terminated
> 
> For lib32 image, override has x86, so the qemubin set to qemu-system-
> i386,
> fix by move qemuboot parameters to corresponding conf, don't use the
> override

Why remove/move the whole file when its just QB_SYSTEM_NAME that is the
issue and that alone could be moved?

Cheers,

Richard


