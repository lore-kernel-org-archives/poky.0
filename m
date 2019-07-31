Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 799ADE00D8A; Wed, 31 Jul 2019 03:20:07 -0700 (PDT)
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
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07682E00D85
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 03:20:06 -0700 (PDT)
Received: by mail-wm1-f68.google.com with SMTP id h19so956550wme.0
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 03:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=Cm9JjU86APwrfYK6ryMx56TgAIDtUJvJPH5Zg+DTHQU=;
	b=QkUFFxElTIIsXTL1m4BFwRnEC86bCSd87GY3tpfdU7f/91UP6WR6xS1bnehha64tZk
	L8plg3UfyUT2dmKSljLAl6nHtwL0p3bFNZFHWB6v8+vfW6qq9Rlq4I81dtpLRTNqRd/N
	a7ztDPr7d0k+9aC2Ce4DFFn0yAScHXtBY2vCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=Cm9JjU86APwrfYK6ryMx56TgAIDtUJvJPH5Zg+DTHQU=;
	b=CsKoqI6P6eKy2hp6RtBcCLJQB7UOLU3qU8Js4ynrgi2K0Mut7u5FlU4TLLtp+RmMmq
	4s1l/I+1s9nko51u5Nc3HwPosuaWpz992VjjhCJnZ1spUvzsImwEO+P4Uq5bZcGszF1S
	dQfVZTt5N9f5BGO/kbHrpd0L0iMrjuL//GJpWZ8G6O0Ix+VWt/rOU4q7NyLw3XBLcRug
	l8W2UybCjh4yyJOYt0gRDhpuu/m0jLouUyeDEey1ImZf16+MGW436IueHXbbiUSvejjh
	1yYa9VfYwYuUAktq6FyufU+KIJDOttSy/036jkoUP9kINyDmYyDoKLLyEKT7n8TPIs4X
	RMdw==
X-Gm-Message-State: APjAAAWvs+wtBub6M/oogOcLghcWBIAGd8Yh/Ts3+AI9dskY6WskROsI
	ZYSW6HQUVcccbjcFijiAUMz4x221JIM=
X-Google-Smtp-Source: APXvYqzT/zUqjhwS9Z8XgWfyUGZdt5a7nvZ/qKorQerhAAb9PRekf5jeO9/2WK30LKFwvryesDzgZw==
X-Received: by 2002:a7b:c081:: with SMTP id r1mr60925197wmh.76.1564568405990; 
	Wed, 31 Jul 2019 03:20:05 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	y16sm68972550wrw.33.2019.07.31.03.20.04
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 31 Jul 2019 03:20:05 -0700 (PDT)
Message-ID: <8b41cd10b0e3ffb1b0ec75cf2b0a796d1ca22888.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Changqing Li <changqing.li@windriver.com>, poky@yoctoproject.org
Date: Wed, 31 Jul 2019 11:20:04 +0100
In-Reply-To: <3ffdf92e-33d0-7d68-36b9-ce818ee03a78@windriver.com>
References: <1564544459-411336-1-git-send-email-changqing.li@windriver.com>
	<8b53b4e5ccd515faed145f1844ac7be1170338fa.camel@linuxfoundation.org>
	<3ffdf92e-33d0-7d68-36b9-ce818ee03a78@windriver.com>
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
X-List-Received-Date: Wed, 31 Jul 2019 10:20:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-07-31 at 17:38 +0800, Changqing Li wrote:
> On 7/31/19 5:00 PM, Richard Purdie wrote:
> > On Wed, 2019-07-31 at 11:40 +0800, changqing.li@windriver.com
> > wrote:
> > > From: Changqing Li <changqing.li@windriver.com>
> > > 
> > > Configrations:
> > > MACHINE: qemux86-64
> > > require conf/multilib.conf
> > > MULTILIBS = "multilib:lib32"
> > > DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
> > > 
> > > Reproduce steps:
> > > bitbake lib32-core-image-minimal
> > > runqemu qemux86-64 nographic lib32-core-image-minimal
> > > 
> > > Errors:
> > > qemu cannot bootup since:
> > > Booting from ROM...
> > > This kernel requires an x86-64 CPU, but only detected an i686
> > > CPU.
> > > Unable to boot - please use a kernel appropriate for your CPU.
> > > QEMU: Terminated
> > > 
> > > For lib32 image, override has x86, so the qemubin set to qemu-
> > > system-
> > > i386,
> > > fix by move qemuboot parameters to corresponding conf, don't use
> > > the
> > > override
> > Why remove/move the whole file when its just QB_SYSTEM_NAME that is
> > the
> > issue and that alone could be moved?
> 
> I think maybe put qemuboot related parameter together in one file is
> better
> 
> than some config is here and some config is there. So I move the
> whole  content

I would prefer not to duplicate this kind of configuration if we can
help it...

Cheers,

Richard


