Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9800FC3ABC3
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 17:12:36 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web10.55790.1747069953817337010
 for <poky@lists.yoctoproject.org>;
 Mon, 12 May 2025 10:12:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gngjdZHK;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6f6e5172eeaso38975166d6.2
        for <poky@lists.yoctoproject.org>; Mon, 12 May 2025 10:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747069953; x=1747674753; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ojrtQLbgsxYimt1ZKSkslC0/90EUTCugy5vi4NBG9yo=;
        b=gngjdZHKbqIFAcp5uEwYZj+sYTRRuysbYM1KSK5zlJl6KXnZtv6wmMxPeC6rToHdcF
         b5Ctp+7WLQFHKDMA5MYqfDIzFtK5rfO9I/bpFcmjYJQ+g7lgX3sMhx7YaZ223/5TckwS
         3rKtBYl2dNJWTm8PPs86c/Goa3H56TwJawoPzRzZX99014VOXTxD648Y6iHlJsWLY+Wl
         UH+Orb2GWbqqFvqHAF/2qVTMkRYO6vlk4ChGUiKQ0Uu7r4mThwlkKvVRG9rI2VpVhAw+
         lcr52szcaCUUm/oCbfFmnoqnqtcWBFin9YcrYhCbDSCwQE9blt4vtlgM9g5a0jlTaq7E
         vulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747069953; x=1747674753;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ojrtQLbgsxYimt1ZKSkslC0/90EUTCugy5vi4NBG9yo=;
        b=omjGDZstHR00Ciu92uz90sG5vii5EQr/Npu01DadQVbzBTV6dIly1Vk1SkSqjNxl85
         +JhGnk8Pm08XOz1LOkqxVjDuxq50d6PTk1jkWwgt5Fl2ooL1z/PTEDCOQ72ZuugPWC1y
         6opLAzaDpFAOGaj7wZdTj4UmWeEX57dK4LvphOIq4lxREubW/FlAJvutzHhvTphRwDMI
         cio7nkLUI5rZtRntQlCSvN73nKAFNJ+Ma8irHJ6ywLp0g3EV3GoRqFGdMV261P11RrMa
         UCOhOVsAoTpO7KFhYKQ+sJvdY7PT3vWOx647/MChqjI7kLodI8vURkpXSLzUIEA5Mrc6
         I0iw==
X-Forwarded-Encrypted: i=1; AJvYcCXt4ylQ5uGRhhvDsBKiv/AU5U2OjTOnKL6Qoi3eym1fv7frM+klq1FcwEvBrzlaqfQzUjO4@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yyb1TM9d5gPsYYqwrkKzRNAUIcxuwWiMep5Zr3MBPV0+g6gdPVH
	DTkEpoN9Sbx9GW4lOI8lxHi18tFbBoyBITSCqTtHy4P1MqdXIAdDXfd2K3xIYSIoUGujvmwWwVn
	2yi97GcBBY7c2myzCaYQTGS/TlB4=
X-Gm-Gg: ASbGncs0++Y/2D4fmlr4eIkGE74jBVvg0r/HoLprA4iZU7wT+HTJn0Cz5GrAjrVsnUR
	LcW2p6RVKT8tEn3lXfDtk0d3vArPT2z/cbZEAQbkOKSVaHDE0VVV5769tyd599+S7AOS8aaZJrB
	S8XU8a+oBHH2WUlwKAyrcivIKW5IeqNinf3IIrI4V3nh0e
X-Google-Smtp-Source: AGHT+IGPXIlaLTqIZ9T+YfOC6+IO469JpaQaY8h34RtdEa8V1Wfq9stRn+ruKQT/7yb8RpRbK5RV3I7rFdD1zlFcIlI=
X-Received: by 2002:a05:6214:2607:b0:6d4:19a0:202 with SMTP id
 6a1803df08f44-6f6e47ff9b2mr265114516d6.33.1747069952744; Mon, 12 May 2025
 10:12:32 -0700 (PDT)
MIME-Version: 1.0
References: <wTK0.1747066830015306452.2L7F@lists.yoctoproject.org> <df69e075-f88a-4565-9ea0-0ba23a88328d@cherry.de>
In-Reply-To: <df69e075-f88a-4565-9ea0-0ba23a88328d@cherry.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 12 May 2025 19:12:21 +0200
X-Gm-Features: AX0GCFsQ9V4GE8uPCDdsFA1lM0ZuJNfMLIpTRz1gUQFkYZw7ynuPT-XvcpSuaBs
Message-ID: <CANNYZj9GwH4w-Zg2571wz2bdJ+hPyBxPf6w18Zy+mXypFgsEJA@mail.gmail.com>
Subject: Re: [poky] Patching a patch from a vendor
To: quentin.schulz@cherry.de
Cc: jdowd@slashdevslashnull.org, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 12 May 2025 17:12:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13613

On Mon, 12 May 2025 at 18:36, Quentin Schulz via
lists.yoctoproject.org
<quentin.schulz=cherry.de@lists.yoctoproject.org> wrote:
> > I'm using Yocto version: scarthgap.
> >
> > I have a situation in vendor's repo, that has patches that needed to be changed (one of them is as simple as adding the "Upstream-Status:" string to the top of the patch file.
> >
> > Is this a "thing"? I don't want to be changing the vendor's recipes and patches (it's the qoriq stuff under NXP) but I need to fix some obvious errors.
> >
>
> Don't patch patches, replace them.
>
> Have your own bbappend in your own layer which replaces the patch with
> what you need.
>
> A simple
>
> FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
>
> in a bbappend that can be found by BitBake in your layer.
>
> Then add your patch that replaces NXP's patch with yours, in a directory
> next to the bbappend.
>
> Or even better, contact NXP and give them the appropriate patches so
> that you don't have to carry those in your own later.

I'd suggest forking the layer, and fixing everything necessary
actually. Fixing things with bbappends works in limited cases, and
this looks like it's less complicated to fork.

And of course contact the vendor and explain to them what had to be
done and whether they can fix the layer directly.

Alex

