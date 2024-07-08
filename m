Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AB52C3271E
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 13:59:38 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.80516.1720447172277053906
 for <poky@lists.yoctoproject.org>;
 Mon, 08 Jul 2024 06:59:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LvvZZT09;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52ea0f18500so3821796e87.3
        for <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 06:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720447170; x=1721051970; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ohQSWLLxMDv7BVAK9B2WgjpdryDzd7NrEDVivYASYNo=;
        b=LvvZZT09CwQlwMP96LwUvOARiOfZ2k91IjHmFSPNbo/zmjVk/XspamzIsodc6ba2nr
         m76hTvAzNRGXfxNkn/6huAqVDFqri7QBPm2ov46JLee1IGCO9TVVx6kI5B7M+gSMu+ka
         vTa6ZLb5ZMSZqoeQG5F/gB+lE2ktPY++KibQZBF//Ja+6Au48K12vQDsU1KPyXQHGHL8
         EQYVqJA8dJTedSlwD5WHUwgR0MViR3AlJxC6N6uaz7dRXFuTSsBwpjqb5ksV+wZ0H2de
         lYI0sQCSGhyhXHR3paZ7+gS4r7MMv9C52R87oa211ZH4awK9OzfmXPOE82b4qghXLlVa
         ZW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720447170; x=1721051970;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ohQSWLLxMDv7BVAK9B2WgjpdryDzd7NrEDVivYASYNo=;
        b=PaZNQ/KlT8J/t0bRj/f6Y82TMVRtlbmjjadE8sacOP+q/i3xMKjdwOalsr2K5aSzi0
         q9zCHTY0pr3F65s6Toj3c7mO1t7Fi/zzAdoLAC/eKQFInNHMQNlHq84xlww3Lm493KcR
         qQa9tc8z9Fdi+Ae/XZjB3yNs+2FtCW9Na1qVpEIymV6SRYjQ6zGeQSWvLjSvxchYQ9E3
         NGYAceNz32jAtrFcb30M/FXHjFZsDDqSKgp9Pr0MCrOGfKl8lzSvRzNcjPPBA+sllSD0
         AEpFn+gSB4kbPcUN/LGhKnPt5ZmDml56FH4poAju86e7iMmoP8fGIibYBK/Y5FBMmsZV
         d1kg==
X-Gm-Message-State: AOJu0YwF39NB+oSORqyVrpDxqM/pnPKH5+CmMzYQluXKWNf38kYrn4MT
	OVFQJPo+rrwJLlxWD2h78lkJHuKLMVwMD0egmROPmKj4os1hUmDqCBNRITN4ANHTnHIykoc/QSO
	g9XRz0adNh/zWZTGp4NaO2kk4Oro=
X-Google-Smtp-Source: AGHT+IGxTvDi+ku4bpAoO1U86JAjuxb5rrHC8DI+1vzPZixwwH153Wvvz0hm4Tj/vdadRJVmaDT4erfXwn9+SxgBq5A=
X-Received: by 2002:a05:6512:3c98:b0:52e:a60e:3a0a with SMTP id
 2adb3069b0e04-52ea60e3be2mr8085717e87.2.1720447170198; Mon, 08 Jul 2024
 06:59:30 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-2MRP66dbONLGHmacwJjFNTuQ-CfyQLAF0-q=WY+BKmg@mail.gmail.com>
 <3010.1720446829836869567@lists.yoctoproject.org>
In-Reply-To: <3010.1720446829836869567@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 8 Jul 2024 15:59:17 +0200
Message-ID: <CANNYZj9bsqRc6+fSmseKeMS1+1M_+-bkr3Q69cH96sJi2HvPJQ@mail.gmail.com>
Subject: Re: [poky] execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts
 is set for a read only rootfs
To: Tobias.Gassner.ext@karlstorz.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 13:59:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13417

Looks alright to me. Does it fail without the patch and pass with it?

Alex

On Mon, 8 Jul 2024 at 15:53, Gassner, Tobias.ext via
lists.yoctoproject.org
<Tobias.Gassner.ext=karlstorz.com@lists.yoctoproject.org> wrote:
>
> Hi Alex,
>
> please have a look at the following patch in overlayfs.py:
>
> From da51462765e24b186c55431b53856eebd5f6e8da Mon Sep 17 00:00:00 2001
> From: "Gassner, Tobias.ext" <tobias.gassner.ext@karlstorz.com>
> Date: Mon, 8 Jul 2024 15:50:58 +0200
> Subject: [PATCH] added test case to verify that post-installation on target
>  scripts are executed even if using read-only rootfs when
>  read-only-rootfs-delayed-postinsts is set
>
> Signed-off-by: Gassner, Tobias.ext <tobias.gassner.ext@karlstorz.com>
> ---
>  meta/lib/oeqa/selftest/cases/overlayfs.py | 41 ++++++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
>
> diff --git a/meta/lib/oeqa/selftest/cases/overlayfs.py b/meta/lib/oeqa/selftest/cases/overlayfs.py
> index e31063567b..580fbdcb9c 100644
> --- a/meta/lib/oeqa/selftest/cases/overlayfs.py
> +++ b/meta/lib/oeqa/selftest/cases/overlayfs.py
> @@ -5,7 +5,7 @@
>  #
>
>  from oeqa.selftest.case import OESelftestTestCase
> -from oeqa.utils.commands import bitbake, runqemu
> +from oeqa.utils.commands import bitbake, runqemu, get_bb_vars
>  from oeqa.core.decorator import OETestTag
>  from oeqa.core.decorator.data import skipIfNotMachine
>
> @@ -466,6 +466,45 @@ IMAGE_INSTALL:append = " overlayfs-user"
>              line = getline_qemu(output, "Read-only file system")
>              self.assertTrue(line, msg=output)
>
> +    @skipIfNotMachine("qemux86-64", "tests are qemux86-64 specific currently")
> +    def test_postinst_on_target_for_read_only_rootfs(self):
> +        """
> +        Summary:  The purpose of this test case is to verify that post-installation
> +                  on target scripts are executed even if using read-only rootfs when
> +                  read-only-rootfs-delayed-postinsts is set
> +        Expected: The test files are created on first boot
> +        """
> +
> +        import oe.path
> +
> +        vars = get_bb_vars(("IMAGE_ROOTFS", "sysconfdir"), "core-image-minimal")
> +        sysconfdir = vars["sysconfdir"]
> +        self.assertIsNotNone(sysconfdir)
> +        # Need to use oe.path here as sysconfdir starts with /
> +        targettestdir = os.path.join(sysconfdir, "postinst-test")
> +
> +        config = self.get_working_config()
> +
> +        args = {
> +            'OVERLAYFS_INIT_OPTION': "",
> +            'OVERLAYFS_ETC_USE_ORIG_INIT_NAME': 1,
> +            'OVERLAYFS_ROOTFS_TYPE': "ext4",
> +            'OVERLAYFS_ETC_CREATE_MOUNT_DIRS': 1
> +        }
> +
> +        # read-only-rootfs is already set in get_working_config()
> +        config += 'EXTRA_IMAGE_FEATURES += "read-only-rootfs-delayed-postinsts"\n'
> +        config += 'CORE_IMAGE_EXTRA_INSTALL = "postinst-delayed-b"\n'
> +
> +        self.write_config(config.format(**args))
> +
> +        res = bitbake('core-image-minimal')
> +
> +        with runqemu('core-image-minimal', image_fstype='wic') as qemu:
> +            for filename in ("rootfs", "delayed-a", "delayed-b"):
> +                status, output = qemu.run_serial("test -f %s && echo found" % os.path.join(targettestdir, filename))
> +                self.assertIn("found", output, "%s was not present on boot" % filename)
> +
>      def get_working_config(self):
>          return """
>  # Use systemd as init manager
> --
> 2.45.2
>
>
> Greetings
> -Tobias
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13416): https://lists.yoctoproject.org/g/poky/message/13416
> Mute This Topic: https://lists.yoctoproject.org/mt/106869018/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

