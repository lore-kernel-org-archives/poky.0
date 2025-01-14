Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7CDE77188
	for <webhook@archiver.kernel.org>; Tue, 14 Jan 2025 16:32:06 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.50489.1736872316544217886
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 08:31:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LoA6jhWi;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6d8f916b40bso74834746d6.3
        for <poky@lists.yoctoproject.org>; Tue, 14 Jan 2025 08:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736872315; x=1737477115; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4afdPYA23Lp/22Du5dgLZBPvb2mkYiHo6QHqLoME3yY=;
        b=LoA6jhWi7q86SW/SEAq2ozsy2sOg1sD/i0r+IshVmITXHrYc1nDDpfiqm3ciVe2deY
         sk5pfDLMyd7MU9owL0tUWirey5DiBhSQf3bhZygx+8Mesp9jZGKh0x5kykc0WhSDs4m3
         ndIkcN05AZ83A9B54pZ/sgr4C+B4ecyrG5vIenw8TU62LHMDrl6Ivpt+0UESzJqymoc1
         pV4H8IljJkE1TUVtWepUzxH0+S4HpU1NSD2OPlTtMJ01yT0gm/9N1KKVBKVq39qn/pW4
         q0iOW5gRWUaAIjW9Uc2+NzOVE7bdUZYbAlZX0QC9gbWFooyjyFL1Pwr7+IgwP83eA6A7
         L3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736872315; x=1737477115;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4afdPYA23Lp/22Du5dgLZBPvb2mkYiHo6QHqLoME3yY=;
        b=HFLDifuZNM5nRqygiDwg6rH4HKePw/edKRHAeo4bBveJoXj7B80vA4sc85wcPF2K+y
         diTs/kx6FEz8OSqJBXtGZa8Q5CoWrageqREC4L85tpRjz1vtebc+GFJ1OSft9d6MbmDy
         jhSSJd1BDD+GPByQT894tE7lb8IMKepkfO7+m2Hp2p9oKE9G9wbru2+UC9OUIu22TB1q
         Qzm9bmNXUEozS/D7jpgygH0Wcghov6+Xx23PThwrTTcePN3p+qmy9Mji81du6dJ6+2Fq
         l3S/jYOLBn8Y+OOgQCh2PZn2qAlzEPa4WL+FtCaULHoUNeZE6AB0avYyH4OATBThysMx
         P/Dg==
X-Gm-Message-State: AOJu0YywWOUOiu41K8PwZeFZp/J7P8IXRRwCyB3aDk0rLo6pOpDXB7o9
	1SeeTd4MibsPLG2Awip0BrR6ITimHRojg4bkCdaGIwkEEQpSlLNDNzyNLTTcW2f8Q1omtOmqPkB
	XkKFLs5o2xmoxWysciKg1dsiTkGU=
X-Gm-Gg: ASbGncuiUhe0L/0ZcDcXrMbWu1bsF1S9vpmp5IYtTjta8aSV5GtuSbyLb9RR+JFor7U
	8Xs1XYPspEAd/gH00aeOyOPpa+8VvnP5uk5Co
X-Google-Smtp-Source: AGHT+IGnIn6Z4FBFwLZ9fYrg9w2FxtlVE9f/NwxImtNi6VRsM5GqZoq4DUTGK1GnR5bkAyDlsdjZydi9P/3HrHUS8yE=
X-Received: by 2002:a05:6214:1256:b0:6dd:d513:6124 with SMTP id
 6a1803df08f44-6df9b28d442mr427432426d6.35.1736872315563; Tue, 14 Jan 2025
 08:31:55 -0800 (PST)
MIME-Version: 1.0
References: <20250114161114.2731934-1-simon.eu@gmail.com>
In-Reply-To: <20250114161114.2731934-1-simon.eu@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 14 Jan 2025 17:31:43 +0100
X-Gm-Features: AbW1kvbbC96Vg0CPD5arNgrMrPaOr1J-kYs19QYDcfzunmrgZjBnNwLpB5UC72E
Message-ID: <CANNYZj_2JWnXepX4Pap2r=rhTr9+MPVOfHA=QXoD8wRSpQ1xQg@mail.gmail.com>
Subject: Re: [poky] [PATCH] grub-efi-cfg: add GRUB_TITLE for custom GRUB titles
To: simon.eu@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 14 Jan 2025 16:32:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13507

Thanks - these pieces should be split and sent to different mailing
lists. meta/* to openembedded-core@, documentation/* to docs@


Alex

On Tue, 14 Jan 2025 at 17:11, Simon A. Eugster via
lists.yoctoproject.org <simon.eu=gmail.com@lists.yoctoproject.org>
wrote:
>
> Until now, the default title of a boot entry is its label. The label is
> a variable which determines the script to run during an early boot stage
> and is not necessarily human readable.
>
> This patch allows to provide a human-readable title for each boot entry.
> ---
>  documentation/ref-manual/classes.rst        | 17 ++++++++++++++++-
>  meta/classes-recipe/grub-efi-cfg.bbclass    |  8 +++++++-
>  meta/recipes-bsp/grub/grub-bootconf_1.00.bb |  2 +-
>  3 files changed, 24 insertions(+), 3 deletions(-)
>
> diff --git a/documentation/ref-manual/classes.rst b/documentation/ref-manual/classes.rst
> index 761be7b545..460f94b232 100644
> --- a/documentation/ref-manual/classes.rst
> +++ b/documentation/ref-manual/classes.rst
> @@ -987,10 +987,14 @@ introspection. This functionality is only enabled if the
>  The :ref:`ref-classes-grub-efi` class provides ``grub-efi``-specific functions for
>  building bootable images.
>
> -This class supports several variables:
> +This class supports several variables.
> +The label specific override names are ``grub_LABEL``.
> +To specificy an override for the label ``mylabel``, the override name is ``grub_mylabel``,
> +for example ``APPEND:grub_mylabel = my-appends``.
>
>  -  :term:`INITRD`: Indicates list of filesystem images to
>     concatenate and use as an initial RAM disk (initrd) (optional).
> +   Can be specified for each ``LABEL``.
>
>  -  :term:`ROOTFS`: Indicates a filesystem image to include
>     as the root filesystem (optional).
> @@ -1004,6 +1008,9 @@ This class supports several variables:
>  -  :term:`APPEND`: An override list of append strings for
>     each ``LABEL``.
>
> +-  :term:`GRUB_TITLE`: A custom title for each ```LABEL``.
> +   Defaults to ``LABEL`` if it is not defined.
> +
>  -  :term:`GRUB_OPTS`: Additional options to add to the
>     configuration (optional). Options are delimited using semi-colon
>     characters (``;``).
> @@ -1011,6 +1018,14 @@ This class supports several variables:
>  -  :term:`GRUB_TIMEOUT`: Timeout before executing
>     the default ``LABEL`` (optional).
>
> +For the label ``factory``, a custom GRUB menu entry titled "Factory Install" with the additional parameter ``factory=yes``
> +can be achieved as follows::
> +
> +  LABELS:append = "factory"
> +  APPEND:grub_factory = "factory=yes"
> +  GRUB_TITLE:grub_factory = "Factory Install"
> +
> +
>  .. _ref-classes-gsettings:
>
>  ``gsettings``
> diff --git a/meta/classes-recipe/grub-efi-cfg.bbclass b/meta/classes-recipe/grub-efi-cfg.bbclass
> index 52e85a3bb0..9a5cb99c52 100644
> --- a/meta/classes-recipe/grub-efi-cfg.bbclass
> +++ b/meta/classes-recipe/grub-efi-cfg.bbclass
> @@ -23,6 +23,7 @@ GRUB_TIMEOUT ?= "10"
>  GRUB_OPTS ?= "serial --unit=0 --speed=115200 --word=8 --parity=no --stop=1"
>
>  GRUB_ROOT ?= "${ROOT}"
> +GRUB_TITLE ?= ""
>  APPEND ?= ""
>
>  # Uses MACHINE specific KERNEL_IMAGETYPE
> @@ -91,10 +92,15 @@ python build_efi_cfg() {
>          if not overrides:
>              bb.fatal('OVERRIDES not defined')
>
> +        localdata.need_overrides()
>          localdata.setVar('OVERRIDES', 'grub_' + label + ':' + overrides)
>
>          for btype in btypes:
> -            cfgfile.write('\nmenuentry \'%s%s\'{\n' % (label, btype[0]))
> +            title = localdata.getVar('GRUB_TITLE')
> +            if not title or len(title) == 0:
> +                title = label
> +
> +            cfgfile.write('\nmenuentry \'%s%s\'{\n' % (title, btype[0]))
>              lb = label
>              if label == "install":
>                  lb = "install-efi"
> diff --git a/meta/recipes-bsp/grub/grub-bootconf_1.00.bb b/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
> index 783e30bf38..7ed0877726 100644
> --- a/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
> +++ b/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
> @@ -22,7 +22,7 @@ python do_configure() {
>      bb.build.exec_func('build_efi_cfg', d)
>  }
>
> -do_configure[vardeps] += "APPEND ROOT"
> +do_configure[vardeps] += "APPEND ROOT GRUB_TITLE"
>
>  do_install() {
>         install -d ${D}${EFI_FILES_PATH}
> --
> 2.43.0
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13506): https://lists.yoctoproject.org/g/poky/message/13506
> Mute This Topic: https://lists.yoctoproject.org/mt/110610053/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

