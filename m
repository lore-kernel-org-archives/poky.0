Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4BA3E00A4D; Sat, 25 Jul 2015 06:03:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 855D7E009F8
	for <poky@yoctoproject.org>; Sat, 25 Jul 2015 06:03:38 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so52629723igb.0
	for <poky@yoctoproject.org>; Sat, 25 Jul 2015 06:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=CPZgJXgi3mcV46Xmc917BtiF6n3WAeLNbKQrGN8+2AI=;
	b=uIKY9qHGwbWPE/MGRxohNcVLf5y4TJsAgE7kMiazYeblYN3pC546xFuNwueYZvVjhG
	umQIo6e2MQbJMjpTkkJwNAjlSSTrIh7NPKz9NTfxY4QhTmmifj6YgdiKLCAtmpIfJLV5
	yguBD9IsJ6+Qc6ibPPjX3GXVHj7tUeGI7dr1avwb3qFB4ikbbOgYx7xEvqa+SNrzNn+A
	P0jCijWNfIXYjjj8552TH8U2Na/rx/PwQPHH9aDd5nusKjIm1uUJEEstr2WSDGY6GUBq
	UiMA29UXdP98QuF9SfN0GcYRYe3zZJhTSxtEUtwt6r7ChIVwTAJGdPJImhwNov5Aph21
	ASAw==
X-Received: by 10.107.9.41 with SMTP id j41mr32310270ioi.37.1437829418383;
	Sat, 25 Jul 2015 06:03:38 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	ot6sm1421801igb.11.2015.07.25.06.03.36
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 25 Jul 2015 06:03:37 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: poky@yoctoproject.org
Date: Sat, 25 Jul 2015 09:03:18 -0400
Message-Id: <1437829398-8585-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 2.5.0.rc2.13.g961abca
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: [PATCH] SANITY_TESTED_DISTROS: fix lsb name for openSUSE 13.2
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
X-List-Received-Date: Sat, 25 Jul 2015 13:03:42 -0000

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index e3d3c78..80861f6 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -80,7 +80,7 @@ SANITY_TESTED_DISTROS ?= " \
             CentOS-7.* \n \
             Debian-7.* \n \
             Debian-8.* \n \
-            openSUSE-13.2 \n \
+            openSUSE-project-13.2 \n \
             "
 
 # Default hash policy for distro
-- 
2.5.0.rc2.13.g961abca


