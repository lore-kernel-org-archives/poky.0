Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85341C25B76
	for <webhook@archiver.kernel.org>; Sat,  8 Jun 2024 17:35:29 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.2371.1717868127840807754
 for <poky@lists.yoctoproject.org>;
 Sat, 08 Jun 2024 10:35:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=gDdrHCHx;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id BCF6DFF805;
	Sat,  8 Jun 2024 17:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1717868126;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=C0qY+zFJReYEqlp1vHVnj9Mx7z7EBzBBTSeqoAznM2U=;
	b=gDdrHCHxzvgol9xgmrChAn+wpExEylE6k7y/FqyNURS5HT7cTtstn4FOlPNiH8ITjkwe7G
	flAtSl70pXbmEpiXMClf+HHQrgZ12kXoRzpZXy0BL0iRHTcxigCCgRLlxvipnYgS6GUr0o
	nvr/TgxhUCryKQamFjzPSOCyBuZ+D0gHZR9DTJBbs0XQRQyoLYE+wlSRH4lC33GVEL0RH+
	ifQeQ7y8z8FvLd/9CSEarrErzI5geZHv2rx2vNrZw9NfBzMCcp0eOJLx2hiKZsry54TmxJ
	kBq0M2XtmRsulrCd8lE9MnGylQJv9rC4Zi0dnD8sj44JdyFSNCnoYG68FYgzCw==
Date: Sat, 8 Jun 2024 19:35:25 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: ecordonnier@snap.com
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] poky-alt: enable minidebuginfo
Message-ID: <2024060817352536c2c18d@mail.local>
References: <20240604114647.2897172-1-ecordonnier@snap.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604114647.2897172-1-ecordonnier@snap.com>
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 08 Jun 2024 17:35:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13367


Hello,

This causes failures on anything that is not x86:

https://autobuilder.yoctoproject.org/typhoon/#/builders/107/builds/6257/steps/15/logs/stdio
https://autobuilder.yoctoproject.org/typhoon/#/builders/102/builds/6204/steps/15/logs/stdio
https://autobuilder.yoctoproject.org/typhoon/#/builders/131/builds/4448/steps/15/logs/stdio
https://autobuilder.yoctoproject.org/typhoon/#/builders/110/builds/7960/steps/14/logs/stdio

Traceback (most recent call last):
  File "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/core/decorator/__init__.py", line 35, in wrapped_f
    return func(*args, **kwargs)
           ^^^^^^^^^^^^^^^^^^^^^
  File "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/core/decorator/__init__.py", line 35, in wrapped_f
    return func(*args, **kwargs)
           ^^^^^^^^^^^^^^^^^^^^^
  File "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/core/decorator/__init__.py", line 35, in wrapped_f
    return func(*args, **kwargs)
           ^^^^^^^^^^^^^^^^^^^^^
  File "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/runtime/cases/systemd.py", line 159, in test_systemd_coredump_minidebuginfo
    self.assertEqual(status, 0, msg='MiniDebugInfo Test failed: %s' % output)
AssertionError: 1 != 0 : MiniDebugInfo Test failed: No match found.
-- Notice: 1 systemd-coredump@.service unit is running, output may be incomplete.

On 04/06/2024 13:46:47+0200, Etienne Cordonnier via lists.yoctoproject.org wrote:
> From: Etienne Cordonnier <ecordonnier@snap.com>
> 
> Enable minidebuginfo in poky-alt in order to increase test coverage in CI and reduce potential bitrotting.
> 
> Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
> ---
>  meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> index 3e10251..b38a332 100644
> --- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> +++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> @@ -1,5 +1,5 @@
>  # Add extra DISTRO_FEATUREs
> -DISTRO_FEATURES:append = " pam usrmerge"
> +DISTRO_FEATURES:append = " minidebuginfo pam usrmerge"
>  
>  # Use our alternate kernel version
>  PREFERRED_VERSION_linux-yocto = "6.6%"
> -- 
> 2.36.1.vfs.0.0
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13364): https://lists.yoctoproject.org/g/poky/message/13364
> Mute This Topic: https://lists.yoctoproject.org/mt/106480591/3617179
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

