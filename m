Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE88BE00785
	for <poky@yoctoproject.org>; Tue, 10 Dec 2013 07:11:41 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rBAFBeSR006970
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 10 Dec 2013 07:11:41 -0800 (PST)
Received: from pek-hostel-vm02.wrs.com (128.224.153.172) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Tue, 10 Dec 2013 07:11:41 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 10 Dec 2013 10:11:34 -0500
Message-ID: <c9285c195283803b589003e4c2c62a1f8c3ae893.1386686531.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1386686531.git.liezhi.yang@windriver.com>
References: <cover.1386686531.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 3/3] [dora] yocto-bsp: Add missing format specifier in bblayers error message
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Dec 2013 15:11:41 -0000
Content-Type: text/plain

From: Bastien JAUNY <bastien.jauny@gmail.com>

If the build environment is misconfigured (e.g. a bad path
for a layer in bblayers.conf) the yocto-bsp script crashes with a
standard python error, not very explicit.  This fixes the problem.

 Signed-off-by: Bastien JAUNY <bastien.jauny@gmail.com>

(From meta-yocto master rev: 4a8e80b812eebdc1c9570b5d88aa0f3b34824b68)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 scripts/lib/bsp/kernel.py |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 5696ca7..ba68b60 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -62,7 +62,7 @@ def find_bblayers():
             break
 
     if not bblayers:
-        print "Couldn't find BBLAYERS in 'bitbake -e' output, exiting." % \
+        print "Couldn't find BBLAYERS in %s output, exiting." % \
             bitbake_env_cmd
         sys.exit(1)
 
-- 
1.7.10.4


