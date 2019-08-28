Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAE0DE00D38; Wed, 28 Aug 2019 09:01:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09AA7E00D11
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 09:01:40 -0700 (PDT)
Received: by mail-wm1-f68.google.com with SMTP id r17so2092647wme.0
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 09:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=yX44FdTrJsJwmaLd9HW8EqqPPxz31FP4xHIIWlfcUEI=;
	b=QciLsAgH8KagctCx/yckPkSJS5vv5SQE1gdPNCcJwgme18dA9JOQUF+xSx+CnX6HzI
	CwMkVCSFlP3/2RNNN/eGAjUf1lB4BJs2GZSTI0TsouCG4fOh8bDZ6KZcI9gV6wHSoPGe
	J20W0y03UvB+Qj6Y07fFHDdr7ISnOgpWXsJPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=yX44FdTrJsJwmaLd9HW8EqqPPxz31FP4xHIIWlfcUEI=;
	b=tpaw7nLmYbDdboG7hQhkmWkFpzJYdDgIb2tqFN9swH11yZeHOJpxYFEdvi30Auq14r
	qTeRTuGTpdSKoOi8LihYBI2ufb9DT6qWP2Y6pdiLXsnwz3TCPujVaMfztVcvVBD4mS/z
	Y/GNJYNl3ZLOcDyMFzDmNXYWFSiTxQGG3QG+59aehkr4faBci1ZLbRw0Sbz2+WMR0C7U
	GCB+7iDB+cG8qiStpzOlUgTdnpT6Xux7EyXzZs5aKpAYJ/GqYwLqADq3xzUPa7wDVTSn
	BhmozwFd/s7nJmy7qtG0yGXOFrwGog3gbyS0suGNdcIb16HFLdW/jOBMgXzfw1d8GJJl
	O2oQ==
X-Gm-Message-State: APjAAAWZsiPjqCiM4pFpssKLPlrrAjWQRmw82+76C6DHLTNsZKar3s4z
	FJ+GP1g9vDav5BbcOw3HOBzESw==
X-Google-Smtp-Source: APXvYqweuaD0aExMQshnSw9AGP/3R+OLkTupIMIsc+DJg/wAbZlgbrDcfXPi9jVZ+0jSCxIk7zcPFg==
X-Received: by 2002:a1c:494:: with SMTP id 142mr5627040wme.12.1567008100135;
	Wed, 28 Aug 2019 09:01:40 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id u6sm2995057wmm.26.2019.08.28.09.01.39
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 28 Aug 2019 09:01:39 -0700 (PDT)
Message-ID: <6a58fed16681a9e98a3c52f2da5680058c547cfa.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 28 Aug 2019 17:01:38 +0100
In-Reply-To: <CAMKF1sqwSXpyTzcSVfFBxz0sYyoMB--CL3Z5M9etOXcExoeDQg@mail.gmail.com>
References: <20190828152633.70910-1-alex.kanavin@gmail.com>
	<CAMKF1sqZCCvpWN66++jZqD0znv+2m+4RbDiN7z5+3dJEB55NFw@mail.gmail.com>
	<adf200a45c75cc70ba7d9102023b5b1846dbe3a9.camel@rpsys.net>
	<CAMKF1sqwSXpyTzcSVfFBxz0sYyoMB--CL3Z5M9etOXcExoeDQg@mail.gmail.com>
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
X-List-Received-Date: Wed, 28 Aug 2019 16:01:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-08-28 at 08:59 -0700, Khem Raj wrote:
> On Wed, Aug 28, 2019 at 8:56 AM Richard Purdie <rpurdie@rpsys.net>
> wrote:
> > On Wed, 2019-08-28 at 08:54 -0700, Khem Raj wrote:
> > > On Wed, Aug 28, 2019 at 8:27 AM Alexander Kanavin
> > > <alex.kanavin@gmail.com> wrote:
> > > > This is done for the sake of using the same default
> > > > everywhere; see here for details:
> > > > http://lists.openembedded.org/pipermail/openembedded-core/2019-August/285900.html
> > > > 
> > > > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > > > ---
> > > >  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 1 -
> > > >  1 file changed, 1 deletion(-)
> > > > 
> > > > diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > index 7c7b3059a9f..57b799294d4 100644
> > > > --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > @@ -47,7 +47,6 @@ QB_DEFAULT_FSTYPE = "wic"
> > > >  QB_FSINFO = "wic:no-kernel-in-fs"
> > > >  QB_KERNEL_ROOT = "/dev/vda2"
> > > >  QB_SYSTEM_NAME = "qemu-system-arm"
> > > > -QB_MEM = "-m 512"
> > > >  QB_MACHINE = "-machine virt"
> > > >  QB_CPU = "-cpu cortex-a15"
> > > >  QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0
> > > > systemd.mask=systemd-
> > > > networkd"
> > > 
> > > I wonder if all these QB_* settings are relevant to non-qemu
> > > machines
> > > in first place
> > 
> > qemu can now emulate the beaglebone, so yes.
> > 
> 
> I see, but I thought beaglebone-yocto targetted a real board, and
> shouldnt we have something like qemubbb or somesuch for this ?

What purpose would that serve? I think its fine to have one machine if
(and only if) qemu intends to emulate that specific hardware.

Cheers,

Richard


