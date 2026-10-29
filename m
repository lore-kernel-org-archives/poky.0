Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11835.1793280196227358428
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Oct 2026 06:23:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Cu1xKHds;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-48e20ed3b9dso1662092f8f.2
        for <poky@lists.yoctoproject.org>; Thu, 29 Oct 2026 06:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1793280194; x=1793884994; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ImOJiA1bIsHppnyesicCs9DtaZ4mOTrcE7jam/lQW9E=;
        b=Cu1xKHdsQ1CC4sMnU6653pC5mZA0xfZFW2Vn2Aa32qpyoonmGCTNrl9cN1AuUHvb5T
         TxR9CxH6iJXDqOC0ro91eJzXZFSGXd/FW3jhxN72I5vcrtslrf7ZkVnNzf5gXNMaseNi
         dForljYLeBuZ/fbg01YbKaaVBsVAC/oMAjnko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793280194; x=1793884994;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=ImOJiA1bIsHppnyesicCs9DtaZ4mOTrcE7jam/lQW9E=;
        b=xnH0jkEC/rICpgpIzU8YBdyQvkLMvIVK397XEfCSTzS3xNxwn9YfKYhPl6UNiALJNT
         LqJ6jxw4PuNYAM4bWdTvNmguq0wFn5eivTyzggRzuKMjCeAHtOU6GJzL/Ht93R1+0qL5
         uJK7XwA4K5f9NI6FsWv2u5cg8LFuBbE3Usks0vrOqx21QFNgcE5HhSTt6Coll7bW4mAj
         L1MCmEG+PPv15vX8Iyvtp2Zj6ZAIaVj4+cDyC7JJiDd7p8lh3eUYVCyf5tVXcjprvCea
         RriadXTUxdqFgHoDcuZyG7n8fwdM2lrmcD5K97LSVE/MmIm8T0HEXkA+Bh5WVpP9xJWq
         zFVg==
X-Gm-Message-State: AFq9FYJ+QS7TDy6oyjgMvVpPKxP4Ut2jt7On3pcUUPpJPjCWnueFS+gu
	ulnHl7IZu1UaVeYESM81vgsiR9NMTeTY44Yml6qnzY0dHql5c9Y72peGWDWd7Nv9LXgje972aVl
	/k5g5ibU=
X-Gm-Gg: AYBFou1TCMVx5HNjlJMT0/bvUR+K5O3KkEltqdnGKQ0axnetj1MULrVmZRWrCkezmYJ
	mXCOS5I7M2Qam5Wa4E+/63Ks0aoMSidGvWoDNIUb6TeYtIscJca/NaaVia1hhT9WTMXGfTViBSN
	XXrj9SSbYa3SGbhLR+N4LtIW8Gu9BPm1/JwiAF6mDM+NKOtKc5bTr+Nu61HEw8cyrmj1LhXnHyN
	Aa0z9Ckjvkl2eerCQpKBNwlnWZmV8zSQQ7D3xzw6JHXwAfGvJD/G/9PrVagBEk7gJvh/U0DiQ/D
	CCp+y1g8iNTXb32Wof7Q2eksubdxk9Uuz5M2QVU0+OmgaHnDCmtiDsFqFNWEmEq+HhXnMJxcc/k
	3Kc6NLUgBzrJTVoWvHvqk8WfUi/zcrLGm5fOrJgtZ3aoxItm0B4bs9Y4YM5wpwWdsf4o+1Mlocs
	IDojcuZyiEKROmthVBefokV9DwfxMJ0aswmEZcuvcWTb8inrjlD8+PQKCq46+pdb5iAk2gXrSIb
	obkq12wNg35TWbiyu+H1b6A6FitU4rC37u111gHOTIIsHawvJT/vyonFYcS1JYcIblYW/ij9RXj
	fu+/xZcUnASCdG991juQkXlhAgkhcTQyT7O06+rnd8IHDOOs3DLOigAP6Q==
X-Received: by 2002:a05:600c:1c0f:b0:4a2:8c5:5e5 with SMTP id 5b1f17b1804b1-4a9662a0b53mr114007905e9.7.1793280193714;
        Thu, 29 Oct 2026 06:23:13 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:2e6f:2d83:d26c:f3ed])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd8ddasm37417840f8f.48.2026.10.29.06.23.12
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 06:23:12 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] Fix LICENSE file and licensing
Date: Thu, 29 Oct 2026 13:23:11 +0000
Message-ID: <20261029132311.2747154-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Thu, 29 Oct 2026 13:23:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13979
Content-Type: text/plain; charset="utf-8"

After the split from poky, the paths no longer make sense. Simplify
things as meta-yocto is all MIT licensed.

Add in the correct license file.

Also clean up a couple of references to an invalid file, we can use
a license identifier instead.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 LICENSE                                       | 14 ++---------
 LICENSE.MIT                                   | 25 +++++++++++++++++++
 .../lib/oeqa/controllers/beaglebonetarget.py  |  4 +--
 .../lib/oeqa/controllers/grubtarget.py        |  2 +-
 4 files changed, 30 insertions(+), 15 deletions(-)
 create mode 100644 LICENSE.MIT

diff --git a/LICENSE b/LICENSE
index 4dc9a312343..a7aac9b3d15 100644
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
index 00000000000..a6919eb7e1f
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
index 7af3e1dac76..f116d57362b 100644
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
index c3a98979c56..355d414c524 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
@@ -1,6 +1,6 @@
 # Copyright (C) 2014 Intel Corporation
 #
-# Released under the MIT license (see COPYING.MIT)
+# SPDX-License-Identifier: MIT
 
 # This module adds support to testimage.bbclass to deploy images and run
 # tests on a Generic PC that boots using grub bootloader. The device must
