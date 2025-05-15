Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FE2C2D0CD
	for <webhook@archiver.kernel.org>; Thu, 15 May 2025 12:43:04 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web11.11291.1747312979313603238
 for <poky@lists.yoctoproject.org>;
 Thu, 15 May 2025 05:42:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z+Ao+xWt;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6f54e4f2989so19306026d6.1
        for <poky@lists.yoctoproject.org>; Thu, 15 May 2025 05:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747312978; x=1747917778; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fpFJXrKNK2CoAubxrPRd53xRreeskVyq4VxoIOH6yQc=;
        b=Z+Ao+xWtMSDBRHJNcz3HWRqiOtBzL1a8E/We8fH2cCEbjAXfKuY+vECxNjOztAqVk8
         gq9bRHa98fPxL7MuJ5sP32Q3dxnTNMaLXO7R1iDYwBfiD3xSggfpHA+TpbmN3TzfI3To
         PfHf10ujA17g/UBtIbschtPAVQYPsQNiZf4/pOkmbUTuxDhOIGdkxfNuauUjQMMLuTNV
         OhxB8S4B87QqwNtqC/8A9GICs5fuhTKmXDfjm4hN9PjoRS5excA/wJR274DjD/u53SRH
         BtiOCmDARjJrCcggoa3ilK0Lgl1e1eI/49HdYEjFtKNbtY5+wNu5UV7T2qyAbBO0dusN
         T6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747312978; x=1747917778;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fpFJXrKNK2CoAubxrPRd53xRreeskVyq4VxoIOH6yQc=;
        b=Ly/A03t6zdJ6Cvu8cej+WoqNhHtUCSW8qxcBV6BbwT6TUBIzE0bC4niolbOWKSpBUw
         x5hEZpqyO5Tck5frt394kXrA8vChTPZfXDxnG3GJxdL1jqRrxfYkf+7o5HbjB9NL/5MB
         Qh1I3a0Wft6YAIe4fA7na5tk/15mKpX5AomugEuKvTMcWc2D0ZLT1fVv0mGmOuxzeeyV
         /1EyxkKa7gVbafLutVB/tU9vIM8k3kRP1YjZkYelp01uuvflF7L0d4kpMXqltoY4/AE4
         vhuQf+DyxFgxiJZRxLqAiKy0tbjXnBpQ2Deu6ehCC7kHSLvJ5vbKLxlTC+vlg8gdM11K
         8Wcg==
X-Gm-Message-State: AOJu0Yzl1NirSICbxriey5F05mpBhfiCN3QaZBLLokCKvnlIYq6Mkxpd
	zj9GjEIazuDI17aP112HSB7D12J6YS+5zZ9XHLsCyI+gwVOZOAV2GmPN5wIEzU05MUUsvgJBnOb
	p4sS+2Oo22SfFzJ/Oda62HrXIrBqDNYic
X-Gm-Gg: ASbGncuHucnvnMdw1CaBCIY0LZxF+2CbhSQbBwiB2RI7VRA1R3A6icEUrR230tMaKsc
	yAwaTAUNwIMkzqS2ULuBEcjDT1hpFVI+jNCprlSZ+YVvLLEciRCncwiMMq1N3l8BOsp3V3Lhf+s
	5MeZuiwQXngrE15ZDiYRzmLexs6uvFMAuy01cXE4hIRlAhMjafH119zi2tAk4KjRWH
X-Google-Smtp-Source: AGHT+IGzsZ6tRDV2686dckWAk5kJglfjTymuDeu0qPtloqbKJVNwGucIchqMGtaDIbeAcAgSJSYX8TG6doe1dioYb64=
X-Received: by 2002:a05:6214:410f:b0:6f8:9c21:5a6 with SMTP id
 6a1803df08f44-6f8a4bca012mr48780136d6.19.1747312967419; Thu, 15 May 2025
 05:42:47 -0700 (PDT)
MIME-Version: 1.0
References: <7iAm.1747306937631397189.DLQB@lists.yoctoproject.org>
In-Reply-To: <7iAm.1747306937631397189.DLQB@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 15 May 2025 14:42:35 +0200
X-Gm-Features: AX0GCFtsnV9L-gQIxwmXuoJnJ2waokNAHVkvP5XeJxWsnDdl4l2dbFNnQqu-lX4
Message-ID: <CANNYZj9dvakak38fZ2T7e=J6d7O7ZVPm_e=GFxmCLd-wTtnObA@mail.gmail.com>
Subject: Re: [poky] Error while bitbaking core-image-minimal using Poky 5.0.9
 (Scarthgap) on VMware
To: srivamsi_malladi@trimble.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 15 May 2025 12:43:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13620

On Thu, 15 May 2025 at 13:02, srivamsi_malladi via
lists.yoctoproject.org
<srivamsi_malladi=trimble.com@lists.yoctoproject.org> wrote:

> Now my questions are
> 1. Regarding the first error, I had to decrease the RAM to 8GB and cores to 2 which cured the error but increased the build time. Is there a better way to handle this without compromising on the build time?

If you run into out of memory issues, do not modify the parameters of
your (virtual) machine. Rather give it everything you can from the
physical hardware. More resources == faster builds. When out of memory
issues do happen, use bitbake settings (BB_NUMBER_THREADS,
PARALLEL_MAKE) to restrict the amount of processes that bitbake starts
at the same time. Especially for C++ code it's good to have at least 2
Gb of RAM per process, so reduce the amount of processes accordingly,
with safety margins.

> 2. Regarding the second error, did this occur because of some problems in my system? Or is this a known error with Poky Scarthgap?

I suspect your build directory became misconfigured after one of the
out of memory fails. It helps to erase build/tmp/ and try again; if it
occurs again, then there might be something else.

Alex

