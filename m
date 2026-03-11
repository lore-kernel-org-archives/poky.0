Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B01125808
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 13:25:14 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.21396.1773235513503873996
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Mar 2026 06:25:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=UE/fpPo9;
 spf=pass (domain: linaro.org, ip: 209.85.210.173, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-82418b0178cso7508538b3a.1
        for <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 06:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773235513; x=1773840313; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=buJ+5vX2AHTjRb9efEpojUcLE6+TgqCdpL4Pbpr+YOc=;
        b=UE/fpPo91h2yBrBjnhVVL4l93+hD5LOYjEqrodatmhT/FHnfexH8MIOF2PYLvnID9b
         w9QP7L5bBRFuNzsxN2NTP6u1CBAI66ZWtB6jIAQeGbLxMss8wUXXIHCes7Pa1SYcOb0a
         kGGyonKlP7J4RrFJ4SG1CtdWt0A9YKYf4xbddt1/Fg/M56+1VnllXtjG4mraYOy+bRg0
         jS7bErfSSjomzqLj1ifLTn5lntxoNLb0nqoLK+EWRGi5AA/KydJw1E076vipEfLNHFrt
         w/R7dsLCQ4eTwm6qxMs5WSgtlSQh2tQyJyOmTEC0w70Xic7EVjtLOKBAARQQFD22hOFH
         HX/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773235513; x=1773840313;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=buJ+5vX2AHTjRb9efEpojUcLE6+TgqCdpL4Pbpr+YOc=;
        b=H5akxSepVXqD+61TonSTH0ueB1I7IlratUXAqSzKOuzCX4037cRNdRTjCiHO+2pezh
         232PvKpy+6s7+uovY3WzyEV0fBXMmxa0DLZN0MlLLKfV9Ju4/mchL8v2DmqR90VT8BqE
         qUMi4gTXuP8YPr5HzWP0smRQbAjXP3xv5UrdXMrf9Uw3fzFdVQxXrW3Sx30x9V++HROP
         ihFPcKJ4LNR1E4pSgFrfXHwzLAFGJ/ZQ3TQpF/nvhNikVf5jiyoclXWJPM2jX2VVYBAJ
         w/onctYMjBxTciJL1WN7jsWsqwnRcCJGFtsRCyrfbmY5hW82ozXxq92F9cdrL5HCfW1y
         hf9Q==
X-Gm-Message-State: AOJu0Yzk2/53Yx64Hj9FyMvbsc4EDfkuC7xhZJL8TuDu+adsnGrGXuKE
	/7kiCJ3jIP4jUHL+nbHjtPeV/Bong1J1SwtPLuK+1N9XHYTwftGOE06FKuLzrzfQcFo=
X-Gm-Gg: ATEYQzzW6MVgsrjH/k97YsRcKcBhX50ZBfHtYT2qSyNV5JNy94xvI/2gL+XMPvV82RD
	zMAAymHgQeMgeci81g5Ojl4EICx2WR+xPZ5lb6qYkYHprilguuk1FmPglkeea6kG1DZYcDz0fkQ
	Ts1s68QD7TxryLwjZfaFYTl7CGP1C55Nq6pNxuo7q8/yxSFSxc7s70jkFacHuaPn5aiXxNaVw5S
	wjFc/T+vFucsbmQa1iWlEnAaR5q/GTJi35JigRoYR7d3UVwkti82EHKs2osn7RCM6ExQmWurwM1
	8YNGg30paCHUREOWxkdcAy76hi4sXdvxsO4+RYtmzE51RUwRT87u447RUCv0n3lfWrUXog4QdmJ
	y8HarqUhS1CXc/pOZ5JNZ9WDv+oX2sSMbx+8dX3kXrX+z4r03H7FypC51sSQ4VwJAyIxTtGN6Lv
	UE8HBAlH5eJw+dv2MzRa49a6FerXt3CvfE4315YdNtoUBj5pq1dMeOW5w2
X-Received: by 2002:a05:6a00:3d54:b0:829:803e:6798 with SMTP id d2e1a72fcca58-829f718ad3bmr2452340b3a.56.1773235512669;
        Wed, 11 Mar 2026 06:25:12 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dfd4f3sm2300762b3a.16.2026.03.11.06.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 06:25:12 -0700 (PDT)
Date: Wed, 11 Mar 2026 15:25:08 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH v2] genericarm64.conf: fix qemu testing with
 testimage.bbclass
Message-ID: <abFtNPnZZBtzwxv0@nuoska>
References: <20260311125406.259842-1-mikko.rapeli@linaro.org>
 <fdd873c3c1a95ce400b8733aad5c7ae2320f4df7.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fdd873c3c1a95ce400b8733aad5c7ae2320f4df7.camel@linuxfoundation.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 13:25:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13861

Hi,

On Wed, Mar 11, 2026 at 01:16:50PM +0000, Richard Purdie wrote:
> On Wed, 2026-03-11 at 14:54 +0200, Mikko Rapeli via lists.yoctoproject.org wrote:
> > genericarm64 machine has supported qemu for a long time but
> > the default build config failed with testimage.bbclass to boot
> > and run oeqa runtime tests.
> > 
> > TESTIMAGEDEPENDS needs qemu utilities so that they are correctly
> > installed to image sysroot. For qemu machines these are set in
> > testimage.bbclass but remain unset for non-qemu machines like
> > genericarm64.
> > 
> > TEST_RUNQEMUPARAMS needs snapshot since default genericarm64 image
> > is a compressed wic.zst and nographic to run qemu without connected
> > display which is better on headless build machines.
> > 
> > With these set, default genericarm64 core-image-sato boots correctly
> > with testimage.bbclass and all oeqa runtime tests pass on an x86_64
> > build machine:
> > 
> > $ bitbake core-image-sato && bitbake -c testimage core-image-sato
> > ...
> > SUMMARY:
> > core-image-sato () - Ran 75 tests in 229.248s
> > core-image-sato - OK - All required tests passed (successes=24,
> > skipped=51, failures=0, errors=0)
> > NOTE: Tasks Summary: Attempted 1558 tasks of which 1556 didn't need to
> > be rerun and all succeeded.
> > 
> > To boot qemu manually (add "slirp" if tap networking not setup):
> > 
> > $ runqemu nographic snapshot core-image-sato
> > 
> > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > ---
> > �meta-yocto-bsp/conf/machine/genericarm64.conf | 4 ++++
> > �1 file changed, 4 insertions(+)
> > 
> > v2: dropper slirp from TEST_RUNQEMUPARAMS
> > 
> > v1: https://lists.yoctoproject.org/g/poky/message/13854
> > 
> > diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
> > index 2b1ce4bdd02b..d6839d16a515 100644
> > --- a/meta-yocto-bsp/conf/machine/genericarm64.conf
> > +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> > @@ -73,5 +73,9 @@ QB_TCPSERIAL_OPT ?= "-device virtio-serial-pci -chardev socket,id=virtcon,port=@
> > �# Virtio networking
> > �QB_TAP_OPT ?= "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
> > �
> > +# default to nographic to work on headless build machines using testimage.bbclass, snapshot for wic.zst image type
> > +TEST_RUNQEMUPARAMS ?= "nographic snapshot"
> > +# basic qemu testimage.bbclass support
> > +TESTIMAGEDEPENDS:append = " qemu-native:do_populate_sysroot qemu-helper-native:do_populate_sysroot qemu-helper-native:do_addto_recipe_sysroot"
> > �# If we're running testimage then we're in a qemu, so ensure u-boot is build
> > �TESTIMAGEDEPENDS:append = " u-boot:do_deploy"
> 
> I'll try again.
> 
> nographic does not make sense here, genericarm64 supports graphics as
> far as I know. The limitations of the test environment should not be
> hardcoded into the machine definition.
> 
> There are patches which I sent recently against master which fix that
> issue in a better way and will mean this is not needed. I am therefore
> not going to take that as it is confusing, incorrect and not actually
> needed.

Right, v3 then without nographic.

Cheers,

-Mikko

