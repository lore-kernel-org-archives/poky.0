Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D0C0E00747
	for <poky@yoctoproject.org>; Sun,  4 Aug 2013 18:27:18 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r751RGRr006338
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 4 Aug 2013 18:27:17 -0700 (PDT)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.233) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Sun, 4 Aug 2013 18:27:15 -0700
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 5 Aug 2013 09:27:34 +0800
Message-ID: <a92298098e741dc4b365d124dedfe84a8ee6e92d.1375665987.git.Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1375665987.git.Qi.Chen@windriver.com>
References: <cover.1375665987.git.Qi.Chen@windriver.com>
MIME-Version: 1.0
Cc: dvhart@linux.intel.com
Subject: [PATCH V2 1/1] tiny-init: fix bashism
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
X-List-Received-Date: Mon, 05 Aug 2013 01:27:21 -0000
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

"source" is a bashism, replace it with the posix shell compliant "."

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-yocto/recipes-core/tiny-init/files/init |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/recipes-core/tiny-init/files/init b/meta-yocto/recipes-core/tiny-init/files/init
index 4b78f01..9140e95 100644
--- a/meta-yocto/recipes-core/tiny-init/files/init
+++ b/meta-yocto/recipes-core/tiny-init/files/init
@@ -15,7 +15,7 @@ ifup lo
 
 # Allow for distro or local customizations
 if [ -f /etc/rc.local ] ; then
-	source /etc/rc.local
+	. /etc/rc.local
 fi
 
 # Become session leader and try to find a real tty (e.g. ttyS0)
-- 
1.7.9.5


