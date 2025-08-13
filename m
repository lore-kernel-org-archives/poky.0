Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0910ECA0EE0
	for <webhook@archiver.kernel.org>; Wed, 13 Aug 2025 11:01:51 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web10.98593.1755082906528299947
 for <poky@lists.yoctoproject.org>;
 Wed, 13 Aug 2025 04:01:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M2uKXBSu;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-707453b0306so63875736d6.2
        for <poky@lists.yoctoproject.org>; Wed, 13 Aug 2025 04:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755082905; x=1755687705; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lDeHn4Em/3eWSelCn7VSU5xt5uglcNNNiMtQZP/vC7s=;
        b=M2uKXBSuwQY0moPll7KTSFCUVapvq0lDcgb7gLo6ozufcnjQmSqzN/50WbkqzwBuGA
         sfO8hoOmHuEG71p1yFjw6jLLxYWpeU7886u2A5NVb8t6mqgn5TnzAin+tJpeOQtfycx8
         0c0Cm39aBvtg6QE+nnj1597GJz0wUTrDn4I4PUKpTu27QOgyNRtxe9xJ6Zey5mpwSxEP
         v63jpXigeD2LAb6+DDVKBpqLsB/YMzArMPemt+tCuJiXfoF5ASpBSO9IRgXthbxqAZNz
         jogjWYQgTO0Dxa2eDGigZDcEOZMsfUT4Q2n+IfB8chl0FDlGxh1cyae6U/t6qE0NcB4k
         oVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755082905; x=1755687705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lDeHn4Em/3eWSelCn7VSU5xt5uglcNNNiMtQZP/vC7s=;
        b=mUhzAZEZNvazvmEwERQ8o8mnQKy0xGgfEIj8a4As46wJMJW4vfWeUdLDmk9QYGc98Q
         bFCTMOSNSdT0PvFFQeZmx0v92nmAeXmtN13n7/0jVsCFDmRgiKZXBhLv6PdCTNKN8Nzw
         30qn2QaetK3iHQorV2Nd/FLzWE7cTC5KQRq6xwoh2bTo2+wMuMHVxUup30ZS4za7EvGR
         tkqaZrVvjmw1Tfmobg1X4XMGPJO70/q2jKBkIZohFQNCVEsQQsOgDAG6u6NhWf/T9Tcz
         +XEn0NH4Uiy/u3NoUqy4bQTPpbbYw42DENEVE4pKgs6bQZYYsKRaW8QtTxkDsrGK4TDx
         TkIw==
X-Forwarded-Encrypted: i=1; AJvYcCUc1aPWzbv1znDCABzq8jmrrQku3IXbJjLOIdbR82i1gqnqDeiFs+SHkRCE1pgulOojNR0R@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw8W3z34jdf0j7Mp8fg7S4LpR4d0KsM1G9vD9TGYvrkB+vQQq6w
	Xep5H+nizRe0bI/tImXyJh0EXFLf8FiKhMuDivEayuzP8HaIOaOH9ixfnZOnkamahGeF1XgNooe
	V4iWEtJKFrA1TQ9wtlxi5rhFTPk9vyRY=
X-Gm-Gg: ASbGncu1QegS47Zh9BNbHpQ8OSFlBKSRQLcpI2XphAZYnyPYzE9OfDnB8WN1bodrQcA
	9t6RnoYrjcESYZ6GNTw0Pfb3FdDcrUH3uaZgUXWwYIt4fQ2m9nT3s4rhhbydRhnnQZ01AQjwLsw
	6l/+Bt5CBtMp69U9Iy3wfl/zHnoa2qV+G5rKDu2uoHwQVZzpOl3lZVvKlvQNByeZ9Xt3q1XyutC
	1HOhePdMvRf+cQUcLLYnggPSJYMOiH/Z1bdi/hrixdZLAPfIiqi
X-Google-Smtp-Source: AGHT+IGwJxfaHCrw0tllf7ZEok5nIqfJq92UYlw7JAcZnzUhz1fenpp947kKlK3mjXESARPkP3dR0XjVUlGH2GedmAA=
X-Received: by 2002:a05:6214:21ec:b0:707:7be:2f5e with SMTP id
 6a1803df08f44-709e89ea8f3mr25068436d6.44.1755082905407; Wed, 13 Aug 2025
 04:01:45 -0700 (PDT)
MIME-Version: 1.0
References: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org>
 <31515.1754384245429990929@lists.yoctoproject.org> <CANNYZj8hzb=MyNgG5uAd-HAqXkhrYphXasph=RrivhKLH30jxg@mail.gmail.com>
 <opg62v3xde6auwtpgveacv7urixrsan2kde6z6xwtdup7igocf@lom5oqfooe26>
 <18597ADCBAD905F0.18889@lists.yoctoproject.org> <CANNYZj9S-qXZGgN6WrZ_EhZkYYZ4yfrKs4W4GE6a1dtbO3i5pA@mail.gmail.com>
 <ba03d0b9-3311-4010-8ebb-5e2df1a41d3b@vaisala.com>
In-Reply-To: <ba03d0b9-3311-4010-8ebb-5e2df1a41d3b@vaisala.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 13 Aug 2025 13:01:33 +0200
X-Gm-Features: Ac12FXw7S3_o4qhwRNfV0-Q8t40m7tangWRz5I4Ixahn9ZkvPJ-p7dldYJnqQSM
Message-ID: <CANNYZj9X74cOCZsOp1w33ELrcFMMrC46TCd68dJTfjUtJcTYbw@mail.gmail.com>
Subject: Re: [poky] dnf5 and libdnf5 target release?
To: Niko Mauno <niko.mauno@vaisala.com>
Cc: frederikbraendstrup@gmail.com, poky@lists.yoctoproject.org, 
	Ross Burton <ross.burton@arm.com>, 
	=?UTF-8?B?VmVzYSBKw6TDpHNrZWzDpGluZW4=?= <vesa.jaaskelainen@vaisala.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 13 Aug 2025 11:01:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13724

On Wed, 13 Aug 2025 at 12:25, Niko Mauno <niko.mauno@vaisala.com> wrote:
> On related note, about 5 weeks ago we briefly tried out if using dnf5 wou=
ld yield any improvement in do_rootfs() turnaround time -- which it didn't =
(later on realized others seemed to also have expressed their surprise on l=
ack of dnf5 performance improvement over dnf4 in some online discussion thr=
eads).

I'm not surprised. The bulk of do_rootfs is creating a repository
index (not done by dnf), resolving dependencies (not done by dnf), and
unpacking and writing out .rpm content (also not done by dnf). Dnf5
might feel snappier in interactive command line sessions, but
otherwise the whole project seems somewhat misguided.

Alex

