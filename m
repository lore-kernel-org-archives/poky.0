Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28FAAE00D47; Tue, 23 Jul 2019 12:30:47 -0700 (PDT)
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
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6997E00D44
	for <poky@yoctoproject.org>; Tue, 23 Jul 2019 12:30:45 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id p74so39597228wme.4
	for <poky@yoctoproject.org>; Tue, 23 Jul 2019 12:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=GaMopCkHUNPAJSVnYjvpAvZw2L4uX9vB5nbDeCobSTo=;
	b=EqR1NfSHCO9FHEi2r1vqkBIwQodlmc1pI4ST69N/3dsfDbFofbVST7uN5gQGHpKi6B
	tYCBGKCEWHVvs4zyKjRsFsrFt8WnmgDkzrmp3hoD+JcICar8k1BauruRHbt8h4By6WyC
	0aO7HbAhgJEKna457UCdv7vYoDdVhFAR3s580=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=GaMopCkHUNPAJSVnYjvpAvZw2L4uX9vB5nbDeCobSTo=;
	b=WlpIGs7fImZ/z/UizRS4gaiMPrwTEmq0DLIDAOZJH3iWmLjg7bulfoIiZJp/KHVpdg
	hZoFH86Dvkfv6k/nYEWTrmgDeeLrKhGyluyyW0+07vyW15DQ8GlY8i5wWHCKc7gqmEM4
	FxcsV1/1/DKIeWuQDVctkUGK8uErdU2V8D+HVzcXBzkSx3tDwuQNzSHLI8WKTwYMnFJH
	TT7MAcEHZwGtuxeFmuheKnUMxH8qQd+JKGPQCndtzRK8zkqsCME++235tzHoPlAfdoxH
	TBdvJuLoy+HaRrkkt4PlCrwD3ZDOtoue++esMzJt4BWUG/2L/FYddrVJ5SsdadgrQOnO
	/h3w==
X-Gm-Message-State: APjAAAXZFqNGMLWU+EkYQnc/96/8ffExBOEadTWaCbBEjgW5bQYNMnBc
	HrA41DcZQBxQZiensX8Mu/URgQ==
X-Google-Smtp-Source: APXvYqzILq9iKl1O1ATmWHjrkW2cS0mT7Z9inJ83xcM2zg25d90y61omwlOGgj0RxCRNvaTj/3uKVA==
X-Received: by 2002:a7b:c215:: with SMTP id x21mr70411003wmi.38.1563910244823; 
	Tue, 23 Jul 2019 12:30:44 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	h133sm46533713wme.28.2019.07.23.12.30.43
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 23 Jul 2019 12:30:44 -0700 (PDT)
Message-ID: <71422bd44cac604f8a076b30a5d353669cc0b314.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "Kai.Kang@windriver.com"
	<Kai.Kang@windriver.com>, "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 23 Jul 2019 20:30:43 +0100
In-Reply-To: <73fdb42fa63f84e7ed6ec52a183bff73edc4272b.camel@intel.com>
References: <20190704134520.16320-1-kai.kang@windriver.com>
	<20190704134520.16320-2-kai.kang@windriver.com>
	<CAJTo0LbmYp-70L=Z_T0jE4xS1mR_vLXKQE18O_EpeEwD6wdroA@mail.gmail.com>
	<a3ee2977ee2d63f1908f110d9273352815ba7d35.camel@linuxfoundation.org>
	<8d6b156e-7d68-e4b8-8688-2c897ebf228a@windriver.com>
	<73fdb42fa63f84e7ed6ec52a183bff73edc4272b.camel@intel.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [oe-core][PATCH 1/2] defaultsetup.conf: enable select init manager
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
X-List-Received-Date: Tue, 23 Jul 2019 19:30:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-07-22 at 23:26 +0000, Mittal, Anuj wrote:
> On Mon, 2019-07-22 at 09:37 +0800, Kang Kai wrote:
> > I just run oe-selftest -a with this patch after you updated the
> > patch
> > in 
> > oe-core. But I met some (>15) errors
> > 
> > ERROR: Unable to start bitbake server (None)
> > 
> > But I think it should not be related with init manager changes and
> > will 
> > change a build machine to test.
> > Do you have test it again in autobuilder and any failure found?
> > Thanks.
> 
> Not sure if these have been reported but there are some failures in
> runtime tests which look related to this change:
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/38/builds/855/steps/8/logs/step1c
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/50/builds/852/steps/8/logs/step1c
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/76/builds/856/steps/8/logs/step2c

I did a back to back build comparision with and without the init system
change.

Basically every failure in:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/297

seems to be due to the init system default change so we have some
issues in there to resolve before we can change the default.

Cheers,

Richard


