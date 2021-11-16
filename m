Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web11.5255.1637034226249987867
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Nov 2021 19:43:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YB6HhyJQ;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id y13so6433116edd.13
        for <poky@lists.yoctoproject.org>; Mon, 15 Nov 2021 19:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X9NgTMnhcIoyDaHEHFyYOHFCn/pKA39ES24/y4nFjxU=;
        b=YB6HhyJQnA17YEpaE15mn5voTyujpeA0o7/lYiL1R9R80+8mJzaNNqWPmqBmWtwhcj
         giHmwzXsJDQQoMuez/Bs+B+mOQEQQomyr7nzXMzsXYKaLns55jNAEpuJP/Vi0lcWKzBd
         mBQP6aBc0vKpbnXIQDC9tit8r581X+OT3ZtCwP8Q1nGM/1Kjf93ghjVNhBecafPCcTcI
         ASy5QbD3Mbn8JtIOKuu3Kt1s93fIXtoKB1tblAVZhgHxgjoqld/aoedt21CalbOgVwZM
         RqjwdVuGCbUcOgrsEmVxkUmjDtkFCUciGux46acX4mG247BT46e8YgAUp8JLlxRbZzF9
         kXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X9NgTMnhcIoyDaHEHFyYOHFCn/pKA39ES24/y4nFjxU=;
        b=KY71KQ64LP5HSLRCkehAvRjbSUoFEAWfs0eSCZFB0rCJA0JMGpjxJ4Jhwv2tQhDRQh
         E7DFcKzWc7rf6RGQLSTl7gPBO70ojXZDVLguIQNocGpq/1YmAyfHPZjvqTbThwBE43ej
         QWkUWmNHhqoMRDvvGsrgFMeWScb30FcqTNZhLgLPWT5OOnifAQLjlBZuMotkBXlm9EBW
         0PitUTP7gmOYhbYkNqzwA8MJ2UXWKjUV77SCVGyXL/j8CS3J8mfJ21KmcKPpSiAv83SL
         ZI3KyVVlnihw6IbJuv2auD/zV10BrklHqteCJAsHV3/trhfbhS2ZxOijaawrtDklz/hS
         fG+Q==
X-Gm-Message-State: AOAM531qrunOs3RGT4fPZkYWiIFUm9uLHxnqWIv0TtifndHMheVjXEfl
	ia76IqLtjxQOJRH8SaU7b93Z/3WyX/HPfQiOqFg=
X-Google-Smtp-Source: ABdhPJzt+KOSQjNSFwv/ZXskXOrRAjzSs0W2HOkIqZNgcq5x61LDlLw8uieYt3OLaSCxLI4oJgHgDR2H/ELOxZUiDos=
X-Received: by 2002:a05:6402:d0e:: with SMTP id eb14mr5781351edb.59.1637034224592;
 Mon, 15 Nov 2021 19:43:44 -0800 (PST)
MIME-Version: 1.0
References: <20211116001033.463741-1-kexin.hao@windriver.com>
In-Reply-To: <20211116001033.463741-1-kexin.hao@windriver.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Mon, 15 Nov 2021 22:43:33 -0500
Message-ID: <CADkTA4NpVNbiafi0bR-SQS6-k2TMOWj+urJUeRs3NH5OzZ1RNQ@mail.gmail.com>
Subject: Re: [PATCH] meta-yocto-bsp: Introduce the v5.15 bbappend
To: Kevin Hao <kexin.hao@windriver.com>
Cc: poky@lists.yoctoproject.org, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Thanks Kevin!

Looks good to me.

Bruce

On Mon, Nov 15, 2021 at 7:13 PM Kevin Hao <kexin.hao@windriver.com> wrote:
>
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  .../linux/linux-yocto_5.15.bbappend           | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
>  create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> new file mode 100644
> index 000000000000..ea36a2b09625
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> @@ -0,0 +1,23 @@
> +KBRANCH:genericx86  = "v5.15/standard/base"
> +KBRANCH:genericx86-64  = "v5.15/standard/base"
> +KBRANCH:edgerouter = "v5.15/standard/edgerouter"
> +KBRANCH:beaglebone-yocto = "v5.15/standard/beaglebone"
> +
> +KMACHINE:genericx86 ?= "common-pc"
> +KMACHINE:genericx86-64 ?= "common-pc-64"
> +KMACHINE:beaglebone-yocto ?= "beaglebone"
> +
> +SRCREV_machine:genericx86 ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
> +SRCREV_machine:genericx86-64 ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
> +SRCREV_machine:edgerouter ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
> +SRCREV_machine:beaglebone-yocto ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
> +
> +COMPATIBLE_MACHINE:genericx86 = "genericx86"
> +COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
> +COMPATIBLE_MACHINE:edgerouter = "edgerouter"
> +COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
> +
> +LINUX_VERSION:genericx86 = "5.15.1"
> +LINUX_VERSION:genericx86-64 = "5.15.1"
> +LINUX_VERSION:edgerouter = "5.15.1"
> +LINUX_VERSION:beaglebone-yocto = "5.15.1"
> --
> 2.31.1
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
