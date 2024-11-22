Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F12ED743FE
	for <webhook@archiver.kernel.org>; Fri, 22 Nov 2024 09:49:35 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web11.20989.1732268973436204040
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2024 01:49:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gbux6Gwv;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6d405853c0fso12394346d6.0
        for <poky@lists.yoctoproject.org>; Fri, 22 Nov 2024 01:49:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732268972; x=1732873772; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gk7OleklA2fK2hATWzSEo1di8kAgRzdyNnpOUaUBJsQ=;
        b=gbux6GwvbGSSQ4M3fvTMB4UxKT9ydw3Sn41j0eysQMH2uy/NSSsT3k6DaQASc3IBsw
         W0aOJSIlJSdi1edEcA8YS5sBB+pulzSWziTsnYdAAnVYbq/C7oSR3eFLvFaxCnxal/Bb
         wnCY14y6Y6OjOnZJuGp7EIEB5226CgOBOehQbckQI3eHAfx/uDu0qmbGLAeKtzVwZWZa
         E/yX0Jr1Ysr40z0/9vYNgvW3HJg8sUPFIKTtP+zN+LNZ1JDomXAo/qovfiMnrJ80vL/3
         szSuj39j9l3I7YRhxTLh5/eeAqgL3TdyelSuwVneSzgveJ8DkGXf67whRyV+ABYIIvEl
         vebg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732268972; x=1732873772;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gk7OleklA2fK2hATWzSEo1di8kAgRzdyNnpOUaUBJsQ=;
        b=btqhnWwcU9U+PBWneJsX17WVcInfBRhrA9qOFknA5UCNLt3Hj6Lv6x6K8mlubcNE5l
         j+vNwu5SBw4gIZaFCBJZJNa+ItJcyEUak9AxSBJpQ31KTz2fIGPR+pqcF5E6EbRGjI4A
         5hcgY55l1zT+pXd4k+ioxSlJceZuiRYI+qypG2QjxHhaYqkNT2M1cvO5fcMFh3nv5geF
         uz323T4BDbLBauGW/2UKs0RI44PyI4tibE8lo7ez0GmSMMM34UH7XS/KpwahLiMwfEt7
         4I6MRHXKKAR7bWnJad79cmN7Q/PCbd/gkwBlxu8hhZN17SCzvm7BBKCmxSoSMxnkmj5Y
         EcPA==
X-Gm-Message-State: AOJu0Yw5j/u5UtQIkJhzb0alRNQlpT+l61tGRU9dARVnKIS92R/HGin1
	dZ9wIsHOSsLGJphmVkhIQ9thZOkApknq5njZbgNWCE9aRB1HyOJSPLRESol9z/kAbMkLPlhVE3y
	sPK6IkjZPchTjDoi8VtD2taxiUk0=
X-Gm-Gg: ASbGncvJlfZDNm1HiD2ShYIr6yqKmhtTXF0Pcn3ec4IUrDFpNbMFnlONgwIXq1Apxfi
	hXtR1CVmIAmlW2uMbWyKFjlyUKnRvv6Ay3BYX80mBOq0NSfahrfdAV06kVs13VSA+0Q==
X-Google-Smtp-Source: AGHT+IE8OBUhpNkT3seFDKNzRx8DO9gbvLdoFvkRvWe9tN3Wv2vhX2kqxhhePyYrIhTvsIyCShSYoUDoRyFsMze9AI0=
X-Received: by 2002:a05:6214:5004:b0:6cb:600f:568b with SMTP id
 6a1803df08f44-6d450e6ae19mr33208116d6.8.1732268972333; Fri, 22 Nov 2024
 01:49:32 -0800 (PST)
MIME-Version: 1.0
References: <9b605f6d8bdb4f6bb3194d5049bc0db6@diehl.com>
In-Reply-To: <9b605f6d8bdb4f6bb3194d5049bc0db6@diehl.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 22 Nov 2024 10:49:21 +0100
Message-ID: <CANNYZj_FCBE1CCX_=eQDRf-FmbCyFvGyvGSOFBxN+3mxnT+tDg@mail.gmail.com>
Subject: Re: [poky] [PATCH] licenses: add GPL-2.0-with-Linux-syscall-note
To: denis.osterland@diehl.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 22 Nov 2024 09:49:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13492

This is a patch for openembedded-core, and should go to the
openembedded-core@lists.openembedded.org.

Alex

On Fri, 22 Nov 2024 at 10:29, Denis OSTERLAND-HEIM via
lists.yoctoproject.org
<denis.osterland=diehl.com@lists.yoctoproject.org> wrote:
>
> According to Linux copying notice[^1] the SPDX copyright should be
> `GPL-2.0 WITH Linux-syscall-note`.
> AFAIK there is no `WITH` operator in yocto yet, so I created
> GPL-2.0-with-Linux-syscall-note based on SPDX[^2] and Linux[^3].
> spdx.org/licenses does not list this license, because of the prefered use of
> WITH operator.
> For example GPL-2.0-with-autoconf-exception[^4] is now marked deprecated.
>
> It would be good to have something like `LICENSE = "GPL2.0-only +
> Linux-syscall-note"`
> in the future.
>
> [^1]:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/COPY
> ING
> [^2]: https://spdx.org/licenses/Linux-syscall-note.html
> [^3]:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/LICE
> NSES/exceptions/Linux-syscall-note
> [^4]: https://spdx.org/licenses/GPL-2.0-with-autoconf-exception.html
>
> Signed-off-by: Denis Osterland-Heim <denis.osterland@diehl.com>
> ---
>  .../GPL-2.0-with-Linux-syscall-note               | 15 +++++++++++++++
>  meta/recipes-kernel/linux/linux-yocto.inc         |  2 +-
>  2 files changed, 16 insertions(+), 1 deletion(-)
>  create mode 100644
> meta/files/common-licenses/GPL-2.0-with-Linux-syscall-note
>
> diff --git a/meta/files/common-licenses/GPL-2.0-with-Linux-syscall-note
> b/meta/files/common-licenses/GPL-2.0-with-Linux-syscall-note
> new file mode 100644
> index 0000000000..7fc191baf1
> --- /dev/null
> +++ b/meta/files/common-licenses/GPL-2.0-with-Linux-syscall-note
> @@ -0,0 +1,15 @@
> +insert GPL v2 text here
> +
> +   NOTE! This copyright does *not* cover user programs that use kernel
> + services by normal system calls - this is merely considered normal use
> + of the kernel, and does *not* fall under the heading of "derived work".
> + Also note that the GPL below is copyrighted by the Free Software
> + Foundation, but the instance of code that it refers to (the Linux
> + kernel) is copyrighted by me and others who actually wrote it.
> +
> + Also note that the only valid version of the GPL as far as the kernel
> + is concerned is _this_ particular version of the license (ie v2, not
> + v2.2 or v3.x or whatever), unless explicitly otherwise stated.
> +
> +                       Linus Torvalds
> +
> diff --git a/meta/recipes-kernel/linux/linux-yocto.inc
> b/meta/recipes-kernel/linux/linux-yocto.inc
> index 0132fcffb3..1765974666 100644
> --- a/meta/recipes-kernel/linux/linux-yocto.inc
> +++ b/meta/recipes-kernel/linux/linux-yocto.inc
> @@ -1,6 +1,6 @@
>  SUMMARY = "Linux kernel"
>  SECTION = "kernel"
> -LICENSE = "GPL-2.0-only"
> +LICENSE = "GPL-2.0-with-Linux-syscall-note"
>  HOMEPAGE = "https://www.yoctoproject.org/"
>
>  LIC_FILES_CHKSUM ?= "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> --
> 2.45.2
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13491): https://lists.yoctoproject.org/g/poky/message/13491
> Mute This Topic: https://lists.yoctoproject.org/mt/109719806/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

