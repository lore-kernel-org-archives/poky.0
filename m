Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D98E9D116F1
	for <webhook@archiver.kernel.org>; Mon,  1 Dec 2025 11:39:59 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.19574.1764589192254939154
 for <poky@lists.yoctoproject.org>;
 Mon, 01 Dec 2025 03:39:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fkndHCAO;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-88057f5d041so35977256d6.1
        for <poky@lists.yoctoproject.org>; Mon, 01 Dec 2025 03:39:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764589191; x=1765193991; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OQX2CVejsdfTePX9I161TivvcoKxzPzSMbjIQDbDgkM=;
        b=fkndHCAO1FkRXQk5gItUFU9Ydtd31phCU9530RVlsZTvrHrDsxWxo+UrgNq5FPqowx
         V84lTIYaRbw0OmiEezNKGsIv/CLfJjQT/1D6BgXw90r99tL9Ki+l9YugltRXZG5ZaatL
         ScHgAKvCd3y7Y5jZ7ZA2G8igrVTO1Jz3VrjTM8MTVTF4NVdTGR+UVg/shDcpLrXUdmTv
         xR3bXgAwc5NdHOQ0+aUo41Gvplq1gAj9fiSTOsSBgUvFL6s0dMeApuvCj5p7A0RWHmsw
         GE06ue59Vz85sMX9XVeHye0NCqARwSpT+yEH++a9ph3Ealusr/D9pi8aw4JuTekBqHwt
         40mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764589191; x=1765193991;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OQX2CVejsdfTePX9I161TivvcoKxzPzSMbjIQDbDgkM=;
        b=QKX3lGBdwiWkdmmKCowKmZ7/VvTc8OL2qV7kqWzEYr+U6NMpqjoNNMQe42pZBQWdqJ
         FaMoLibYK8d/4Is4iGsWoEYZc4nQNwhjzpNx7aSZ5eNBvteKE0bOYcL+dwCXAfBSIrWr
         OzyBM7iaoXGNBYyisqnFK7CnK/33soULJbCa88lkdL+x9zt0Zxp5gZR4BcgR588sAju1
         VHl4LRA5xrE1v3F+B9/1VszbcfME4zs/wKUPBoOvXb7IlDgfFI5uqkWHM5vM63kdJh5L
         U9ObeOaMuMDQJiYVjTBGKhbthCfXPc5Rg8OBuIyoHm6+MOuGKitgjZPpuSb1GuBP7bbz
         jafA==
X-Forwarded-Encrypted: i=1; AJvYcCUIEkXpwn/N53dGZ6hbQnCXdWPEBAc404e0h2l+mb/YX1HivBCzhc4gPjGmGHjYl60XAmDK@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Ywmf4sYrKw1p60iUd6IElrH4CgdpnD4EPvbsdOgV7vYWGs5u5jY
	m5E+0wJvU74mC4i9QAEmRa1stv31m3ACRTmRhYryuVFz9L6Rt5+B+3sNaIi7bFH+NEXcSgzc3ZK
	AiMidPXYQc/giBCpLNmT9yvcn3r7Xotw=
X-Gm-Gg: ASbGncvVTffrD/lcfaNlIvy005jBHVj+t9KMu0Q/Rotm494esWi6vTRhPWMw3TG6/DA
	gbxqMSGDNmfzlF1O0zwqIq638Kx8GVG8AfbJmRkLl6J1k/D9DnUfv1hrwCMvIkV26rA3c3OpgTO
	m4K1P6tVdaN23mV/91P45PPFk0UNmthrW6VIREi7cCczCaCXVFUgFlBeHY/XOior5+bcX0h+Qqq
	DcbUsdOI06OPred3aq0SIMMPDZGXfMN/8BoyW8Qpx6/qA8Wz/XBsOrh+3I820LFyOP+ApwjmDAA
	rNt2SwjzbR47XrBLYJz5EVxKYJToir1sJu2p1qiK
X-Google-Smtp-Source: AGHT+IGFSvJrtIcLnw7oNUWTjEHao7gu5T5v0myZnnYwgzcnX4P1EREZg2gWvuUIygGCrFSMdbtR5qH9l5Dtp9Y9yqY=
X-Received: by 2002:a05:6214:1c43:b0:7c2:d5b7:dd54 with SMTP id
 6a1803df08f44-8863af15b4bmr395929496d6.18.1764589191262; Mon, 01 Dec 2025
 03:39:51 -0800 (PST)
MIME-Version: 1.0
References: <20251129133901.1732829-1-mikko.rapeli@linaro.org>
 <10a35a1b76ea399ab1c7d389f6ce9aa4a9feba57.camel@linuxfoundation.org>
 <aS09JGUXcwvwLial@nuoska> <CANNYZj-QJG6BU_F2vcvoD-PWBVHvgxseqf7LE72cqtu8HWxjfQ@mail.gmail.com>
 <aS1709XOUtEfZYwt@nuoska>
In-Reply-To: <aS1709XOUtEfZYwt@nuoska>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 1 Dec 2025 12:39:39 +0100
X-Gm-Features: AWmQ_bl1Aa5to412_HS0kCMuDlymVU-Hf-H0J2MUz7K9RgLszkeL1fKMi_omKCU
Message-ID: <CANNYZj-Ye4XJaSo1FN+1+usNKOt8unUn9S1KhTqPjF5+_8zRgg@mail.gmail.com>
Subject: Re: [poky] [PATCH] genericarm64.conf: override poky-altcfg distro
 kernel version
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@lists.yoctoproject.org, 
	Ross Burton <ross.burton@arm.com>, Bill Mills <bill.mills@linaro.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 01 Dec 2025 11:39:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13807

On Mon, 1 Dec 2025 at 12:28, Mikko Rapeli <mikko.rapeli@linaro.org> wrote:
> I'm trying to serve users who would like to see the known
> working configuration of systemd and latest stable kernel as output
> from the Yocto Project. If something in that working configuration
> breaks, then its up to me as co-maintainer of genericarm64 to fix it.
>
> I'm sorry that this does not convince you. I've tried to help with
> U-Boot, kernel etc genericarm64 BSP updates and IMO done quite a bit of
> development work in linux-yocto kernel to get it working on more HW.
>
> Sounds like building this genericarm64 "known good config" should
> move to outside of oe-core and meta-yocto, maybe meta-arm then.

Let me take a moment to explain why I am not convinced.

"I have users who are paying me to do X" is not an argument that can
ever work well with me personally. What would work much better is "X
is a good thing for the Yocto Project in the long run, and open source
ecosystem in general". And you can't possibly make that argument when
X is "let's be complicit in (or actively work towards!) systemd
creeping in as a hard requirement to run Linux".

Alex

