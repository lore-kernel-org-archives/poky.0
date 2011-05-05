Return-Path: <aalonso@secretlab.ca>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 772B24C80132
	for <poky@yoctoproject.org>; Thu,  5 May 2011 14:11:19 -0500 (CDT)
Received: by gya6 with SMTP id 6so1258793gya.35
	for <poky@yoctoproject.org>; Thu, 05 May 2011 12:11:19 -0700 (PDT)
Received: by 10.236.31.103 with SMTP id l67mr3583937yha.21.1304622679144;
	Thu, 05 May 2011 12:11:19 -0700 (PDT)
Received: from localhost.localdomain
	(adsl-99-66-253-228.dsl.emhril.sbcglobal.net [99.66.253.228])
	by mx.google.com with ESMTPS id c62sm482974yhe.16.2011.05.05.12.11.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 May 2011 12:11:18 -0700 (PDT)
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Thu,  5 May 2011 14:11:17 -0500
Message-Id: <22e3b86cb498d93d4ba943e0dc8a2524f7d1d160.1304621382.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <cover.1304621382.git.aalonso@secretlab.ca>
References: <cover.1304621382.git.aalonso@secretlab.ca>
Subject: [PATCH 7/7] readline: update version
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 May 2011 19:11:19 -0000

* Readline new recipe version 6.2

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 meta/recipes-core/readline/readline_6.2.bb |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/readline/readline_6.2.bb

diff --git a/meta/recipes-core/readline/readline_6.2.bb b/meta/recipes-core/readline/readline_6.2.bb
new file mode 100644
index 0000000..5e32bb5
--- /dev/null
+++ b/meta/recipes-core/readline/readline_6.2.bb
@@ -0,0 +1,6 @@
+require readline.inc
+
+PR = "r0"
+
+SRC_URI[md5sum] = "67948acb2ca081f23359d0256e9a271c"
+SRC_URI[sha256sum] = "79a696070a058c233c72dd6ac697021cc64abd5ed51e59db867d66d196a89381"
-- 
1.7.4.4


