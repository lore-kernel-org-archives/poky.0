Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 531E7C5AD49
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 11:39:38 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web10.9006.1748950771393423453
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 04:39:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Mx5gzhSs;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6fac7147cb8so108430186d6.1
        for <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 04:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748950770; x=1749555570; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DQF/Z8MrkgSdappcXiv2oSbcPZUKAkcLAxyc6/8PMUg=;
        b=Mx5gzhSsNcvenSqTXEubAJmUB5rk1eZy15Gr9cR0GVOf9b2kQgt55BHW/9cBBhRlFi
         Sz3qyD1OCXZeXEPTq78oNics9Sqj8bmlDTc08FtI1fMPS2kN2UHOPQPNkfexlNcXIe/g
         TYDPY/5fuBjruD7AD1x2JQ8Cq9HG9cw35pSST37d0qwWiIpt8SaDaEucATlXxQMv/m7c
         2jE3JtTCGnBHWIWEMNF9SYcsQURnZzd3lTEKs30LW4NfnohQOAElWA4JLH9/8cX4OEip
         +9dEj5Pj/uGBJ+DiX6M7mi7yfiJzLhKiqm0sZ0R7eD2CDUz1xlEJUSyqWkbEvAF4pfUm
         GCDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748950770; x=1749555570;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DQF/Z8MrkgSdappcXiv2oSbcPZUKAkcLAxyc6/8PMUg=;
        b=Ogfh1hL2iFn4EdU0vbqAs18WUmqQJmN3+vXm7jhXpbiJ+KqtdG6cry8SjasuWILB0S
         B/nvQyo3JB8Eka/Ydzuk5CCdMWJPqm5GpM5q3k9TwrRoGcRe7P3mNXSr0V37Lx6ClDpA
         h9Nq5RYIV3RfLwDn6j7XuNwmUqBxDz4+h2M3ghP2ihHF0JTozVBRVFfCM/7aGQxssVr6
         c6mokBW2XyODWW5xA1DRNYyeyRafN1JE63/7xUHBmSR17mhTRJRNSysaMXGKQ3HzigCg
         YfWUWTKGqaV76aRTPzynhJMP8X11f3WoR3P0manj8RiB9dcxKWoykHCdGa0nMuSoSNT9
         aGmA==
X-Gm-Message-State: AOJu0Yxdu8Blxleoi/eO2ViyxI5fdLWzjfRFPYPCRayUEFhBVcLaHOEd
	jajB4haCJnPwYEiv39AtdCBWoHqf9qX060MFhVkmhRXdl6d7f08JYpZPOnSLrqAkXTZy0K9YSFP
	RYEpSLpn9mSQKyrARaPvGwwAVqFDriaTGNA==
X-Gm-Gg: ASbGncui0eMCUGKCyzB1g1ktpx+Rt7mxqvOukwmA25npIer8Z8N9+zrRd/j3omQY7QO
	PPDCU/r4K7y1Ecu4m+vNpVPQyP2o2oBHK7CM0gyVYLcNIWEdA+Cku3SKl0eC7gHPWQBQoqQO4/i
	U3McWObS8kKp88SfcREm74pd/4ud1t9zhjWFWq6RPQi+B3MtZrPcQdzF36IOOy8vKyas8=
X-Google-Smtp-Source: AGHT+IFXA5N59dAOWeo/Pp2+1TFTlSh7EdpGQJznvSPCXgN0n5mhvZjLxIu+Q3bip/JuDhXr7yx1UxaaAflD0sGg278=
X-Received: by 2002:a05:6214:19ce:b0:6fa:ca81:4121 with SMTP id
 6a1803df08f44-6fad1a9ecdfmr203301486d6.44.1748950770404; Tue, 03 Jun 2025
 04:39:30 -0700 (PDT)
MIME-Version: 1.0
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
In-Reply-To: <20250603113558.3104618-1-alex.kanavin@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 3 Jun 2025 13:39:19 +0200
X-Gm-Features: AX0GCFs63u8yoqDia88XsOFiyYJvIOgseH7Ufe8xHA-uBFSqC0vbUSebzWbBJ4w
Message-ID: <CANNYZj8PziCasasQZwCQNjVWv-_KdsgkYaxTNF+zvbedu-WL=g@mail.gmail.com>
Subject: Re: [PATCH 1/4] meta/conf/templates: add a blank template
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 11:39:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13638

This set needs to go to oe-core, pls ignore.

(but the 3-patch set I sent just prior is indeed for poky).

Alex

On Tue, 3 Jun 2025 at 13:36, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>
> From: Alexander Kanavin <alex@linutronix.de>
>
> The default oe-core/poky templates have a number of settings
> (such as distro and machine) and are thus unsuitable for
> building up configurations from fragments. This adds a template
> with an empty local.conf, so that it can be used as the starting
> point for fragment-driven configuration.
>
> There will also be a blank template in poky; the difference is
> that this one includes only oe-core and the poky one
> adds poky layers.
>
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
>  .../conf/templates/blank/bblayers.conf.sample | 10 ++++++++++
>  meta/conf/templates/blank/conf-notes.txt      | 19 +++++++++++++++++++
>  meta/conf/templates/blank/conf-summary.txt    |  1 +
>  meta/conf/templates/blank/local.conf.sample   | 10 ++++++++++
>  4 files changed, 40 insertions(+)
>  create mode 100644 meta/conf/templates/blank/bblayers.conf.sample
>  create mode 100644 meta/conf/templates/blank/conf-notes.txt
>  create mode 100644 meta/conf/templates/blank/conf-summary.txt
>  create mode 100644 meta/conf/templates/blank/local.conf.sample
>
> diff --git a/meta/conf/templates/blank/bblayers.conf.sample b/meta/conf/templates/blank/bblayers.conf.sample
> new file mode 100644
> index 00000000000..c985f4f2420
> --- /dev/null
> +++ b/meta/conf/templates/blank/bblayers.conf.sample
> @@ -0,0 +1,10 @@
> +# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> +# changes incompatibly
> +LCONF_VERSION = "7"
> +
> +BBPATH = "${TOPDIR}"
> +BBFILES ?= ""
> +
> +BBLAYERS ?= " \
> +  ##OEROOT##/meta \
> +  "
> diff --git a/meta/conf/templates/blank/conf-notes.txt b/meta/conf/templates/blank/conf-notes.txt
> new file mode 100644
> index 00000000000..cfd1f1977bf
> --- /dev/null
> +++ b/meta/conf/templates/blank/conf-notes.txt
> @@ -0,0 +1,19 @@
> +
> +### Shell environment set up for builds. ###
> +
> +You can now run 'bitbake <target>'
> +
> +Common targets are:
> +    core-image-minimal
> +    core-image-full-cmdline
> +    core-image-sato
> +    core-image-weston
> +    meta-toolchain
> +    meta-ide-support
> +
> +You can also run generated qemu images with a command like 'runqemu qemux86-64'.
> +
> +Other commonly useful commands are:
> + - 'devtool' and 'recipetool' handle common recipe tasks
> + - 'bitbake-layers' handles common layer tasks
> + - 'oe-pkgdata-util' handles common target package tasks
> diff --git a/meta/conf/templates/blank/conf-summary.txt b/meta/conf/templates/blank/conf-summary.txt
> new file mode 100644
> index 00000000000..7528c297947
> --- /dev/null
> +++ b/meta/conf/templates/blank/conf-summary.txt
> @@ -0,0 +1 @@
> +This configuration is empty and is intended as a starting point for adding configuration fragments.
> diff --git a/meta/conf/templates/blank/local.conf.sample b/meta/conf/templates/blank/local.conf.sample
> new file mode 100644
> index 00000000000..41eea8506df
> --- /dev/null
> +++ b/meta/conf/templates/blank/local.conf.sample
> @@ -0,0 +1,10 @@
> +#
> +# This file is intended for local configuration tweaks. It is intentionally
> +# set up empty, so that configuration can be constructed from fragments
> +# using bitbake-config-build tool and by setting MACHINE and DISTRO here.
> +#
> +# If you would like to publish this file (for example as a bitbake
> +# configuration template), it is recommended to create fragments
> +# from changes made here; the only settings that can remain are
> +# MACHINE and DISTRO.
> +#
> --
> 2.39.5
>

