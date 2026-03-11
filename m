Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BBB3106289F
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 13:17:04 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.20678.1773235014224031945
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Mar 2026 06:16:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GxvcLmhF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439b97a8a8cso9963400f8f.1
        for <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 06:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1773235013; x=1773839813; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IcPXiNc1TZMsEizRtLhf/Yl0SxyeiltbkV25/uvjCCM=;
        b=GxvcLmhF8e/9DGdpBQF7CtsiMZVBLGzYMUBHDtXjfqZeCG3iLRI/mJ+zNvv+zkrT2S
         XwCv+zNOEjBERc9TFNpUfxjnox+mGYuxRUlY92LI5332rwmN8EHh/A/Bo3Y3J3AwHg0Z
         YhORg5dpGdIOAcdk9SUdI1IUjij3qrhKc+E2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773235013; x=1773839813;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IcPXiNc1TZMsEizRtLhf/Yl0SxyeiltbkV25/uvjCCM=;
        b=Yq/n7pxFyIYBzTAzLBZeCU5cajsvmvUSPqP1Y2iioXaD1gBe9uqxv17tUv842a3WUk
         nz/IwkgPENDtBgWgX/IhKDL4DFwhpVTRPoNWccr1FZApJ4tnGs0e6fP2zhOClttJAgvw
         5WL0KjHG67jg4UAdg9C14ZnaCkM6DzTKj+f4xZULsCd2UAsmcnfsPD+AzXTQheWv+B7H
         rzeyuTbGuzVOzu1QVT2NfN3XDbbTPcnkYKcMogauiN5oPekyTJCYabMb+YoBAVe8DlvX
         Hs6KglfQAMkj6/zkeScJ2IsKxnlAjS143kXJgUtoY7xdMY/9I8jUkypv9GbpP/l/z5em
         iSgg==
X-Forwarded-Encrypted: i=1; AJvYcCXkgCGPROKm/tTD50zcXeGAdsHwHeCT9yi+XTmfSZkBJ/r6L3jMyYCxR5M7BKM2V7DPjXYu@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxNzKT5K+h7Egj1m2EbEcGkwE3ZpML/r0xdiEBrGSULLafOi/M9
	v76V4ALKpY3MDkzFw+ii8GdMbBfQf5MSTeuvNdWTpZGLbfIC+jcE/+oeNSDQn7bAIOc=
X-Gm-Gg: ATEYQzxIAVZA/RqlVgr4AyZAa3YQ1sykKeDvildgjhrbIVXP23e2unQQldS+CPKfvQj
	6tEwoGDzvUKnih8fl8h9EXt7k4u3x4OB8WW2nK9bUldfziqVJ2rIQeKh/4Thlo+tz2PVXNesb3c
	4NSmdSgfdN9ywPqzvuyJRMLr7tClVUVnD3G1pyVznGSQiHjcoDdbEFb1BsnFLPTIIy5NuUJ9sWf
	Qg6Z1YqlI5I+VLQtlqH/88TcjnBpFw8hnw+ALBR3V0hzl/ER2FGqPsFrcLKptRhap359g9g86PS
	xIcj49UPFZwyVHgdcXKvFME0aJOMAn76f9NyLB0TX8tDdC9OKcDP4pVBmIPrH/9RpKS9m4gHwRr
	mpx8UuAfAGz/8R/wieNs720hVog2fHPv4py7k+ZZDzEAMY57gHQsPSwucMEa8kWFBSipIhSkGkj
	Wkybkbz+vRx3aEXNl4M0jZoVD30uPiJ2joCuSuuznX9rmMuk0jCpHcG1DsTioQE8WRIjkhZPnMT
	wMEGak7X44oVMY=
X-Received: by 2002:a05:6000:186a:b0:439:b1c3:84bc with SMTP id ffacd0b85a97d-439f81e297fmr5250944f8f.7.1773235012438;
        Wed, 11 Mar 2026 06:16:52 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:7fc5:b1af:c486:ad0b? ([2001:8b0:aba:5f3c:7fc5:b1af:c486:ad0b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f81a0480sm6568120f8f.12.2026.03.11.06.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 06:16:51 -0700 (PDT)
Message-ID: <fdd873c3c1a95ce400b8733aad5c7ae2320f4df7.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v2] genericarm64.conf: fix qemu testing with
 testimage.bbclass
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mikko.rapeli@linaro.org, poky@lists.yoctoproject.org
Date: Wed, 11 Mar 2026 13:16:50 +0000
In-Reply-To: <20260311125406.259842-1-mikko.rapeli@linaro.org>
References: <20260311125406.259842-1-mikko.rapeli@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1ubuntu0.1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 13:17:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13860

On Wed, 2026-03-11 at 14:54 +0200, Mikko Rapeli via lists.yoctoproject.org =
wrote:
> genericarm64 machine has supported qemu for a long time but
> the default build config failed with testimage.bbclass to boot
> and run oeqa runtime tests.
>=20
> TESTIMAGEDEPENDS needs qemu utilities so that they are correctly
> installed to image sysroot. For qemu machines these are set in
> testimage.bbclass but remain unset for non-qemu machines like
> genericarm64.
>=20
> TEST_RUNQEMUPARAMS needs snapshot since default genericarm64 image
> is a compressed wic.zst and nographic to run qemu without connected
> display which is better on headless build machines.
>=20
> With these set, default genericarm64 core-image-sato boots correctly
> with testimage.bbclass and all oeqa runtime tests pass on an x86_64
> build machine:
>=20
> $ bitbake core-image-sato && bitbake -c testimage core-image-sato
> ...
> SUMMARY:
> core-image-sato () - Ran 75 tests in 229.248s
> core-image-sato - OK - All required tests passed (successes=3D24,
> skipped=3D51, failures=3D0, errors=3D0)
> NOTE: Tasks Summary: Attempted 1558 tasks of which 1556 didn't need to
> be rerun and all succeeded.
>=20
> To boot qemu manually (add "slirp" if tap networking not setup):
>=20
> $ runqemu nographic snapshot core-image-sato
>=20
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
> =C2=A0meta-yocto-bsp/conf/machine/genericarm64.conf | 4 ++++
> =C2=A01 file changed, 4 insertions(+)
>=20
> v2: dropper slirp from TEST_RUNQEMUPARAMS
>=20
> v1: https://lists.yoctoproject.org/g/poky/message/13854
>=20
> diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-b=
sp/conf/machine/genericarm64.conf
> index 2b1ce4bdd02b..d6839d16a515 100644
> --- a/meta-yocto-bsp/conf/machine/genericarm64.conf
> +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> @@ -73,5 +73,9 @@ QB_TCPSERIAL_OPT ?=3D "-device virtio-serial-pci -chard=
ev socket,id=3Dvirtcon,port=3D@
> =C2=A0# Virtio networking
> =C2=A0QB_TAP_OPT ?=3D "-netdev tap,id=3Dnet0,ifname=3D@TAP@,script=3Dno,d=
ownscript=3Dno"
> =C2=A0
> +# default to nographic to work on headless build machines using testimag=
e.bbclass, snapshot for wic.zst image type
> +TEST_RUNQEMUPARAMS ?=3D "nographic snapshot"
> +# basic qemu testimage.bbclass support
> +TESTIMAGEDEPENDS:append =3D " qemu-native:do_populate_sysroot qemu-helpe=
r-native:do_populate_sysroot qemu-helper-native:do_addto_recipe_sysroot"
> =C2=A0# If we're running testimage then we're in a qemu, so ensure u-boot=
 is build
> =C2=A0TESTIMAGEDEPENDS:append =3D " u-boot:do_deploy"

I'll try again.

nographic does not make sense here, genericarm64 supports graphics as
far as I know. The limitations of the test environment should not be
hardcoded into the machine definition.

There are patches which I sent recently against master which fix that
issue in a better way and will mean this is not needed. I am therefore
not going to take that as it is confusing, incorrect and not actually
needed.

Cheers,

Richard





