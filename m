Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72408D111A8
	for <webhook@archiver.kernel.org>; Mon,  1 Dec 2025 10:47:59 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.18860.1764586078927602595
 for <poky@lists.yoctoproject.org>;
 Mon, 01 Dec 2025 02:47:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SXJiHQsi;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-4ed66b5abf7so54229221cf.1
        for <poky@lists.yoctoproject.org>; Mon, 01 Dec 2025 02:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764586078; x=1765190878; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LBFqKCghN03qEeJBBKHVt6CFMJ8H+s12fyx9E8fJp1E=;
        b=SXJiHQsiOYHixik3KAXAg7kywGsPdYnoyz2+jbW9jMZRopxXxltl/RLzUr/Ex8DKho
         TFyiwzh8M/DeObWs+sX/m/5e5szCUDo+R8Vvl5CwlwA6sDOjbPhzYTWf8d2oZoix+34O
         nEyFH0Y37mAWEx2E0IRbX6hMIKcArFzBC5sASlHYF8gwr+ZsPNW9g1uylYQNXTtLBb3Q
         ZCNP56R8oJxVf+FR5V4wK3Il88L5KMH05J/0I9bLBREXWVMHnbXh2jmyY5D27KVDa7Jm
         7XtPzKgqgGd/L8ORX6AEQE77cMrHcUv1F9jE/uvPls1xZ7CyO3wVMobybSAfPisPRreJ
         FXFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764586078; x=1765190878;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LBFqKCghN03qEeJBBKHVt6CFMJ8H+s12fyx9E8fJp1E=;
        b=EvzQYLq+0YIkToLXejEpPWXFPSQNzi+oVH/RtQe5jsU30S2ng5USBVQF1eQr79IJhP
         IUtXbI0ysXqj7nNppPkNtSHIP5q9SMZ4HHS3buXrwYfHZ36TU2GS5AQeYRrmfcgrDHpz
         77BH05a7mZ24LFVYYUWh+ugazKDAnBVgkWzQ5Tge+vgvVuICjfiPri2R6eWMAb7PWLUO
         yICus4pgcPBnTAkkCtdrSbO3d9uxL0LuMGSv1eN30/0N1UlqLlUVNlM/3RQg3RhQu4bu
         KYVfxpuIWJCgvBc2q5ywRUi2azlOazK6mVG3tFswgIxukz67/lVLtktQuImEkPzZ+o5i
         pY3A==
X-Forwarded-Encrypted: i=1; AJvYcCWb4nsxEFk7KkkcyH2xaD5eROTTUWr3bepGB+juhN6iA5Ymou2uJP8ZUaLkRGdkxj7PAJD/@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw/k3GBBESiU2rt+SPIFdR/ROm+H3NlDiE1QZ0MHQBlcfhTkUI1
	MqhvKb+N4w6ovya/qofJesUToXInTtHOjuwt66IbmYTqFVPYz4bn4u2KnejXBF3P8lueZOxeNVd
	YWz78VWnpFvMgT0xMH/whjfPQgsDqJ0M=
X-Gm-Gg: ASbGncuHNxExoj0SvgMbp/crrBvJxSrbFzFvMDoLNzJRhBSC7EcTF50CiW195EKWq75
	KzdUjIxoT0GCLYT7DLrNdMcAYhYI3JSKa/oT17Wzodhx5fu9lr7EZEeL3eQwfFTH3lNL+BFON8r
	YNC/mIrnCNAMLhXA+qLL1bCzgWQyi/XpXma3AJD5fQYHiFbgnpAc3Yu8zPTY3fHZZ0eAqG1IVZt
	twWTiTzOsvz+t4cXAHKzkTFxSRWomL0lHqWv2ToYmZdChoSHedaZl1Rg+gCUbPqAUZxKCGn1LrP
	SZn3yYPLTi2/Ccpzam3tTkMMKGRzsw==
X-Google-Smtp-Source: AGHT+IEaOi1Si2jRH/QNvWxilFJ965gdXIbYohglIHMjz1VsNOq+42G1mi0UmMG020UGOMb1EPl+ECCp/ZbJhoQWmLQ=
X-Received: by 2002:a05:622a:1a9e:b0:4ed:806c:69e2 with SMTP id
 d75a77b69052e-4ee4b418e8amr568963681cf.7.1764586077876; Mon, 01 Dec 2025
 02:47:57 -0800 (PST)
MIME-Version: 1.0
References: <20251129133901.1732829-1-mikko.rapeli@linaro.org>
 <10a35a1b76ea399ab1c7d389f6ce9aa4a9feba57.camel@linuxfoundation.org> <aS09JGUXcwvwLial@nuoska>
In-Reply-To: <aS09JGUXcwvwLial@nuoska>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 1 Dec 2025 11:47:46 +0100
X-Gm-Features: AWmQ_bk5BdZUjvAAKcaBp0uoAMyNuRTVKjx3GwgVRb7-yZnxXYk2VOnyev87Qi4
Message-ID: <CANNYZj-QJG6BU_F2vcvoD-PWBVHvgxseqf7LE72cqtu8HWxjfQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] genericarm64.conf: override poky-altcfg distro
 kernel version
To: mikko.rapeli@linaro.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@lists.yoctoproject.org, 
	Ross Burton <ross.burton@arm.com>, Bill Mills <bill.mills@linaro.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 01 Dec 2025 10:47:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13805

On Mon, 1 Dec 2025 at 08:00, Mikko Rapeli via lists.yoctoproject.org
<mikko.rapeli=linaro.org@lists.yoctoproject.org> wrote:

> What kind of alternatives or different solutions do we have?
> Another build variant in AB?

Add the needed fixes to poky and the components used in it so that
genericarm64 does not de facto require systemd? I find that deeply
problematic to begin with.

Alex

