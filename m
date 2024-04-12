Return-Path: <ninette@thehoodiefirm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA551C00A94
	for <webhook@archiver.kernel.org>; Fri, 12 Apr 2024 15:33:14 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web11.49643.1712935987187338393
 for <poky@lists.yoctoproject.org>;
 Fri, 12 Apr 2024 08:33:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thehoodiefirm-com.20230601.gappssmtp.com header.s=20230601 header.b=UuZFeRoH;
 spf=neutral (domain: thehoodiefirm.com, ip: 209.85.208.46, mailfrom: ninette@thehoodiefirm.com)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-56e2e09fc27so1679191a12.0
        for <poky@lists.yoctoproject.org>; Fri, 12 Apr 2024 08:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thehoodiefirm-com.20230601.gappssmtp.com; s=20230601; t=1712935985; x=1713540785; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5CjGw9W95Hm0ezxl8xSc1UlGk6KjM23dhafY3lIZj78=;
        b=UuZFeRoHEiuW5jnyHzCf/5wjKfhXAhp5R/vRK0zsSYfUIH7RL45wkhuZwqhAEstMoF
         GXyXpN1273Ao4Zab1V52pBevXdb49qIvBbJwM6DsNHVwSkRTTlreBXMXgMa0Du1bs2Jt
         2LrHmOa51sVP+tMBqZDmWlI3C2D93k3fqxd0zJyg9a1lPan+/Z3dZN/f8uy0FeHbP2bW
         6vXoTJfOUM6FCQJdU1HQ10qfU/MNZvJIfAT+yBKqhRhopdOxP2f70A+qAWKfDivRrqpC
         6QcceKmP/bgMQ6L9+O0jmjmdDL1zEXZ76Q8VmW5/uOSbRfkKsTVBUqtu8LCLaAy5/1KL
         P5Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712935985; x=1713540785;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5CjGw9W95Hm0ezxl8xSc1UlGk6KjM23dhafY3lIZj78=;
        b=t7PqbjcW/mVHiwqYH/NF9UGUy4TMfxS7i/36GdBCGbSvdd+lx+hyxzhRCmz23Wn/6k
         DPLM3defIiPv2OTBtN8P8ySj+Gbf0vLv7jiW6TkyF3k1/gbomwsbnDboW3OzoEotHlPy
         SyXVeFdHVfmZpZ7JJp6webShlDDtXIiZ2Z1FsMuAWsBx2WW9cG+fosyAghDSdcuP9DQu
         LLLlMCgnluKW0wUTZ1gQSaDXMBqZaO47mIfw9m//qB5CpH0Iwoe7hyOfANIa8sfi/USD
         wfGUwEej6dR031oY0KxM6KHEMDvFS62kQIhOuJBwvIfSxGKPdHYcbIJICBmJ7fjW0NpJ
         Yw1A==
X-Gm-Message-State: AOJu0YzyX3Ppa9oky09Xs0ECME/TKLh08WcXw7DLahgfJMLQDtPeNxr0
	jqTWeoPdYb7bhmzujEpSAf/cBTn2kidar3x4dOUkWazfk4YPlBs6+bwlmKOO33+ffBE3GwE2f1Y
	c
X-Google-Smtp-Source: AGHT+IHWdQ9j4mxZUlgfXXBB8ntkf2SSxg/8DW2PKCi9wIxl0WSFpixS5qKuQtnWDczOtpSUEtCjMA==
X-Received: by 2002:a50:d69c:0:b0:56d:c85a:7893 with SMTP id r28-20020a50d69c000000b0056dc85a7893mr2426433edi.8.1712935985412;
        Fri, 12 Apr 2024 08:33:05 -0700 (PDT)
Received: from localhost.localdomain ([95.90.238.88])
        by smtp.gmail.com with ESMTPSA id j1-20020aa7de81000000b0056e62321eedsm1769567edv.17.2024.04.12.08.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 08:33:05 -0700 (PDT)
From: Ninette Adhikari <ninette@thehoodiefirm.com>
To: poky@lists.yoctoproject.org
Cc: Ninette Adhikari <ninette@thehoodiefirm.com>
Subject: [PATCH 0/3] Improvements for performance test report view
Date: Fri, 12 Apr 2024 17:32:58 +0200
Message-ID: <20240412153301.87391-1-ninette@thehoodiefirm.com>
X-Mailer: git-send-email 2.44.0
Reply-To: engineering@neighbourhood.ie
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 12 Apr 2024 15:33:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13320

This work is done according to "Milestone 9: Build performance test report view" as stated in the Scope of Work with Sovereign Tech Fund (STF) (https://www.sovereigntechfund.de/).
The current report can be accessed here: 
Performance test report HTML (https://autobuilder.yocto.io/pub/non-release/20240117-15/testresults/buildperf-alma8/perf-alma8_master_20240117090048_663f180574.html)
The report is created using the `oe-build-perf-report` script in the poky repository. This script generates a performance test report in HTML format using the data from the yocto-buildstats (https://git.yoctoproject.org/yocto-buildstats/) repository.
The report displays the performance test results in line chart format. The chart x-axis represents the commit numbers, and the y-axis represents the test duration in minutes. 
The report also includes a table that displays the measurement statistics data for each test. The report is interactive and allows users to zoom in on specific sections of the line chart.

The current report format required some updates to make it more interactive and user-friendly. And this patch addresses such improvements:

- Add [Apache echart](https://echarts.apache.org/en/index.html) library to create oe build performance report charts and make them interactive.
- Restructure data to time and value array format to be used by echarts. It also converts test duration to minutes and adds zoom to the line charts.
- Update measurement statistics data to include `start_time` so that time can be displayed instead of commit numbers on the chart. It also updates default commit history length to 300.
- Add styling updates including page margin, labels for x and y axis, tooltip, and section descriptions.

Updated report screenshots: 
https://github.com/neighbourhoodie/poky/assets/13760198/65a1890c-fd2a-40d4-ac90-f13055735e53
https://github.com/neighbourhoodie/poky/assets/13760198/1ed43876-73a9-487e-aed3-ca0edf97514c

For local setup, you can do the following:

1. Clone the yocto-buildstats (https://git.yoctoproject.org/yocto-buildstats/) and the poky repository (https://git.yoctoproject.org/poky/)

2. In the poky repository run the following to build the report HTML:
```bash
./scripts/oe-build-perf-report -r "LOCAL_PATH_TO_YOCTO_BUILDSTATS" --branch "master" --commit "663f1805742ff6fb6955719d0ab7846a425debcf" --branch2 "master" --html > test.html
```
Note:
- Add your local path to the yocto-buildstats repo
- The above command builds the report in a file called `test.html`. You can access it in the root directory in poky.
- This exmaple report uses the commit `663f1805742ff6fb6955719d0ab7846a425debcf` from `master` branch.


Ninette Adhikari (3):
  oe-build-perf-report: Add apache echarts to make report interactive
  oe-build-perf-report: Display more than 300 commits and date instead
    of commit number
  oe-build-perf-report: Improve report styling and add descriptions

 .../build_perf/html/measurement_chart.html    | 116 +++++++++++-------
 scripts/lib/build_perf/html/report.html       |  96 ++++++++++-----
 scripts/lib/build_perf/report.py              |   4 +-
 scripts/oe-build-perf-report                  |   6 +-
 4 files changed, 143 insertions(+), 79 deletions(-)

-- 
2.44.0


