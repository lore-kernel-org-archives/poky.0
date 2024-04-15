Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFDCFC4345F
	for <webhook@archiver.kernel.org>; Mon, 15 Apr 2024 10:00:16 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.17270.1713175215478051822
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Apr 2024 03:00:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JD9pCXBy;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2d8b2389e73so33071621fa.3
        for <poky@lists.yoctoproject.org>; Mon, 15 Apr 2024 03:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713175214; x=1713780014; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dh6L9hgzWZnREjj5Ahkj49tNPxKm6/VDJbJuztkjfts=;
        b=JD9pCXBylkt9lw1FQNUGQh6t5RsAAmvA2iBaFv/FGgRKXjFYxaIUB467syG7SAYgWI
         HvSRRuUoRlfXf8GFWWi//35CT/VPS05GT8cT9f53a0JAsKiY9QjAbdNAx2oGYkPppq4l
         cX7QnMpklSuISCIV5UYu6ea5LYSrpPCBJ+Kj3l/VM8u/laGrdqtimKQPFNB9UcLC77yF
         IaR++0/uY0HqHSta+sCSn+b5z+0Zci6HusMNJMX63l+VxN6JSYlJgvVL1qSxJwESMRok
         rXbzjDamdhOUudTZGKy6ky+mHtd4/ChVzefqKI0hgbMQ0pU14qaWE7MFQ1KPfRWAyOQF
         ag4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713175214; x=1713780014;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dh6L9hgzWZnREjj5Ahkj49tNPxKm6/VDJbJuztkjfts=;
        b=wFt+NUBPz7KtEHT2fWrIRzesXyIJCfvtft+0zxsTKvfsKB0JgwOXFkI0GSDlsorpYC
         earM2amYLzxGz9lHVVy4PnX0DnmnosKAILNxLXe84LQGfBueTGMqdoEHVlPjQkhQb0+E
         PcpxymyShTb34DT/TsW3S2nB/msXZa5WskacnCuu2npVUvopIY6M2/bY6HiTf0NJE0B+
         ZkPahhSpTdWwVyaBUzk0XeSO4ZSWr/2ouGVetkb0MNXJ2v7lbG9noOL+sk4qMhxx9UVj
         Gzkz+YPzjVejMpC5r1R6XIsNa9jH15pIhEHl8xd66jCZqoBZKOFXWBe85vAUwWnx1Ggn
         wv0A==
X-Gm-Message-State: AOJu0Yxf+UIcBb1PoASi7VS/0z3qqIU5rWjI3Oo7WxypLSGknckYtG2q
	fGppYH1PZ/bUMzFw1M4s6kdWeZbcwQoT73OLLsK0Vz08BGJ9CyRoZroWLPjkMiLDrcw7fFmOD8M
	bCmw/AQCzdSOXowYvJetKZgfpT9c=
X-Google-Smtp-Source: AGHT+IFXkpQZhSEtFswcZGgAKnoojPLnGKCQ4UuqfII8cv+wFdWFkcgEnW+sXDEeLgZMI/WRkAnX2qcJPle8mZcP3Cs=
X-Received: by 2002:a2e:b00a:0:b0:2d8:3a02:9113 with SMTP id
 y10-20020a2eb00a000000b002d83a029113mr5682691ljk.12.1713175213271; Mon, 15
 Apr 2024 03:00:13 -0700 (PDT)
MIME-Version: 1.0
References: <20240412153301.87391-1-ninette@thehoodiefirm.com>
In-Reply-To: <20240412153301.87391-1-ninette@thehoodiefirm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 15 Apr 2024 12:00:01 +0200
Message-ID: <CANNYZj-hF8PvDsLhaPf+iHyHqjcm7HoQePnz3u_bDvAo=NeexQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 0/3] Improvements for performance test report view
To: engineering@neighbourhood.ie
Cc: poky@lists.yoctoproject.org, Ninette Adhikari <ninette@thehoodiefirm.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 15 Apr 2024 10:00:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13324

Thanks for the patchset, but it should be going to the openembedded-core list.

Alex

On Fri, 12 Apr 2024 at 17:33, Ninette Adhikari
<ninette@thehoodiefirm.com> wrote:
>
> This work is done according to "Milestone 9: Build performance test report view" as stated in the Scope of Work with Sovereign Tech Fund (STF) (https://www.sovereigntechfund.de/).
> The current report can be accessed here:
> Performance test report HTML (https://autobuilder.yocto.io/pub/non-release/20240117-15/testresults/buildperf-alma8/perf-alma8_master_20240117090048_663f180574.html)
> The report is created using the `oe-build-perf-report` script in the poky repository. This script generates a performance test report in HTML format using the data from the yocto-buildstats (https://git.yoctoproject.org/yocto-buildstats/) repository.
> The report displays the performance test results in line chart format. The chart x-axis represents the commit numbers, and the y-axis represents the test duration in minutes.
> The report also includes a table that displays the measurement statistics data for each test. The report is interactive and allows users to zoom in on specific sections of the line chart.
>
> The current report format required some updates to make it more interactive and user-friendly. And this patch addresses such improvements:
>
> - Add [Apache echart](https://echarts.apache.org/en/index.html) library to create oe build performance report charts and make them interactive.
> - Restructure data to time and value array format to be used by echarts. It also converts test duration to minutes and adds zoom to the line charts.
> - Update measurement statistics data to include `start_time` so that time can be displayed instead of commit numbers on the chart. It also updates default commit history length to 300.
> - Add styling updates including page margin, labels for x and y axis, tooltip, and section descriptions.
>
> Updated report screenshots:
> https://github.com/neighbourhoodie/poky/assets/13760198/65a1890c-fd2a-40d4-ac90-f13055735e53
> https://github.com/neighbourhoodie/poky/assets/13760198/1ed43876-73a9-487e-aed3-ca0edf97514c
>
> For local setup, you can do the following:
>
> 1. Clone the yocto-buildstats (https://git.yoctoproject.org/yocto-buildstats/) and the poky repository (https://git.yoctoproject.org/poky/)
>
> 2. In the poky repository run the following to build the report HTML:
> ```bash
> ./scripts/oe-build-perf-report -r "LOCAL_PATH_TO_YOCTO_BUILDSTATS" --branch "master" --commit "663f1805742ff6fb6955719d0ab7846a425debcf" --branch2 "master" --html > test.html
> ```
> Note:
> - Add your local path to the yocto-buildstats repo
> - The above command builds the report in a file called `test.html`. You can access it in the root directory in poky.
> - This exmaple report uses the commit `663f1805742ff6fb6955719d0ab7846a425debcf` from `master` branch.
>
>
> Ninette Adhikari (3):
>   oe-build-perf-report: Add apache echarts to make report interactive
>   oe-build-perf-report: Display more than 300 commits and date instead
>     of commit number
>   oe-build-perf-report: Improve report styling and add descriptions
>
>  .../build_perf/html/measurement_chart.html    | 116 +++++++++++-------
>  scripts/lib/build_perf/html/report.html       |  96 ++++++++++-----
>  scripts/lib/build_perf/report.py              |   4 +-
>  scripts/oe-build-perf-report                  |   6 +-
>  4 files changed, 143 insertions(+), 79 deletions(-)
>
> --
> 2.44.0
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13320): https://lists.yoctoproject.org/g/poky/message/13320
> Mute This Topic: https://lists.yoctoproject.org/mt/105484739/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

