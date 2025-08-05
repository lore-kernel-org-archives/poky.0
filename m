Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CB61C87FCB
	for <webhook@archiver.kernel.org>; Tue,  5 Aug 2025 09:02:44 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web10.17684.1754384557726756234
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Aug 2025 02:02:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=m+UfAIoa;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7e62a1cbf82so250795685a.2
        for <poky@lists.yoctoproject.org>; Tue, 05 Aug 2025 02:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754384556; x=1754989356; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vWYckIVprZ1YcbF3kAzur+HtWVx6zrWMz9FR0EVSU/w=;
        b=m+UfAIoa0//m3BNIGyUke+KUgRxDD/Nwjj0TrYtDT7HgevLOI2WjrcQTuPbVvbp1Al
         5PZOUZlxkrSONXDTBxCDoF5k8WZoZomWE7QMDhHP591JEchjuOyBu2LS+PNDQY0BveIj
         3qwhdurxRMraeFKRrI4V4IpQ6JYt3ouShV2kddiOTR+0nK6RTFCL8pXYJC2eLPXx4N6b
         SeW1QHoKCDz/i279vuxlvD8iao4hT2Xuz4WvyaF6vH7+kd5E50Y2ODiuJysrcYT7dVAc
         dqTMzoJOdEAf2mJMK3Pa0fU1HXtDVLoF5/VsaZ2UIvpS8bEJhQHD/oMfioe9gFw6wntV
         Bn9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754384556; x=1754989356;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vWYckIVprZ1YcbF3kAzur+HtWVx6zrWMz9FR0EVSU/w=;
        b=cRaTTN9QCka9h5RKs5P2be4nvRkRACtQSsjbnh4yqqnPM8PsiyjidWKWAyGyDSaMbE
         zGss49hEEdVds2Xx3+F12O80vaeMdl6Au29TaEEfVrmMS+CgGWlQhXbFCRKbwNxJi7a1
         64fnZzmEDz9eqsI7PGkBGlQrzQGlduxQnTop0e3q1xESzdfq/MhVzvOxWJ8L3AGg69c6
         ts8Y8OcvnPqAJVTZqVEOpM92kO1DYQvJDz6Pw3pb+3Bv/1PjrSJYllle2N0MhmL39KDi
         I/s3Ga5uqboqvV9Zq/8Yha3qp7OZafM53aZEGpcp0lA7E/WhVEb++1JMyreIXgm1SK1W
         TwZg==
X-Gm-Message-State: AOJu0YzBzfQP1TdTHl/J8ezaSFj73wk1licznckg1/cTjuHtpHkiM+Zo
	J44vb/so2Mkar1h9JEPhd8zX11rZnYuYTxLrR0E0jGTXFCpuAfO28vWbgkEjB99FXbTgawaFr4r
	GSkBrEnVvYtztibQdNzEtrWkP74SQr/s=
X-Gm-Gg: ASbGncuZkoFl6CoZXJYslkgF+g1PnjBELiaYfXqy5b/d81MFKkIgqc3bgFp5fVpz1xu
	xyAtrVPPq4X9E15ZckAiq7fri6CRIXWOU5G4miK/YA8GahLopWxVCxzk0qtJyaXnMxfJzrI41XM
	KQRCjX5uy35fnxsk0J2wj5RI985qbjlJKWJeI3QKbA7z2R1pZyuP42x7YJdanv52mjT2E/Oo7Hq
	tfs5wZAZHac4bldkLUnn0o6C3C3aZST2ZKH/IOHEw==
X-Google-Smtp-Source: AGHT+IHckXj5GT6/euBYK6n11OTeoi004Lbt6k36mdeBLZ/ScRnjTLQMExFpuMUgTC8AUNhuxMTKQhxKCRdhYZxo3ew=
X-Received: by 2002:a05:6214:29ee:b0:706:aae8:ad48 with SMTP id
 6a1803df08f44-709362e77acmr180924516d6.35.1754384556505; Tue, 05 Aug 2025
 02:02:36 -0700 (PDT)
MIME-Version: 1.0
References: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org> <31515.1754384245429990929@lists.yoctoproject.org>
In-Reply-To: <31515.1754384245429990929@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 5 Aug 2025 11:02:24 +0200
X-Gm-Features: Ac12FXw1GxoKKODmfNOcy6ZWsbY51PPwTCh-n9JAAZw1NQ0JUfLK8rITWJns4gU
Message-ID: <CANNYZj8hzb=MyNgG5uAd-HAqXkhrYphXasph=RrivhKLH30jxg@mail.gmail.com>
Subject: Re: [poky] Multiple glibc libraries on a single host #bitbake #poky
To: srivamsi_malladi@trimble.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Aug 2025 09:02:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13712

On Tue, 5 Aug 2025 at 10:57, Srivamsi Malladi via
lists.yoctoproject.org
<srivamsi_malladi=trimble.com@lists.yoctoproject.org> wrote:
> this is not feasible
>
> This is not feasible, because glibc is a special library and because the kernel and many other applications use it?

Glibc recipe is not designed for co-installing several versions, and
when you try to backport a newer version of something into an older
yocto you may find you also need to backport various other supporting
pieces and fixes. The whole thing is likely to unravel into basically
upgrading to a newer yocto.

> Or is it not feasible also in case of any other library or application?

It's possible for simpler items, but still not trivial. In general
it's best to pick one version and ensure everything is compatible. And
tell your management that staying with an outdated yocto means there
is a high risk of business requirements being difficult or impossible
to fulfil, and they need a lifecycle plan for migration.

> Like I said,  I would like to understand how to create recipes such that two versions of the same library/application are installed.

I'd suggest you start with something simpler than glibc.

Alex

