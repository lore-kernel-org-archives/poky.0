Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F33D111A8
	for <webhook@archiver.kernel.org>; Mon,  1 Dec 2025 11:28:29 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19668.1764588503363970389
 for <poky@lists.yoctoproject.org>;
 Mon, 01 Dec 2025 03:28:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=NGAXJlt3;
 spf=pass (domain: linaro.org, ip: 209.85.167.50, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5957d7e0bf3so5086777e87.0
        for <poky@lists.yoctoproject.org>; Mon, 01 Dec 2025 03:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764588501; x=1765193301; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AmBbXtsK7hsr8DJn5KauWOV1jrFepgwh0m+M3l991NA=;
        b=NGAXJlt3wKcCV0GO6HOxP34WDBuwTTx3WlhXPlXmVDLQWH6fa2RSrWbVTrykJOfjZz
         DkCJHokJYNtQW2i8Kieuh8fb3f5sA5/emgPBp9KBIePGE2WT2CCk5ABm0SNoqbz/bF/d
         j40dY7fNnHO8n6HKkpcfFbh4Gx97YeRX57d+1rEBQ66mYLkbkmIjGS/wYePNwaeffbkQ
         HRmNDIKyYsztgeExZ2kNbU8byr+o6dM8LUrxGZaSPM0f6dnJ91ceCoSfxN/tkQeMQ7Y0
         xJ1Pzytt2/6KUEWjebK/NuRwTmw096SwRIC7yGYVxXfqOiKOSTlU+7hDBElxc+l5wJIE
         vHQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764588501; x=1765193301;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AmBbXtsK7hsr8DJn5KauWOV1jrFepgwh0m+M3l991NA=;
        b=AYfpeYOchvggayq4vYi6aalHPf4TUvDgeMMK7p0OBTz91bwhkW1RfjD1Wi42vbZWVC
         0cVAeMtUnM5spGlRoIOMc1ar0g5U8IyYZIiAv3hdoUscUTt0BYMPl4Oewb4FWENZosGe
         NU5spL0HnhgCJtkOWHCHMvg45rxLAHeBDEDQVnR6O/WnQHtnR1nPN3XfYIw7PF7c0vBD
         8TbIy6zbuMpcfwOdxNjDYzoRoQx9e3u4+urvoilsxNCSgGChkEdH3Xoxlsoy5fzWVceN
         WeePIrHvWFHWbvpATAbC2PWVRmxCm/jI2uKrjDwp0XJVRBqZSS311nopg961KOcxAdUG
         75hA==
X-Forwarded-Encrypted: i=1; AJvYcCUsnQ5JigsaFl07FSZn5yl5tC1AkDxSfEyi46OKlmBCOrg4XepoZip3voXyuTWXY6rfx007@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxVObY7w/aB7u31++xaK8J/NNhzC9TTr0vfPOq4ypOFxaSQQST0
	6KNZAt/qsX0iTg2Dya9UM8p87wvX0l5NZm2OlE1K2vRdKxL7XvBuY+UVZZ8/eXCt2E4=
X-Gm-Gg: ASbGnctFy7CSjbsDmKLzuHtFj6NOLtOkqXyjBRebq1TnwOpF1cyN+eKt4sBaDZB2vQb
	mA2pqP8njG5p8xYN2B8fjY07rsz+vsUvLRd7YOvdujCFB3nUV/JMao0E+4uDJHvNLDwt41SXhEb
	FZszyLitf+uXFEbro7UafxaHonPqGwiTL1RI3VlvC0RWlxEtMg1Q49xK4+NyR+K0Vr6mwTBPEhA
	O9XMZoWYSlCIuhCUnLnRQzqWcn0gGYQD0o4t12JRgrPfd3VX0BRwxSdirZV0h9LMdxch6l99Rko
	q/+xUfOQBSn4nIaWEVGdHoBRMCHEwdX6oWLRU3y7XsmOMJjS9rmLAd5XZiBn6KuF+b8QwmGaYOX
	zUScUCKdfb8wOkeliNWqiiWF5eTtBq9d0ZaRyDKnMl5x+3mCb0L+LTzqrXXCQPAuOeAmw8apBRQ
	7sYkWbxo2/psdmgAX+6BOBMaxA18z9ro0sH9BkH2jYon8F
X-Google-Smtp-Source: AGHT+IE79vld3jQ6FtBvFOlFFQ3w2t1wSqsOZzyPBLVl7Cww75VLSJLGDAyjS54X8V8RpM9b2rZ7FQ==
X-Received: by 2002:a05:6512:15a6:b0:594:5f1d:d60d with SMTP id 2adb3069b0e04-596a377e72dmr11497163e87.14.1764588501214;
        Mon, 01 Dec 2025 03:28:21 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596bfa4fc01sm3625745e87.94.2025.12.01.03.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 03:28:20 -0800 (PST)
Date: Mon, 1 Dec 2025 13:28:19 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	poky@lists.yoctoproject.org, Ross Burton <ross.burton@arm.com>,
	Bill Mills <bill.mills@linaro.org>
Subject: Re: [poky] [PATCH] genericarm64.conf: override poky-altcfg distro
 kernel version
Message-ID: <aS1709XOUtEfZYwt@nuoska>
References: <20251129133901.1732829-1-mikko.rapeli@linaro.org>
 <10a35a1b76ea399ab1c7d389f6ce9aa4a9feba57.camel@linuxfoundation.org>
 <aS09JGUXcwvwLial@nuoska>
 <CANNYZj-QJG6BU_F2vcvoD-PWBVHvgxseqf7LE72cqtu8HWxjfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj-QJG6BU_F2vcvoD-PWBVHvgxseqf7LE72cqtu8HWxjfQ@mail.gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 01 Dec 2025 11:28:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13806

Hi,

On Mon, Dec 01, 2025 at 11:47:46AM +0100, Alexander Kanavin wrote:
> On Mon, 1 Dec 2025 at 08:00, Mikko Rapeli via lists.yoctoproject.org
> <mikko.rapeli=linaro.org@lists.yoctoproject.org> wrote:
> 
> > What kind of alternatives or different solutions do we have?
> > Another build variant in AB?
> 
> Add the needed fixes to poky and the components used in it so that
> genericarm64 does not de facto require systemd? I find that deeply
> problematic to begin with.

We have a working configuration and we have plenty of broken ones.

I'm trying to serve users who would like to see the known
working configuration of systemd and latest stable kernel as output
from the Yocto Project. If something in that working configuration
breaks, then its up to me as co-maintainer of genericarm64 to fix it.

I'm sorry that this does not convince you. I've tried to help with
U-Boot, kernel etc genericarm64 BSP updates and IMO done quite a bit of
development work in linux-yocto kernel to get it working on more HW.

Sounds like building this genericarm64 "known good config" should
move to outside of oe-core and meta-yocto, maybe meta-arm then.

Cheers,

-Mikko

