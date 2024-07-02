Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F48C3065C
	for <webhook@archiver.kernel.org>; Tue,  2 Jul 2024 17:01:50 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.29816.1719939703198526576
 for <poky@lists.yoctoproject.org>;
 Tue, 02 Jul 2024 10:01:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LFAcPOD3;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ec595d0acbso54976741fa.1
        for <poky@lists.yoctoproject.org>; Tue, 02 Jul 2024 10:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719939701; x=1720544501; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TJ3Cd0oZFa5+aguabWFcm2jWstr1fTCqCqnslj2OFwA=;
        b=LFAcPOD30M9nw7PI3kQW0/zqEv4VU6HHZr5yycsPyKoDTZUF7sU5bKdhATFFztBzoY
         /05v8Asu6VmCDyKFtLDKJEQU8MhqhqnqKM6QTJ+fwMMKPuFlyGmfTPy68/T6LtADCN9Y
         DwEvvHJRl8p3q5pDIa9V+6vk7Eae3yTMQC0hKOPTKWuvzImG/Hzw+dXZxXtF23AcA+Fo
         wPKwjHCckKoPACYMpfXKRTWiBEuMgiAhEIBVNPtnj38Tw+bbtj0pexXKJ/71cQfsdkhg
         /GUOOetcUtRkvFD7CxLdgKmD6WSqPIblg4yB5jfWYUpGwkwh5sFGNnE/L6LRD46cYJ9B
         wBiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719939701; x=1720544501;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TJ3Cd0oZFa5+aguabWFcm2jWstr1fTCqCqnslj2OFwA=;
        b=aXECICslQCMcXb5Bxwr/kv5Wh86kJ1Uk45gjhkmfHK2H8lnL9qpqF2Egb5cgopnXDQ
         do7J63PTAgmrJm8CNO9iEoAYtw2EXqkxa7iJMkn0xjIvQkUAZeEX4/SXTWLNHNA+LSno
         55QZf20e/5Hr5HANEKvZVT+pI4Bdpn+QgdCBx0vDxWe94QN6cppzTtkDEgUkM2YxI2Rp
         R7FRDagim8Dj6YNoeMk9ktFMQ2sQuwBCfea74GtK3zOr8Atob6/9XYEafxCl32Assdh1
         3qeNJCI74arv/2p5PDo/z/aUnhjh78VhzEQb6mnNZiwFjOAOGB4FPauv6E/Bicy44E/O
         al5g==
X-Gm-Message-State: AOJu0YzznVG6uof+4BOFfRd8VNFPOB4Wf6X0YzZRitG8e2LocnCyGd7Y
	2Kuy0osZRcjzSaX7aYZAi6kCSOh53SET4iVU6orO2EZzlpdcErDR+Z6y2prrEzqtMy5U3q5aJHJ
	lrtHreKTVPc3HavsEO4PTzS2ME6U=
X-Google-Smtp-Source: AGHT+IGKA8BAfjtQdW0WJZ3CYLOYV9A5ryYL4d/sAQX7cdPbVO5MxxpNAFvEyLo6jJ1g8OgloNbIY6f9d8jQnbXgXmY=
X-Received: by 2002:a2e:bc06:0:b0:2ec:eee:f197 with SMTP id
 38308e7fff4ca-2ee5e38091emr76007811fa.9.1719939701073; Tue, 02 Jul 2024
 10:01:41 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9c8jhhESsnxiMZZOBT6Or-cpJNT3Xe+rm-2KLg38nOPQ@mail.gmail.com>
 <28357.1719925684756220288@lists.yoctoproject.org>
In-Reply-To: <28357.1719925684756220288@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 2 Jul 2024 19:01:28 +0200
Message-ID: <CANNYZj8MvP3C8++HT03wUgNA9vkDtjUMGRqjhPAiJ7EA4PtxOw@mail.gmail.com>
Subject: Re: [poky] execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts
 is set for a read only rootfs
To: Tobias.Gassner.ext@karlstorz.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 02 Jul 2024 17:01:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13402

Hello Tobias, the test is basically ok, but I looked a bit further,
and I think there should be improvements:

- there is already meta-selftest/recipes-test/postinst/postinst_1.0.bb
for the purpose of testing postinsts, the test should be using that
instead of writing out its own recipe
- that recipe is used in meta/lib/oeqa/selftest/cases/runtime_test.py
so I think that's actually the correct place for the test,
specifically in Postinst class.

Alex

On Tue, 2 Jul 2024 at 15:08, Gassner, Tobias.ext via
lists.yoctoproject.org
<Tobias.Gassner.ext=karlstorz.com@lists.yoctoproject.org> wrote:
>
> Hi Alex,
>
> I wrote a test in meta/lib/oeqa/selftest/cases/buildoptions.py that fails without my patch and passes with my patch. Please review if the test as specified makes sense to you:
>
> From e125ef8504a83cedd014d275387a16f519880eb5 Mon Sep 17 00:00:00 2001
> From: "Gassner, Tobias.ext" <tobias.gassner.ext@karlstorz.com>
> Date: Tue, 2 Jul 2024 14:53:04 +0200
> Subject: [PATCH] Test that pkg_postinst_ontarget task is executed on
>  read-only-rootfs, when read-only-rootfs-delayed-postinsts is specified
>
> Signed-off-by: Gassner, Tobias.ext <tobias.gassner.ext@karlstorz.com>
> ---
>  meta/lib/oeqa/selftest/cases/buildoptions.py | 39 +++++++++++++++++++-
>  1 file changed, 38 insertions(+), 1 deletion(-)
>
> diff --git a/meta/lib/oeqa/selftest/cases/buildoptions.py b/meta/lib/oeqa/selftest/cases/buildoptions.py
> index 31dafaa9c5..f166de89dd 100644
> --- a/meta/lib/oeqa/selftest/cases/buildoptions.py
> +++ b/meta/lib/oeqa/selftest/cases/buildoptions.py
> @@ -12,7 +12,7 @@ import tempfile
>  from oeqa.selftest.case import OESelftestTestCase
>  from oeqa.selftest.cases.buildhistory import BuildhistoryBase
>  from oeqa.core.decorator.data import skipIfMachine
> -from oeqa.utils.commands import bitbake, get_bb_var, get_bb_vars
> +from oeqa.utils.commands import bitbake, get_bb_var, get_bb_vars, runqemu
>  import oeqa.utils.ftools as ftools
>  from oeqa.core.decorator import OETestTag
>
> @@ -59,6 +59,43 @@ class ImageOptionsTests(OESelftestTestCase):
>          bitbake("core-image-sato core-image-weston")
>          # do_image will fail if there are any pending postinsts
>
> +    def test_postinst_ontarget_executes_on_read_only_image(self):
> +        # Test checks that pkg_postinst_ontarget task is executed even
> +        # for read-only-rootfs, when read-only-rootfs-delayed-postinsts
> +        # is specified as well
> +
> +        # Define a recipe that touches a file in its postinst ontarget step
> +        emptytest_inc = """
> +SUMMARY = "summary"
> +DESCRIPTION = "description"
> +LICENSE:forcevariable = "CLOSED"
> +
> +ALLOW_EMPTY:${PN} = "1"
> +
> +inherit allarch
> +
> +pkg_postinst_ontarget:${PN} () {
> +    touch /tmp/ro_rootfs_postinst_ontarget
> +}
> +"""
> +
> +        self.write_recipeinc('emptytest', emptytest_inc)
> +
> +        # Make rootfs read-only, but allow postinst ontarget task
> +        self.write_config('IMAGE_FEATURES += "read-only-rootfs"')
> +        self.append_config('IMAGE_FEATURES += "read-only-rootfs-delayed-postinsts"')
> +
> +        self.append_config('IMAGE_INSTALL:append = " emptytest"')
> +
> +        self.append_config('INIT_MANAGER = "systemd"')
> +
> +        bitbake("core-image-minimal")
> +
> +        with runqemu('core-image-minimal') as qemu:
> +            # Check that the file, touched in postinst ontarget task exists
> +            status, output = qemu.run_serial("[ -f /tmp/ro_rootfs_postinst_ontarget ] && echo 1 || echo 0")
> +            self.assertTrue("1" in output, msg=output)
> +
>  class DiskMonTest(OESelftestTestCase):
>
>      def test_stoptask_behavior(self):
> --
> 2.45.2
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13401): https://lists.yoctoproject.org/g/poky/message/13401
> Mute This Topic: https://lists.yoctoproject.org/mt/106869018/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

