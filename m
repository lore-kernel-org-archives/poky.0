Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.5607.1794387895840919850
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Nov 2026 01:04:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=drrH+reP;
 spf=pass (domain: smile.fr, ip: 209.85.221.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-48b001cd92bso1541753f8f.2
        for <poky@lists.yoctoproject.org>; Wed, 11 Nov 2026 01:04:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1794387894; x=1794992694; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=mCr2YfnDZYRJAWfcGcYDf5KbILGmMI3JyAxqBHNdYO4=;
        b=drrH+rePEeumsbY7NpsDFF9GoyOna3bAy9xw9HCdBC4PUGZFE6Waaf235Oa8agFuFc
         qHb1TKgdynklrLlk5YscVEQRGV6wyotKSnclpRqyIybzV/cXyPrCfgn1cQKlsY94doPY
         u5JySyB78zkY42iNyN7vVUPKSXI5AjBgnupU+greYS6/8de8BML6ooeCPr0Tl3X3o514
         i+5pn4jRMG2souCbMxC1qbKBkxLG8FI//YEczjbRiPHZpQjaXMTXyUe61aytSkk4/FwA
         qp+FmwoP8RDNc6hZ+6rdtxR2YvpNucoZMDrF8qEWOzd8Np7GnS6GBFzRSDQ5IJetgWwP
         IELg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794387894; x=1794992694;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=mCr2YfnDZYRJAWfcGcYDf5KbILGmMI3JyAxqBHNdYO4=;
        b=dD4D0eI90//9VPBnk67RECxq1xjNwwSVulv0YWU8HbPJBHD4LVFVFfjSoID4atGDL4
         aQLY6ccC/Aag4FvADIGNKZjwKcT+4gNszYoIDeq9Fi2YS/CkOx/afX58Qd4/cTOIkN2N
         iqEUXkTcWwgsCCm1QRbR1FWP5b9c4POVxjxXkRCKVkhH/TuRU0qXkYdKpnklyFkkStMu
         oWAJGR2HKT/aNnL73rZ4df92or1SJqWngQIaHvuhhHmz3M/70qOjTjRhwHMB6tOwg1xt
         ctO0bnJIfxa49JW8EAnspRb6kwqCR6odxQ6gwIeUjDC1BOXeH3DGqzTR274naeAg6LXU
         v1RA==
X-Gm-Message-State: APuU4Z+lKFJt93PizfSDc+jBxvCX12EBo8dqwol6sVMDoeWd6ATMYy8d
	IwDzp5j4QDcRLnhG8tpwe4mOloN/2kzeQz82/cW7c6TRqTwZPRvnC/Oc1QgXG91S/fBKuCT6Pup
	9UP+F/r4=
X-Gm-Gg: AYBFou2Mei3cjl0wEZsVUQDtkKjFw8FMI/g3ptQhLwEalfgXrwml85Hvsw9yjaBftSf
	xmgIgEJCKD1b8O+Ovbv26uMr3MzDTe03+SsaRkHNsGwUYx4tt05YDAWkMgAS0w7LzRK8K/ElLSx
	3RZNhLEki0Wj5s4AzkYoFR277COwMQ3mvomBXs+0BmLZFp01pVytJR51ZfcDc4SGqQ4RzYLEp8E
	AUpXD5jhJlySp7c8KoLCKs9FAnUIuvS9VPfQMI+OiuhaTojyk2iHSyrRqD5/eiGEUrMyCPTZyTx
	VPF9TF+kzd7wZrgq38ehbwaAUtRtxrm/Vh3QHP84hiJksxVt6PfV0t3wnDtx2XyDIrZyT5Jo18j
	vLlcH72caTLRwvri1j0F2jRmKg+6ls1fJMtW2sj7uDGtiOviB9GxXLMJpXS0Gk3wBH/8H+cuLP2
	ovG+d/5kCWfCmRt1m9VcQPw+gXq56RZ8Na6ZomyWZtVJfjgin3Y9As6659NLRxZLDBtKoIOq40q
	vQsfD15m8yLFTIhr6i5oLwjVq/LBojUq3lJXcYJ5hOVpqf3Zdbx1GdAwRqdgIBzeJLQrQxEyErr
	NYZH95ad0NU7BUzk0k5Fm+3TqheMNOzdXdZytnE1gv6jYFEhN1ibdkbx6NNu7FU+gUVC1jPsg3J
	BRiB9d1sNx75dZxcUXeH12HPBBKNy
X-Received: by 2002:a05:6000:2612:b0:48d:f7c0:97c0 with SMTP id ffacd0b85a97d-499ca65a4bcmr2401225f8f.50.1794387893757;
        Wed, 11 Nov 2026 01:04:53 -0800 (PST)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-498361f6bacsm9882751f8f.35.2026.11.11.01.04.53
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 01:04:53 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 3/3] Fix LICENSE file and licensing
Date: Wed, 11 Nov 2026 10:04:40 +0100
Message-ID: <b60511544c41f5d29d290681e15c9e302f747efe.1794387818.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <cover.1794387818.git.yoann.congal@smile.fr>
References: <cover.1794387818.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Wed, 11 Nov 2026 09:05:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13999
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
