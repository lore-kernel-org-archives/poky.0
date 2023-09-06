Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3BF2EB8FAF
	for <webhook@archiver.kernel.org>; Wed,  6 Sep 2023 05:48:59 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.2236.1693979332910329932
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Sep 2023 22:48:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=fPl8/VC4;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-50098cc8967so5131692e87.1
        for <poky@lists.yoctoproject.org>; Tue, 05 Sep 2023 22:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693979331; x=1694584131; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ihkJVzCKtkVkVtGdSteCIDn+UJJH3iUrvQEXMPuNgqA=;
        b=fPl8/VC4C0/i2U17x14MYDigDkQnEsXndCVy4WAUtvNY9ifRBngUMz6ebBfmhBXud6
         Y+FV7Oxym/FTVCU6yNJjuRD76k/4YdEiLm+3JHex8djgnsnVCbSVUJ8lSu30oRwb4187
         syZgVlG6yYGeaP9xAnBdU2Xu+OwuaHfUir6+IWn0DIxQ0zMKwUcLmf23SfMEXoRn2PoX
         Vu4KlB3UpXsHNcpN1yaaFZQxuijyumRL4TMRA1TjSTi1Ko+oEaaxmjMM0G4StD4lpyoz
         8EcTg75dDgUE1EZBpVIWFkViHUGX4CzLeWG7fKXDZf6PTXTeVpIjtNz+B2JlGZ5YRUmT
         EvHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693979331; x=1694584131;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ihkJVzCKtkVkVtGdSteCIDn+UJJH3iUrvQEXMPuNgqA=;
        b=XFHM7IbYIeO/YPvNFngl8Y6rg6nEIpzB64dzyXM9zTqMlHCvgCCbp/7jA5Bz5IVgIe
         CjRMezeVFPLsyRY5to1OwisQBCdu8KOph/oHZsGuTAn4czubLsy9R3cGXPL1Uo9zM8j+
         1FAv8IThOMeYfEgK5bFgPDaQrhSPF0qu/E1Jlo0BoQzgsSbODWksO4Hd0GkphuwkXzwu
         gIyyRFmep3pechdiYriGORJyux3BM9As1bN6Bu+iM2pSfH/m44oHM2MnrRIrzwe3H4QM
         F3DKrAX6IIiHbvk+z1e4YjtdG6CYY3RtV8VmBOKUFd+AvxOAi5J4HWrFFl149WBmXVCV
         aA1Q==
X-Gm-Message-State: AOJu0YxFSmduEp9Fd7/Y7dwbNld68HhBCPEVr8YwgwoL0X8YMtn+9ILP
	5IAm11Bh6CxMIDaYXA3EF0ECufM54Zd5rnWlTE0=
X-Google-Smtp-Source: AGHT+IFR/596+dZnePKvZv2toq3aFHPrZrNVUkZAXANjN79qqxfl/UE6JKfmEAMluIT8zC7/fIXpzMV832x9UVK4qlQ=
X-Received: by 2002:a05:6512:3157:b0:4ff:70d2:4512 with SMTP id
 s23-20020a056512315700b004ff70d24512mr1239432lfi.23.1693979330588; Tue, 05
 Sep 2023 22:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <2abfa5b5-93ef-7348-3eb0-7e39c7a61b04@amd.com>
In-Reply-To: <2abfa5b5-93ef-7348-3eb0-7e39c7a61b04@amd.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 6 Sep 2023 07:48:39 +0200
Message-ID: <CANNYZj8qZu8awmqezKOLoX94OY+0THXdcG5Z5PDZwDWM02PfHA@mail.gmail.com>
Subject: Re: [poky] langdale libxml2 dependencies for testsdkext
To: sandeep.gundlupet-raju@amd.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Sep 2023 05:48:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13150

Langdale is no longer supported, please use one of supported options:
https://wiki.yoctoproject.org/wiki/Releases

Alex

On Wed, 6 Sept 2023 at 05:38, Sandeep Gundlupet Raju via
lists.yoctoproject.org
<sandeep.gundlupet-raju=amd.com@lists.yoctoproject.org> wrote:
>
> Hi All,
>
> I'm running testsdkext using langdale and observed libxml2 dependencies
> as shown below but when I tried using master it worked as expected. Does
> anyone know if this a known issue in langdale and also point to the
> patch in master which fixed this issue?
>
> $ time MACHINE=qemuarm64 bitbake core-image-minimal -c testsdkext
> Loading cache: 100%
> |###############################################################################################################################################################################|
> Time: 0:00:00
> Loaded 1662 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "2.2.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal"
> TARGET_SYS           = "aarch64-poky-linux"
> MACHINE              = "qemuarm64"
> DISTRO               = "poky"
> DISTRO_VERSION       = "4.1.4"
> TUNE_FEATURES        = "aarch64 armv8a crc cortexa57"
> TARGET_FPU           = ""
> meta
> meta-poky
> meta-yocto-bsp       = "2023:c572c1a1e0ea573e64a2864d8893800104d36a67"
>
> Initialising tasks: 100%
> |##########################################################################################################################################################################|
> Time: 0:00:00
> Sstate summary: Wanted 0 Local 0 Mirrors 0 Missed 0 Current 0 (0% match,
> 0% complete)
> NOTE: No setscene tasks
> NOTE: Executing Tasks
> Extensible SDK testing environment: cortexa57-poky-linux
> Needs cmake
> EpoxyTest class: SDK doesn't contain Meson
> GalculatorTest class: SDK don't support gtk+3
> No perl package in the SDK
> No python3 package in the SDK
> RustCompileTest class: SDK doesn't contain a Rust cross-canadian toolchain
> Traceback (most recent call last):
>    File
> "/scratch1/sandeepg/yocto/2023.2/yp-ci/sources/poky/meta/lib/oeqa/sdkext/cases/devtool.py",
> line 74, in test_extend_autotools_recipe_creation
>      self._run('devtool sdk-install libxml2')
>    File
> "/scratch1/sandeepg/yocto/2023.2/yp-ci/sources/poky/meta/lib/oeqa/sdkext/case.py",
> line 22, in _run
>      return subprocess.check_output(". %s > /dev/null;"\
>    File "/usr/lib/python3.10/subprocess.py", line 420, in check_output
>      return run(*popenargs, stdout=PIPE, timeout=timeout, check=True,
>    File "/usr/lib/python3.10/subprocess.py", line 524, in run
>      raise CalledProcessError(retcode, process.args,
> oeqa.utils.subprocesstweak.OETestCalledProcessError: Command '.
> /scratch1/sandeepg/yocto/2023.2/yp-ci/build-ci-upstream/tmp/work/qemuarm64-poky-linux/core-image-minimal/1.0-r0/testsdkext/environment-setup-cortexa57-poky-linux
>  > /dev/null; devtool sdk-install libxml2;' returned non-zero exit status 1
> Standard Output: NOTE: Starting bitbake server...
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#1)...
> WARNING: You are using a local hash equivalence server but have
> configured an sstate mirror. This will likely mean no sstate will match
> from the mirror. You may wish to disable the hash equivalence use
> (BB_HASHSERVE), or use a hash equivalence server alongside the sstate
> mirror.
> Loading cache...done.
> Loaded 1662 entries from dependency cache.
> Removing 1 recipes from the qemuarm64 sysroot...done.
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13149): https://lists.yoctoproject.org/g/poky/message/13149
> Mute This Topic: https://lists.yoctoproject.org/mt/101186330/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

