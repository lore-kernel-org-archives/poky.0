Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.29855.1793868317086956798
 for <poky@lists.yoctoproject.org>;
 Thu, 05 Nov 2026 00:45:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=F+SY7HLb;
 spf=pass (domain: smile.fr, ip: 209.85.128.52, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4a5036bbac7so9508815e9.3
        for <poky@lists.yoctoproject.org>; Thu, 05 Nov 2026 00:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1793868315; x=1794473115; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=mCr2YfnDZYRJAWfcGcYDf5KbILGmMI3JyAxqBHNdYO4=;
        b=F+SY7HLbki3rjRNg4xDOEgBP8lQo4Ytfm1obacsamw8e3AuOcdB7Jtd3B7dpCVdX1c
         Omui09wJ5dKoMgTeAs64C4A29+qaauTqjBqg/DfR22yZitIPbnLpgrAoC3KwfR8u3nhG
         wiSpgQeh8hC1i2onAEE2aZAIWaX0G+M8afU+pc+4Ef6Q0qATmPLuHbmwJMtFqll9uQ5z
         i4nkw7PGzNhFLzBtAUmKS/w8wKaExBst1QW6vHmjqgOwrXYLtxIjNe1I8fRQthF5dKa+
         AGrGVfDfTFYcSMo39g0Bgxn1Ca7llt1UokFnawo2RizrtEPrq0nThqNiRorcLLl/OyWb
         DKwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793868315; x=1794473115;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=mCr2YfnDZYRJAWfcGcYDf5KbILGmMI3JyAxqBHNdYO4=;
        b=gHhDfn/XmnisqjFHG3/QLtHG6/n6b0JiOyaxJVFQnx1lVJ4Dxkf4SGAo9na/73mQqW
         xL4Ht7aBfcIqT3Hy47qz2N0yyQmFrR5lfJ8pJhmkEbKgvOrCyZFYWIflAqpt2XOAos2V
         /DNaXZ3VgqmiXYFZVC/2Wq7Ss66IhS+w1uuT+IgfveAsxT9BHdbHiGmM1Csyev/b32q4
         dnGC/YZ+cAimge78e5yMvD+bSkRBEPB8QGcV0pkMBYqIDh2Ftw1RyOIrGpYcY5R034HE
         1JQCsRJQa0PZd0GUPk1VxIJDpl2GzKG9xXtUIeE/vkHw/YGihGg3+5cpXb0wWBmLxRNf
         OZTA==
X-Gm-Message-State: APuU4Z8ldrkAIuMwKTovNuBMvdZYyap61w9/kupjqmjpU0EaDiWTGKXc
	kWdyXfk2b8XeACJlxUiXNMKa2v8JYS+M++R0S09qQIOWfiSoFVdM3lR6WlhnTPHDV1Mf5nFmKpI
	QOi62Pb8=
X-Gm-Gg: AYBFou2yyZUslYKjQ5jaGu5yaBj/nm95rLGg5TsKdk4gYS87lLRr6IP+jg22pI3fddP
	ObyDD1RxfiC/8IgyekSYr7rCgSmr9hzxvh4bMtCCMq4ZAsQVqoDQLgsxXPGTqIXd7MdSVr6pWe2
	HFR5PsOEdsR67HF4CW36SbHC9eGFyVuNOF1CGJEOvIrK1NmKTvXwprwFo2AIzUh0OeFDnYXgt6C
	elCdYNxVEcX8qap37QXp7rVuv8Oxqi8flEYpaoYiHx0zLnMQ7HbchPz6JxeZqjWRIIY+aT4NDQc
	ZqEccqbllyLkXoeNqJF/6floiV6snD5d1bvvvUwp3zThZaPT3fBVpxQNo66tT5WNnn8aHJ3ZPhF
	yk8tGGLQsCyb/auZyvB7ydVSJyqXrGVdSWLkYrFNAlLZBKV+NE5nY3ouLD0o8IYvj4jcB4Ruvf+
	618b/+XHbcr6v9xc4zPHW2bcLq0vA8cYy2Ai+gvZGifhkwN9HLzgLuMrLm68Uhj19QevNtkfTXf
	KPL83kk/cWYDKRsuLTs4OnEKeOyAzxmu4vMSagCYFRXE2udlAAcdBh87khq+XzatDvcz0u2RVcd
	21IibSLdkdPEFB3sm5A1gnYULACwm10dX2Y4kEDMshCz3tU1AUp3NEJcY7Jls6K/eDhUtzZZK2m
	BZkIT674RlTGs7pbzYg+Zj2TS+Zea
X-Received: by 2002:a05:600c:470d:b0:4a2:191f:7cb8 with SMTP id 5b1f17b1804b1-4ac1899378bmr386069605e9.17.1793868315086;
        Thu, 05 Nov 2026 00:45:15 -0800 (PST)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b56ea592fbsm41683965e9.4.2026.11.05.00.45.14
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 00:45:14 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][blacksail 1/5] Fix LICENSE file and licensing
Date: Thu,  5 Nov 2026 09:45:09 +0100
Message-ID: <e6ab1239dabcd88cc783cb803dd4adfda804944a.1793868274.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <cover.1793868274.git.yoann.congal@smile.fr>
References: <cover.1793868274.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Thu, 05 Nov 2026 08:45:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13987
Content-Type: text/plain; charset="utf-8"

From: Richard Purdie <richard.purdie@linuxfoundation.org>

After the split from poky, the paths no longer make sense. Simplify
things as meta-yocto is all MIT licensed.

Add in the correct license file.

Also clean up a couple of references to an invalid file, we can use
a license identifier instead.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 61c27a174a1feb2a9f211c0475ed6c8e413392b0)
Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 LICENSE                                       | 14 ++---------
 LICENSE.MIT                                   | 25 +++++++++++++++++++
 .../lib/oeqa/controllers/beaglebonetarget.py  |  4 +--
 .../lib/oeqa/controllers/grubtarget.py        |  2 +-
 4 files changed, 30 insertions(+), 15 deletions(-)
 create mode 100644 LICENSE.MIT

diff --git a/LICENSE b/LICENSE
index 4dc9a312..a7aac9b3 100644
--- a/LICENSE
+++ b/LICENSE
@@ -1,14 +1,4 @@
-Different components of Poky are under different licenses (a mix of 
-MIT and GPLv2). Please see:
-
-bitbake/COPYING (GPLv2)
-meta/COPYING.MIT (MIT)
-meta-extras/COPYING.MIT (MIT)
-
-which cover the components in those subdirectories. This means all 
-metadata is MIT licensed unless otherwise stated. Source code included 
-in tree for individual recipes is under the LICENSE stated in the .bb 
+All metadata is MIT licensed (see LICENSE.MIT) unless otherwise stated. Source code
+included in tree for individual recipes is under the LICENSE stated in the .bb
 file for those software projects unless otherwise stated.
 
-License information for any other files is either explicitly stated 
-or defaults to GPL version 2.
diff --git a/LICENSE.MIT b/LICENSE.MIT
new file mode 100644
index 00000000..a6919eb7
--- /dev/null
+++ b/LICENSE.MIT
@@ -0,0 +1,25 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy
+of this software and associated documentation files (the "Software"), to deal
+in the Software without restriction, including without limitation the rights
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+copies of the Software, and to permit persons to whom the Software is
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
+SOFTWARE.
+
+Note:
+Individual files contain the following tag instead of the full license text.
+
+    SPDX-License-Identifier: MIT
+
+This enables machine processing of license information based on the SPDX
+License Identifiers that are here available: http://spdx.org/licenses/
diff --git a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
index 7af3e1da..f116d573 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
@@ -1,7 +1,7 @@
 # Copyright (C) 2014 Intel Corporation
 #
-# Released under the MIT license (see COPYING.MIT)
-
+# SPDX-License-Identifier: MIT
+#
 # This module adds support to testimage.bbclass to deploy images and run
 # tests on a BeagleBone (original "white" or Black models). The device must
 # be set up as per README.hardware and the master image should be deployed
diff --git a/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py b/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
index c3a98979..355d414c 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
@@ -1,6 +1,6 @@
 # Copyright (C) 2014 Intel Corporation
 #
-# Released under the MIT license (see COPYING.MIT)
+# SPDX-License-Identifier: MIT
 
 # This module adds support to testimage.bbclass to deploy images and run
 # tests on a Generic PC that boots using grub bootloader. The device must
