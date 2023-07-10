Return-Path: <toertel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A308FEB64D9
	for <webhook@archiver.kernel.org>; Mon, 10 Jul 2023 06:50:58 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web11.34083.1688971852244226257
 for <poky@lists.yoctoproject.org>;
 Sun, 09 Jul 2023 23:50:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=gzPV66fO;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: toertel@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2b6f943383eso63659001fa.2
        for <poky@lists.yoctoproject.org>; Sun, 09 Jul 2023 23:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688971850; x=1691563850;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AqOdmA10gPidfSNvpVdlQ6Zp7QSzAB08BqPlMlYBRsY=;
        b=gzPV66fOdk+iu/Al2VGnk5nGVuETP2JXVE+qdpBhKwFDSG6f3+4NKIvdwsSWcITjIC
         3fFsJvJziM+gv7NWsDh+ZWs2rYlrRZgIeG+5s6cw5sQVVoHn+zxRRSLvgre1yhWKebQ6
         ckMzBf71GtWwWx8Kuuxg6dxJH8T2t0dsmZFkEyTwKe++R4JwQSEIg0FblKrtsXALbAQb
         QSRAz7AkZIPluZTAhCihBOw5lWnWsilrvyub+0ExrWAhuVHKT4tCBxqkxFMT4/y396R+
         HnDc6qPt39Kuq5SFiF3gPfUBzhp2q/VKBe1uxaMHSQ6nWUxJFQqxz092HVJKLQLlEifw
         1klw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688971850; x=1691563850;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AqOdmA10gPidfSNvpVdlQ6Zp7QSzAB08BqPlMlYBRsY=;
        b=WFXGMJOqi2zShv+qwhZWBHcWhBJu6LtRTjY3QFlDxnqrQ7a9N+PwklWyGnyFLuuCjw
         ubdk8cM/VvEtXisTKF9881vd3vzDBlcRZgaZs74jUMbm0tWX2f7DeMSMtDNllpwAPeIe
         YwmH6LBBRMEHqQKoAYXYYH8Py3sbWjz7uaZygk0Iq8uJXZs8UWgZQKykCeWdY43ACdcV
         Y1dTW1AbDc1e4ocj0FKXiZRXZ/Tj8lVcC5Zr/SSK0ificrHJ/TG0Dslpfq4U3LSoI1OZ
         J/xiVAh5llko2qwTskH84oHgzK2cmdQ+ohNCh+PZFBiFF5ZXNR9qrKiG3bqrGPus8BmC
         Opjw==
X-Gm-Message-State: ABy/qLYjQ6ilptOWEV2OHLS8FVBIpBB0FBKVSc4uupXjf4T3ZbNBLbz7
	tyX/YHRptrNh57K2ffBYvj26cASzotGyCMqxXKg=
X-Google-Smtp-Source: APBJJlGJTxTblhcQoeSSS6bibGsNQoZT3rjBgi5tTVewXqxGbPL0K0RcgEjQLU40kxYbPPcf32SGhe3La1h1vREintw=
X-Received: by 2002:a2e:a30b:0:b0:2af:25cf:92ae with SMTP id
 l11-20020a2ea30b000000b002af25cf92aemr9688806lje.22.1688971850014; Sun, 09
 Jul 2023 23:50:50 -0700 (PDT)
MIME-Version: 1.0
References: <rVI2.1688478331779822059.Kc7f@lists.yoctoproject.org>
In-Reply-To: <rVI2.1688478331779822059.Kc7f@lists.yoctoproject.org>
From: Mark Jonas <toertel@gmail.com>
Date: Mon, 10 Jul 2023 08:50:38 +0200
Message-ID: <CAEE5dN2pHT6sEOqPygT7MuUhLhsbAmB4M-3fAgPj4mE+L7p5Sg@mail.gmail.com>
Subject: Re: [poky] Bootchart2 is not generating a proper chart
To: "adrian.fueloep@holtkamp.de" <adrian.fueloep@holtkamp.de>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 10 Jul 2023 06:50:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13105

Hi Adrian,

I think when using systemd you'ld better use systemd-bootchart.

At a quick glance this tutorial looks like a good starting point:

https://wiki.rdkcentral.com/display/RDK/Boot+Time+Measurement

Cheers,
Mark

On Tue, Jul 4, 2023 at 3:45=E2=80=AFPM adrian.fueloep@holtkamp.de
<adrian.fueloep@holtkamp.de> wrote:
>
> Hello people,
>
> I'm heaving trouble to use bootchart2 in my yocto project.
> I've included bootchart2 from openembedded-core. Kernel Configs and cmd l=
ine args are set as described in this document.
> On bootup this message appears:
>
> systemd[1]: bootchart2.service: Failed with result 'protocol'.
> systemd[1]: Failed to start Collect Bootchart Data.
> [FAILED] Failed to start Collect Bootchart Data.
> See 'systemctl status bootchart2.service' for details.
>
> The resulting graph covers only 1,4 seconds.
>
> Does anyone know about this issue?
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13102): https://lists.yoctoproject.org/g/poky/message=
/13102
> Mute This Topic: https://lists.yoctoproject.org/mt/99946679/4454828
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [toertel@gmail.c=
om]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

