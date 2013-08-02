Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57077E0152B
	for <poky@yoctoproject.org>; Fri,  2 Aug 2013 00:56:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r727uaRi003427
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Aug 2013 00:56:36 -0700 (PDT)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.233) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Fri, 2 Aug 2013 00:56:34 -0700
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 2 Aug 2013 15:56:48 +0800
Message-ID: <0ee3aefc08bd6bcddd7132c00ecf3b3ec8ea654b.1375430111.git.Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1375430111.git.Qi.Chen@windriver.com>
References: <cover.1375430111.git.Qi.Chen@windriver.com>
MIME-Version: 1.0
Cc: dvhart@linux.intel.com, Zhangle.Yang@windriver.com
Subject: [PATCH 1/1] tiny-init: fix bashism
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
X-List-Received-Date: Fri, 02 Aug 2013 07:56:36 -0000
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

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


