Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABE52E00C45; Sun,  9 Dec 2018 10:12:15 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EF19E00BE8
	for <poky@yoctoproject.org>; Sun,  9 Dec 2018 10:12:14 -0800 (PST)
Received: by mail-wm1-f68.google.com with SMTP id y1so8717752wmi.3
	for <poky@yoctoproject.org>; Sun, 09 Dec 2018 10:12:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=7/Ftm4dfWfkBMshlNh0DDnOxrhv1ux40apaRYpKgw8Y=;
	b=VwIDKBE9t01Ox2v65ZSLxeJ4EoPGwjAH+yHwrsufbLbS/gQbKXYpTmIuCc+YwDnGt9
	wdBTXWws1Gebok+JLFVhcAzsJEozK7/WyDaGClmB44g0UVuCW4EBk3MSaBJxCv95GXJL
	5eKOG5WN4PpHxt2iJRXn7VfZNR+e/Ooi1jjfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=7/Ftm4dfWfkBMshlNh0DDnOxrhv1ux40apaRYpKgw8Y=;
	b=FyffF8N/nLlSBOnN9UNqTDXFrFQOy0bICIRvkJBFdAjLno1bD1+V1vRe9johc8ipgL
	LHkemT5Uktrw6lsRm9UO3W1P0TY4PS0eneYUsnZ5ARDxt1As8NfeQPovlSVGbmRScaRL
	kQk3rczbQc2CujtHg1J5bqa+pYppBRa4hncvu6dOjepBj9LWdifgVM+89cFohBe6DVTG
	WJvmHw1X+52b/sf4/K7R2F6Ic2PAWAYTay6fvXvLLJ7x+pgSPkATJMevybkkck3UoAwt
	M+A0BSTzTXHWmKrjcH4x0xmSj3p2O5s32SPYlcqs7BiFk9dPTXmPeZAt7qcn77ChWdwJ
	atWw==
X-Gm-Message-State: AA+aEWZFPP5xxFJPxa+jm5+wP5ApL3AT2r1KXGGfnAEsogeHvGD8il+2
	aUg2+5lWhyRQsfCVr+6h4bfuZOipmDRZrg==
X-Google-Smtp-Source: AFSGD/XgtxbaTgXYlewLr613SC0WCU5mkv+W7UDBe0UKTLCrdtEHronbXN6nqrgvHvJvHd1lhAwAng==
X-Received: by 2002:a1c:48c1:: with SMTP id
	v184-v6mr8412412wma.26.1544379133372; 
	Sun, 09 Dec 2018 10:12:13 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o15sm14206864wrp.12.2018.12.09.10.12.12
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sun, 09 Dec 2018 10:12:12 -0800 (PST)
Message-ID: <81b73451de8a9149beda328186cbdf4adb4452ea.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: kai.kang@windriver.com, poky@yoctoproject.org, openembedded-core
	<openembedded-core@lists.openembedded.org>
Date: Sun, 09 Dec 2018 18:12:07 +0000
In-Reply-To: <c2e11d2a6ebb8da6177c0b0d7174a0e2047093db.1544102766.git.kai.kang@windriver.com>
References: <cover.1544102766.git.kai.kang@windriver.com>
	<c2e11d2a6ebb8da6177c0b0d7174a0e2047093db.1544102766.git.kai.kang@windriver.com>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
Subject: Re: [meta-poky][PATCH 1/1] local.conf.sample: make systemd as default init manager
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
X-List-Received-Date: Sun, 09 Dec 2018 18:12:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2018-12-06 at 20:53 +0800, kai.kang@windriver.com wrote:
> From: Kai Kang <kai.kang@windriver.com>
> 
> Move configurations from local.conf.sample.extended to
> local.conf.sample
> to make systemd as default init manager for poky.
> 
> [YOCTO #13031]
> 
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  meta-poky/conf/local.conf.sample          | 8 ++++++++
>  meta-poky/conf/local.conf.sample.extended | 8 --------
>  2 files changed, 8 insertions(+), 8 deletions(-)

I had a feeling there would be some issues to fix before we could do
this by default:

systemd fails to compile with x32:
https://autobuilder.yoctoproject.org/typhoon/#/builders/57/builds/76

sanity tests on qemux86-64 core-image-sato-sdk:
https://autobuilder.yoctoproject.org/typhoon/#/builders/73/builds/77/steps/7/logs/step1c

sanity tests on qemuarm core-image-sato-sdk with poky-lsb:
https://autobuilder.yoctoproject.org/typhoon/#/builders/38/builds/77/steps/7/logs/step1c

dpkg issues:
https://autobuilder.yoctoproject.org/typhoon/#/builders/76/builds/77/steps/7/logs/step2c
https://autobuilder.yoctoproject.org/typhoon/#/builders/50/builds/77/steps/7/logs/step1c

wic failure:
https://autobuilder.yoctoproject.org/typhoon/#/builders/56/builds/33/steps/7/logs/step2d
(postinstall problem?)

musl sanity test issue:
https://autobuilder.yoctoproject.org/typhoon/#/builders/64/builds/77/steps/7/logs/step1c
https://autobuilder.yoctoproject.org/typhoon/#/builders/45/builds/78/steps/7/logs/step1c


Hopefully its a small number of issues at the heart of this but we need
to sort this out before it can merge.

Cheers,

Richard



