Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFD1AE00D38; Wed, 28 Aug 2019 08:56:31 -0700 (PDT)
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
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06CECE00D11
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 08:56:30 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id g7so363830wrx.2
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 08:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=vAarbfVn+DvGTqBDCtplWW6dS0vVjVPLghe1aeJRcCI=;
	b=PEDYXSKWSu/ktJV+VsvDAiU15SzZj+rqmEXDBHq6KnZMU8+83ZD7vG0GExzp+JzdhF
	Wxlgy+4VCv4FQyL+WiDFy/rogEEhy6yucjeTVUTr/irgbPwtOtrFJG81cwd34gHbWUPK
	UYqWGj1zAguqSaxuNLtkfzputD41dO4Jydh3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=vAarbfVn+DvGTqBDCtplWW6dS0vVjVPLghe1aeJRcCI=;
	b=bdZB6zr6URVR7bpLu/JJSLDI9o78p9/6A2B902sT8Pbcpy/cU+HROqhlOcaMtNrosw
	V9qKd5Xp0Je0m+ophFVA6jEcTQnUjf3UIJuoHRpUJ2roXV9A+hEqHLKzeC4/SeoWHWTN
	Kg58jlCU6L9vGlTgtAcL/tguGKCwnHZplZbpURBcqzNC38rxgRJLsZpBiB6OpsRy0P1y
	DX865faBpYKKe1vLLMyNnCetfDHxt1zNFZzMp7PA6FkMWvloIXiXfGlbT/2uhrEJStC8
	C3oIRHmmq0ItpTBHJFgSPzuIRFsZBu2CRApd7W+Arozlni6nsKyaPMlroyxGVuW46pMe
	bfiA==
X-Gm-Message-State: APjAAAXV4lF2/8c8dvRD10XdbDXVVSAU+vVi3YBYR95KkK3SAA04tNWQ
	iASYEXC6OSg02gmy/oV3awKqeg==
X-Google-Smtp-Source: APXvYqwnwAzz9Dyd5iMQcVzDJEz5E8EKeuc8pwZf1AUvQalsx/jbfJVNkcQkK/veVWobo2t44ZIVYQ==
X-Received: by 2002:a05:6000:4d:: with SMTP id
	k13mr5136205wrx.196.1567007790171; 
	Wed, 28 Aug 2019 08:56:30 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id 20sm3606456wmk.34.2019.08.28.08.56.29
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 28 Aug 2019 08:56:29 -0700 (PDT)
Message-ID: <39a549fe659c925340440413ea15092c6724924d.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>, Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Aug 2019 16:56:28 +0100
In-Reply-To: <CAMKF1sqZCCvpWN66++jZqD0znv+2m+4RbDiN7z5+3dJEB55NFw@mail.gmail.com>
References: <20190828152633.70910-1-alex.kanavin@gmail.com>
	<CAMKF1sqZCCvpWN66++jZqD0znv+2m+4RbDiN7z5+3dJEB55NFw@mail.gmail.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] beaglebone: use the default of 256M rather than 512M
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
X-List-Received-Date: Wed, 28 Aug 2019 15:56:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-08-28 at 08:54 -0700, Khem Raj wrote:
> On Wed, Aug 28, 2019 at 8:27 AM Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
> > This is done for the sake of using the same default
> > everywhere; see here for details:
> > http://lists.openembedded.org/pipermail/openembedded-core/2019-August/285900.html
> > 
> > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > ---
> >  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > index 7c7b3059a9f..57b799294d4 100644
> > --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > @@ -47,7 +47,6 @@ QB_DEFAULT_FSTYPE = "wic"
> >  QB_FSINFO = "wic:no-kernel-in-fs"
> >  QB_KERNEL_ROOT = "/dev/vda2"
> >  QB_SYSTEM_NAME = "qemu-system-arm"
> > -QB_MEM = "-m 512"
> >  QB_MACHINE = "-machine virt"
> >  QB_CPU = "-cpu cortex-a15"
> >  QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0 systemd.mask=systemd-
> > networkd"
> 
> I wonder if all these QB_* settings are relevant to non-qemu machines
> in first place

qemu can now emulate the beaglebone, so yes.

Cheers,

Richard


