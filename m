Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1D6AC87FCA
	for <webhook@archiver.kernel.org>; Thu,  7 Aug 2025 12:10:19 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web10.50242.1754568618071664469
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Aug 2025 05:10:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PXhK9n16;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7e8053d3382so200149385a.0
        for <poky@lists.yoctoproject.org>; Thu, 07 Aug 2025 05:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754568617; x=1755173417; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NgdYdyn/2+s9p+0rAj+Kk8SQqiOTRUHF6MdRCLUV3WY=;
        b=PXhK9n160a0oRZm+Rs2ZyrE8+E5/Z9eQAkhOiQEAntOoWfEvp0SvHpV3HwHb4k1Jam
         YRsAyd8+8nibs2llnfhY0w/r9SCSoEJpH2xzR6BliFYTO2D4ZDyL7hoLoU5gySzWyDCH
         DMjxWtoB2oOYXAMq+aQpS0lRCbGw6gwWOxCQ5CMTpmJAf2K3/8GWJNYtvtsmSriRffwy
         9XXCpYmHGh6t6e7wp0yzarrU65LwS5vwvcteq3nK6jtrY7vWNnwBUbxutmc3VogKj3IP
         n708xgQQ4pGosBYYdAi0MB4JcwAu3dUqyK8wwpA/zoOn673oPYmRKmxzb3hPnLv93DLo
         8seA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754568617; x=1755173417;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NgdYdyn/2+s9p+0rAj+Kk8SQqiOTRUHF6MdRCLUV3WY=;
        b=NHsFSShUbYbCx0O8lCFsGfrxRiomTE8h6FEkzg27kpX2r84AQxGV+pQeYDNCpSeItk
         1ZMw9LNECKCIqhP4VJRFh3xo5IejlOzo6tsccEmEhHlRLj5N3ij3+PQEe3y10By9ixV4
         EFujS8ingIQscKiCw3/Hf1o8GeJ+csSQyIK1pIgWMv+tD3wIJpf+jqhbyDCaa8+0ICzg
         rWNvmqPPd6r2hOWBvfnYoFemrMTEcpUgim3kHeG8hZnoMlebbCQLupRsKnrdlq8dSC5I
         EAN4xoVyK13mw8oSkJ0+zeQWkx+z3gZd4PwR94XPEBJMZKoo8wMv+wwvvL7P5ubUTfz3
         Gpbw==
X-Gm-Message-State: AOJu0YyEHCS2t7YxXuEMy4WT4Ze3k2vgVPU1qev9uDwjVlK89lIZ3P84
	lv+LcrMymCvd/mzqOFA3X07GlLptSdhoFfF/DzvCKFlsSGGGdSD+v0/TvNuKn1sI6g5GnalyS/I
	m7AxUzDnxvn0Xw1tT67cwyNrkTLKYHDw=
X-Gm-Gg: ASbGncvKMQ5Rtes9fNWJ+t0ThKpar9ncGfI9d9NdDSBfRc11G3/yeNjKCMMK2YZna30
	RDv2rrtjdnEsUFNmUI0E7vznngR+0NrLgprIBHmwJP0jK70rSn2ef4o0hrd1XLyYUgE2ZPHekx3
	79eBYKfS1uDbKqdkISXfy6DvP+Qa1Y7xcT6BZ4ChQFnRAPBHZJgRf2QNGdI47tPghUgfV0PIhdK
	Bsp9GtHMuhuFDNAuTfHETN9HZHxEmIfTDwuPcZ+eA==
X-Google-Smtp-Source: AGHT+IG5s2v8ucVkUKpQiJl9pEZis3bX833Lv6rnWea1M1eUtljkmEyeX0BNRWZe21ezelaLwzhA8kt3TrSGaepJ1w8=
X-Received: by 2002:a05:620a:1711:b0:7e6:9bc2:6cb8 with SMTP id
 af79cd13be357-7e81feda045mr445576985a.2.1754568616978; Thu, 07 Aug 2025
 05:10:16 -0700 (PDT)
MIME-Version: 1.0
References: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org>
 <31515.1754384245429990929@lists.yoctoproject.org> <CANNYZj8hzb=MyNgG5uAd-HAqXkhrYphXasph=RrivhKLH30jxg@mail.gmail.com>
 <opg62v3xde6auwtpgveacv7urixrsan2kde6z6xwtdup7igocf@lom5oqfooe26>
In-Reply-To: <opg62v3xde6auwtpgveacv7urixrsan2kde6z6xwtdup7igocf@lom5oqfooe26>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 7 Aug 2025 14:10:05 +0200
X-Gm-Features: Ac12FXz6hjZL8ozCsRJVW1L2yyx61x4M0sMPkO-tdKbpziuOVqFA7J4lTZMMycA
Message-ID: <CANNYZj_VjNSs5=7HV+dtig1JHsVwR_T6S2H6SS5yae9u6KM2hA@mail.gmail.com>
Subject: Re: [poky] dnf5 and libdnf5 target release?
To: frederikbraendstrup@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Aug 2025 12:10:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13716

On Thu, 7 Aug 2025 at 14:01, Frederik Br=C3=A6ndstrup via
lists.yoctoproject.org
<frederikbraendstrup=3Dgmail.com@lists.yoctoproject.org> wrote:
> I'm planning integration with libdnf, but the github page for libdnf
> says that it is being superseeded by dnf5 and libdnf5. Are there any
> current plans for what poky release that will be included in?

This is not how yocto works. Things happen only if there are people
with sufficient interest, willing to invest time into a certain
subject. For dnf5 there curently are no such people to the best of my
knowledge. You are welcome to develop the necessary changes, and they
will be reviewed and tested.

Alex

