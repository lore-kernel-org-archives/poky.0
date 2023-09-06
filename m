Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B121EE14C3
	for <webhook@archiver.kernel.org>; Wed,  6 Sep 2023 19:54:40 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.100.1694030078630510821
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Sep 2023 12:54:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=fGYTrE8J;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-50291d987a2so84390e87.2
        for <poky@lists.yoctoproject.org>; Wed, 06 Sep 2023 12:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694030077; x=1694634877; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SiGb5mlvumgEdOm2bgiG+A+91TAq0dUrafbX4YEUEeE=;
        b=fGYTrE8Jz+Tj3ZwNgCTkubWQn6u8MghHqcpMjLKmy4KzOjE5qz5Ad9Lxw2M/SD+3e8
         J993smP7tRgPzp3q24MptplkOeLW6b3ZQaXXwFl1Ty5BNfuwPLSDZC6pQQqYNy2qkZUK
         Z7GieMovUx+981D4kEz123bovGLRlN1yYpTATFn7bqq31CrG6AvZN1YCIfcQHyGaaxfh
         AHgN76/AKKm7yXRVyOTRFu2CsUpJSka8IQOAZWczNfj7LvdP2kZNqB6aQzI4PR+BzstX
         v4B6tafko/xQuLvzh+Hx1wwdEQOrlUmTounlDP02JA3B0ZIhoAdW+BuOIqRyJ2Ou8j1V
         GiaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694030077; x=1694634877;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SiGb5mlvumgEdOm2bgiG+A+91TAq0dUrafbX4YEUEeE=;
        b=Itd3MT20i82w1X3CVba6y9r0aeUHNgZrHVor7yYVfXxfKEEYMD5MwMEd/GcjlJO4YH
         Tnxgx1xpKqnyB9P8JjnaRXwL4DLVZeZKlEUrfvzGbXPIqWDCkdesy7vIsVAkVuG7d7Dr
         ++8XTjkuf7bG070+XamwXL7H3h/lEsWXfgPRQnsRZG4bZgwjybN8zwO6EDjz6rGuhbvh
         /+vJdkiRULNxeVhimNMmoJYlka7USI5nY7YbQsMp8Bh8YzsLKQOl/VjNUSYAUkxwKoOY
         QrNweH2VljRjMnQgSE2+dfYu4xTxYRqy8+CvkjuWHAkcIDMCzduhYwk9adPNz47nWhlN
         QDiQ==
X-Gm-Message-State: AOJu0YxQ4jUbRX/GR3vzAR48dG3HhQcIrJMyC5g7uAG9wguxzCPO3B9s
	nmV+PzwmlcUYeZv8FdGOjwl7hDGiTZelgYHHaOA=
X-Google-Smtp-Source: AGHT+IHXTeUT7XIQ0jDiUiPNc5vPHsndWeLyhy1d75IgPcCc78U9koNDFqkiHi3CKiSHKlFmR6dXtlaEoCWkeW0AXwQ=
X-Received: by 2002:ac2:554a:0:b0:4fb:89f2:594d with SMTP id
 l10-20020ac2554a000000b004fb89f2594dmr3023334lfk.63.1694030076601; Wed, 06
 Sep 2023 12:54:36 -0700 (PDT)
MIME-Version: 1.0
References: <2abfa5b5-93ef-7348-3eb0-7e39c7a61b04@amd.com> <CANNYZj8qZu8awmqezKOLoX94OY+0THXdcG5Z5PDZwDWM02PfHA@mail.gmail.com>
 <41b6f047-226b-c342-705a-7af856b85753@amd.com> <CANNYZj_-8jm=Q7YXcSCrp0YJw=J_rObYkKzPPYHO2bDHviW+-g@mail.gmail.com>
 <0f6155f3-34e8-6182-8e52-5d77d56caf63@amd.com>
In-Reply-To: <0f6155f3-34e8-6182-8e52-5d77d56caf63@amd.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 6 Sep 2023 21:54:25 +0200
Message-ID: <CANNYZj8P4S8uw1eJvJNXb3XJ2gNS6z4YCy=BY05Z6_oHHzW2YA@mail.gmail.com>
Subject: Re: [poky] langdale libxml2 dependencies for testsdkext
To: "Gundlupet Raju, Sandeep" <sandeep.gundlupet-raju@amd.com>
Cc: poky@lists.yoctoproject.org, 
	"mark.hatle@kernel.crashing.org" <mark.hatle@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Sep 2023 19:54:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13154

It's well possible this has regressed at some point and slipped
through the tests, but it's not likely anyone would be able to point
to a specific commit where it happened, or where it was fixed. You
might have to do a bit of bisection.

Alex

On Wed, 6 Sept 2023 at 21:41, Gundlupet Raju, Sandeep
<sandeep.gundlupet-raju@amd.com> wrote:
>
> Hi Alex,
>
> I can reproduce this issue with stock yp poky langdale branch(see
> attached logs).
>
> To workaround this issue in langdale, I've included libxml2 package to
> target image(IMAGE_INSTALL:append = " libxml2").
>
> I will take a look on this commit id and also try in Mickledore as well
> and see if issue exists.
>
> Thanks,
>
> Sandeep
>
> On 9/6/2023 12:13 PM, Alexander Kanavin wrote:
> > The test you are running is regularly run against all supported
> > branches on the yocto CI, and was run with langdale up to the point it
> > stopped receiving updates.
> >
> > On the other hand, c572c1a1e0ea573e64a2864d8893800104d36a67 is not a
> > valid commit id in poky history, so you have customizations. It's also
> > possible there are further tweaks in your local.conf.
> >
> > Given that, it's difficult to give any meaningful help. You need to do
> > your own research: first try to see if the issue happens with a
> > pristine poky checkout of langdale branch and default local.conf. If
> > it does, then at least there's a reference point for the failure that
> > someone else could reproduce, if they're interested in helping.
> >
> > Alex
> >
> > On Wed, 6 Sept 2023 at 19:51, Sandeep Gundlupet Raju via
> > lists.yoctoproject.org
> > <sandeep.gundlupet-raju=amd.com@lists.yoctoproject.org> wrote:
> >> Hi Alex,
> >>
> >> I understand that community doesn't support and accept patches for
> >> Langdale release. My question was, Is this a bug in langdale release as
> >> I couldn't find anywhere documented in langdale release notes
> >> https://docs.yoctoproject.org/4.1.4/migration-guides/release-4.1.html.
> >> If this is bug in Langdale release, Can someone point to the patch which
> >> fixed the issue in master/mickledore?
> >>
> >> Thanks,
> >>
> >> Sandeep
> >>
> >> On 9/5/2023 11:48 PM, Alexander Kanavin wrote:
> >>> Langdale is no longer supported, please use one of supported options:
> >>> https://wiki.yoctoproject.org/wiki/Releases
> >>>
> >>> Alex
> >>>
> >>> On Wed, 6 Sept 2023 at 05:38, Sandeep Gundlupet Raju via
> >>> lists.yoctoproject.org
> >>> <sandeep.gundlupet-raju=amd.com@lists.yoctoproject.org> wrote:
> >>>> Hi All,
> >>>>
> >>>> I'm running testsdkext using langdale and observed libxml2 dependencies
> >>>> as shown below but when I tried using master it worked as expected. Does
> >>>> anyone know if this a known issue in langdale and also point to the
> >>>> patch in master which fixed this issue?
> >>>>
> >>>> $ time MACHINE=qemuarm64 bitbake core-image-minimal -c testsdkext
> >>>> Loading cache: 100%
> >>>> |###############################################################################################################################################################################|
> >>>> Time: 0:00:00
> >>>> Loaded 1662 entries from dependency cache.
> >>>> NOTE: Resolving any missing task queue dependencies
> >>>>
> >>>> Build Configuration:
> >>>> BB_VERSION           = "2.2.0"
> >>>> BUILD_SYS            = "x86_64-linux"
> >>>> NATIVELSBSTRING      = "universal"
> >>>> TARGET_SYS           = "aarch64-poky-linux"
> >>>> MACHINE              = "qemuarm64"
> >>>> DISTRO               = "poky"
> >>>> DISTRO_VERSION       = "4.1.4"
> >>>> TUNE_FEATURES        = "aarch64 armv8a crc cortexa57"
> >>>> TARGET_FPU           = ""
> >>>> meta
> >>>> meta-poky
> >>>> meta-yocto-bsp       = "2023:c572c1a1e0ea573e64a2864d8893800104d36a67"
> >>>>
> >>>> Initialising tasks: 100%
> >>>> |##########################################################################################################################################################################|
> >>>> Time: 0:00:00
> >>>> Sstate summary: Wanted 0 Local 0 Mirrors 0 Missed 0 Current 0 (0% match,
> >>>> 0% complete)
> >>>> NOTE: No setscene tasks
> >>>> NOTE: Executing Tasks
> >>>> Extensible SDK testing environment: cortexa57-poky-linux
> >>>> Needs cmake
> >>>> EpoxyTest class: SDK doesn't contain Meson
> >>>> GalculatorTest class: SDK don't support gtk+3
> >>>> No perl package in the SDK
> >>>> No python3 package in the SDK
> >>>> RustCompileTest class: SDK doesn't contain a Rust cross-canadian toolchain
> >>>> Traceback (most recent call last):
> >>>>      File
> >>>> "/scratch1/sandeepg/yocto/2023.2/yp-ci/sources/poky/meta/lib/oeqa/sdkext/cases/devtool.py",
> >>>> line 74, in test_extend_autotools_recipe_creation
> >>>>        self._run('devtool sdk-install libxml2')
> >>>>      File
> >>>> "/scratch1/sandeepg/yocto/2023.2/yp-ci/sources/poky/meta/lib/oeqa/sdkext/case.py",
> >>>> line 22, in _run
> >>>>        return subprocess.check_output(". %s > /dev/null;"\
> >>>>      File "/usr/lib/python3.10/subprocess.py", line 420, in check_output
> >>>>        return run(*popenargs, stdout=PIPE, timeout=timeout, check=True,
> >>>>      File "/usr/lib/python3.10/subprocess.py", line 524, in run
> >>>>        raise CalledProcessError(retcode, process.args,
> >>>> oeqa.utils.subprocesstweak.OETestCalledProcessError: Command '.
> >>>> /scratch1/sandeepg/yocto/2023.2/yp-ci/build-ci-upstream/tmp/work/qemuarm64-poky-linux/core-image-minimal/1.0-r0/testsdkext/environment-setup-cortexa57-poky-linux
> >>>>    > /dev/null; devtool sdk-install libxml2;' returned non-zero exit status 1
> >>>> Standard Output: NOTE: Starting bitbake server...
> >>>> NOTE: Reconnecting to bitbake server...
> >>>> NOTE: Retrying server connection (#1)...
> >>>> WARNING: You are using a local hash equivalence server but have
> >>>> configured an sstate mirror. This will likely mean no sstate will match
> >>>> from the mirror. You may wish to disable the hash equivalence use
> >>>> (BB_HASHSERVE), or use a hash equivalence server alongside the sstate
> >>>> mirror.
> >>>> Loading cache...done.
> >>>> Loaded 1662 entries from dependency cache.
> >>>> Removing 1 recipes from the qemuarm64 sysroot...done.
> >>>>
> >>>>
> >>>>
> >>>>
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#13151): https://lists.yoctoproject.org/g/poky/message/13151
> >> Mute This Topic: https://lists.yoctoproject.org/mt/101186330/1686489
> >> Group Owner: poky+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >>

