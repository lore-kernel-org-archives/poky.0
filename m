Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.1664.1666039979986258308
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Oct 2022 13:53:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kymvkUpl;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: quantenkeks@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id e18so9453589wmq.3
        for <poky@lists.yoctoproject.org>; Mon, 17 Oct 2022 13:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lEo53CUqr9FjEok1Rlk9dUjPUGMh+p0CZmGBiQMhK9w=;
        b=kymvkUplNVwuf47iXTcR234Z21Mjv9+gjUyt4m/niFvsDjghhwydwYdWIY8ACZZ7TE
         tFiT/To6Dc3LpbYIXvDHhM6RS0Bi9nYZjvBlZKhz+71fixFb1g8ebe3IoSwsjMvoPlq0
         oec3MYFecwiyoZoAHeBEH0I/XKX+B3bmcOFHCOlPcrqP0mOU7/9207FwzLsI5yuVaADE
         4XHK5jo+MK9bmsPTiGDsYD/A5+8pB3ERapLa2MwVK7esg6XzngdCfajuK6k/7Nlwr8bK
         YShiOOIiIRac6GM8uEEogoWnKfhAfurwPUakX3Iq4VU6JV7Syz+CJ0TuJOum9tM5/rqQ
         h+9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lEo53CUqr9FjEok1Rlk9dUjPUGMh+p0CZmGBiQMhK9w=;
        b=B8rAoGntJ9Q87y9O1GSE5SypOA8bx3TiSox4QlkocFdO0nP4BjmZmlM8OkiLO1u+gp
         Jpd5NlFqPxb3Hdc0nm/pBQTdxFf3mey/pm7MKPe6sL6f0FeJoCs5KH607bDxkwv899dC
         88cbUJHawQLEXhYShkUmDhZRJT5lw4TOvGShZ80BBbDNJR4WEoeMOikLdATxoRYuQATp
         77/UMg1W+sRG7q1LMTzmXzVj5rXi767ZDP5ctzXO2Q0dtJgHX6u72XFubaXEcLPW76xQ
         wKNonth0aTTIDldLsUzX7e98Nnwui4FAAJ/KDJNRYyPZXvRAJ+TF/uQqftzRpbS4YzeY
         Zgbw==
X-Gm-Message-State: ACrzQf0IQnb8ge01/J0WbtAP6KVEFJZBpnQyO+t30X12hDhxdQUtwmka
	hFTzl81KKqfaTtbvvX4DUSn61C6VY2RAsg==
X-Google-Smtp-Source: AMsMyM7aoZt7PvoK0eqxIbmQ+uWJF4pdqj/po2JwpRGxTYQ5H8hQpHfKXj36qKnUSQ0HG5yeWV7jfw==
X-Received: by 2002:a05:600c:54e6:b0:3c6:b966:4367 with SMTP id jb6-20020a05600c54e600b003c6b9664367mr21142562wmb.30.1666039978402;
        Mon, 17 Oct 2022 13:52:58 -0700 (PDT)
Return-Path: <quantenkeks@gmail.com>
Received: from apu.fritz.box (p200300d0ff371f00d412b47e5709243e.dip0.t-ipconnect.de. [2003:d0:ff37:1f00:d412:b47e:5709:243e])
        by smtp.gmail.com with ESMTPSA id t8-20020a5d6a48000000b0022b11a27e39sm9204409wrw.1.2022.10.17.13.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 13:52:58 -0700 (PDT)
From: "Oliver Lang" <quantenkeks@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Oliver Lang <quantenkeks@gmail.com>
Subject: [PATCH] bitbake: cooker/runqueue: fix a typo
Date: Mon, 17 Oct 2022 22:52:53 +0200
Message-Id: <20221017205253.87665-1-quantenkeks@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Oliver Lang <quantenkeks@gmail.com>
---
 bitbake/lib/bb/cooker.py   | 2 +-
 bitbake/lib/bb/runqueue.py | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 32a529f0f9..1da2f03197 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -250,7 +250,7 @@ class BBCooker:
     def process_inotify_updates(self):
         for n in [self.confignotifier, self.notifier]:
             if n and n.check_events(timeout=0):
-                # read notified events and enqeue them
+                # read notified events and enqueue them
                 n.read_events()
                 n.process_events()
 
diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index 48e25401ba..338d1fe36f 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -2256,7 +2256,7 @@ class RunQueueExecute:
         if self.sq_deferred:
             deferred_tid = list(self.sq_deferred.keys())[0]
             blocking_tid = self.sq_deferred.pop(deferred_tid)
-            logger.warning("Runqeueue deadlocked on deferred tasks, forcing task %s blocked by %s" % (deferred_tid, blocking_tid))
+            logger.warning("Runqueue deadlocked on deferred tasks, forcing task %s blocked by %s" % (deferred_tid, blocking_tid))
             return True
 
         if self.failed_tids:
-- 
2.25.1

