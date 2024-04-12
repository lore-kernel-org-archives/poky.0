Return-Path: <ninette@thehoodiefirm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02EF0C04FFF
	for <webhook@archiver.kernel.org>; Fri, 12 Apr 2024 15:33:15 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web11.49644.1712935989991389563
 for <poky@lists.yoctoproject.org>;
 Fri, 12 Apr 2024 08:33:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thehoodiefirm-com.20230601.gappssmtp.com header.s=20230601 header.b=YS5n+cB6;
 spf=neutral (domain: thehoodiefirm.com, ip: 209.85.208.48, mailfrom: ninette@thehoodiefirm.com)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-57009161122so375732a12.3
        for <poky@lists.yoctoproject.org>; Fri, 12 Apr 2024 08:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thehoodiefirm-com.20230601.gappssmtp.com; s=20230601; t=1712935988; x=1713540788; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UlWsfqTAG7RHDAZaw9Dvkq0glLcU+oq7otggdIC1mwA=;
        b=YS5n+cB6NhIv1+ByM7XLkT9deJHj4Iihvnkht3cy/mTVwltlYFQsNYo1uD4NJi0T0G
         VLMSA7u7wijAyA7w+6eAGhbIFyeNoypNiC8Ul39SbFK7AJC3ig+1u9ZR88/2OaISQ1Ia
         mi2LsOSkc4NjWj0ufYjB4Mk9Q2wfb5L0LDzFdxZWaq/hlqi4wwzfE4h3daFVYFScQwp2
         RQkcJm1nZC9ohQ0zuVrL0X7klcHSzOHGdPjy7XXB1rOymcwUD2DHDLrubXwKIponYZqC
         mzIXlEV8Kxj8mOLVyDxQ8qIonbaGwPjCHc3em5HWblH/pOyOZAXKCR556SBDm66/yWs7
         2PtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712935988; x=1713540788;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UlWsfqTAG7RHDAZaw9Dvkq0glLcU+oq7otggdIC1mwA=;
        b=vG+YoWBC1Hrcg5eXY2WKjYiH5zbs2ZSSlgTpgDeGPPAqy37I2Od2zYJYfHtCJPy27o
         q5LBku+OgR2iPkGam71bETp7Sv/CNSg2iZM2Q23W1pScasB+iknCqkto9k0WB7ZYEswC
         T62nPrC9K3w1d3IaVldmuRum4atHUlK+G4Jz1RHlUxUBKIpU4ZxIXv5ZpEd+VHAPHFlr
         JsjYdRcFRkrEB4SET5ir0KKoracVQ6J3sr0BgmQ0D+eoVw0Axtkh5kNz06iECykHVHRc
         va1Hn7VevdBnNY+L5Ur3blOXPAeJNhIBL7jTOpL7LYG4cdbNCO2qzfgmKYXs85AB3iqf
         H+Vg==
X-Gm-Message-State: AOJu0YzqLz02zosimuXmoVJBIhQcZD727i44fTaF7plmuhaF2FkdyRE3
	nHdUx7Z/QwbLcbRMtGnjss4Z8YmFnzW6BohtvJ5RmMZjFTeKD+imHX8kiajwKLF7J2K/aI0d3ZA
	0
X-Google-Smtp-Source: AGHT+IHuZdJ51HnsGUn3mLAr3oc64hq0bmmo/LOrlEOSAu6NJSxw9vk2Dxz95p291pbrYQGZ2Tz05g==
X-Received: by 2002:a50:99d0:0:b0:56e:34db:f5ef with SMTP id n16-20020a5099d0000000b0056e34dbf5efmr2156454edb.28.1712935988190;
        Fri, 12 Apr 2024 08:33:08 -0700 (PDT)
Received: from localhost.localdomain ([95.90.238.88])
        by smtp.gmail.com with ESMTPSA id j1-20020aa7de81000000b0056e62321eedsm1769567edv.17.2024.04.12.08.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 08:33:08 -0700 (PDT)
From: Ninette Adhikari <ninette@thehoodiefirm.com>
To: poky@lists.yoctoproject.org
Cc: Ninette Adhikari <13760198+ninetteadhikari@users.noreply.github.com>,
	Ninette Adhikari <ninette@thehoodiefirm.com>
Subject: [PATCH 2/3] oe-build-perf-report: Display more than 300 commits and date instead of commit number
Date: Fri, 12 Apr 2024 17:33:00 +0200
Message-ID: <20240412153301.87391-3-ninette@thehoodiefirm.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240412153301.87391-1-ninette@thehoodiefirm.com>
References: <20240412153301.87391-1-ninette@thehoodiefirm.com>
Reply-To: engineering@neighbourhood.ie
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 12 Apr 2024 15:33:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13322

From: Ninette Adhikari <13760198+ninetteadhikari@users.noreply.github.com>

- This commit updates measurement statistics data to include start_time so that time can be displayed instead of commit numbers on the chart.
- It also updates default commit history length to 300.

Signed-off-by: Ninette Adhikari <ninette@thehoodiefirm.com>
---
 scripts/lib/build_perf/report.py | 4 +++-
 scripts/oe-build-perf-report     | 6 ++++--
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/scripts/lib/build_perf/report.py b/scripts/lib/build_perf/report.py
index ab77424cc7..82c56830d7 100644
--- a/scripts/lib/build_perf/report.py
+++ b/scripts/lib/build_perf/report.py
@@ -294,7 +294,7 @@ class SizeVal(MeasurementVal):
             return "null"
         return self / 1024
 
-def measurement_stats(meas, prefix=''):
+def measurement_stats(meas, prefix='', time=0):
     """Get statistics of a measurement"""
     if not meas:
         return {prefix + 'sample_cnt': 0,
@@ -319,6 +319,7 @@ def measurement_stats(meas, prefix=''):
     stats['quantity'] = val_cls.quantity
     stats[prefix + 'sample_cnt'] = len(values)
 
+    start_time = time # Add start time for both type sysres and disk usage
     mean_val = val_cls(mean(values))
     min_val = val_cls(min(values))
     max_val = val_cls(max(values))
@@ -334,6 +335,7 @@ def measurement_stats(meas, prefix=''):
     stats[prefix + 'max'] = max_val
     stats[prefix + 'minus'] = val_cls(mean_val - min_val)
     stats[prefix + 'plus'] = val_cls(max_val - mean_val)
+    stats[prefix + 'start_time'] = start_time
 
     return stats
 
diff --git a/scripts/oe-build-perf-report b/scripts/oe-build-perf-report
index 7812ea4540..266700d294 100755
--- a/scripts/oe-build-perf-report
+++ b/scripts/oe-build-perf-report
@@ -336,7 +336,9 @@ def print_html_report(data, id_comp, buildstats):
                 test_i = test_data['tests'][test]
                 meas_i = test_i['measurements'][meas]
                 commit_num = get_data_item(meta, 'layers.meta.commit_count')
-                samples.append(measurement_stats(meas_i))
+                # Add start_time for both test measurement types of sysres and disk usage
+                start_time = test_i['start_time'][0]
+                samples.append(measurement_stats(meas_i, '', start_time))
                 samples[-1]['commit_num'] = commit_num
 
             absdiff = samples[-1]['val_cls'](samples[-1]['mean'] - samples[id_comp]['mean'])
@@ -473,7 +475,7 @@ Examine build performance test results from a Git repository"""
     group.add_argument('--branch', '-B', default='master', help="Branch to find commit in")
     group.add_argument('--branch2', help="Branch to find comparision revisions in")
     group.add_argument('--machine', default='qemux86')
-    group.add_argument('--history-length', default=25, type=int,
+    group.add_argument('--history-length', default=300, type=int,
                        help="Number of tested revisions to plot in html report")
     group.add_argument('--commit',
                        help="Revision to search for")
-- 
2.44.0


