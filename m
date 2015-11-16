Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3667E007F6; Mon, 16 Nov 2015 11:35:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jeff.dagenais[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A7C8E007C9
	for <poky@yoctoproject.org>; Mon, 16 Nov 2015 11:35:49 -0800 (PST)
Received: by qgad10 with SMTP id d10so57429238qga.3
	for <poky@yoctoproject.org>; Mon, 16 Nov 2015 11:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=t6YqcyeQHhpvj5xwIMQ/NnC3uUzpnwXUphAXkoDbx5E=;
	b=ZOpR4oUxoFKUB+IibLw38sqVnlKqlCBkjvd7PM0HPJ1Y/eTlTW+DJxN8TYXJNhuRWw
	U7aPEaDD5cK6SfFZMolTooAo0Wm3famgVbTaY3zJtjniYkSxF5Kb+T7agfZm8ey8Hxsi
	FHFaNXRE5oeP6tGKIq0Tq3Pxpj12+3TkVKcnyGjcJkurHhbSb339icpdcGTrCxYVOqLz
	xDiK7lefGEu8FxCvU3riBM+3TKTL/9ISt76D+AlUCJ1mnc3F5g2Jtu2Ay0E/4TsBjbtM
	wN8bQ3indqHo8mSxP2Sc9ZJ/+SBWpCfh/gFtiXLj4QfeJ818LsM3bR3BfLLkp1j125LU
	Ow9w==
X-Received: by 10.140.32.200 with SMTP id h66mr37320208qgh.16.1447702548637;
	Mon, 16 Nov 2015 11:35:48 -0800 (PST)
Received: from jfddesk.Sonatest.net
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by smtp.gmail.com with ESMTPSA id 83sm9100558qhw.27.2015.11.16.11.35.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 16 Nov 2015 11:35:47 -0800 (PST)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
X-Google-Original-From: Jean-Francois Dagenais <dagenaisj@sonatest.com>
To: poky@yoctoproject.org
Date: Mon, 16 Nov 2015 14:37:17 -0500
Message-Id: <1447702637-1614-2-git-send-email-dagenaisj@sonatest.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447702637-1614-1-git-send-email-dagenaisj@sonatest.com>
References: <1447702637-1614-1-git-send-email-dagenaisj@sonatest.com>
Cc: Jean-Philippe Comtois <comtoisj@sonatest.com>
Subject: [PATCH 2/2] toolchain-shar-extract: don't forget to fix paths in environment-setup.d as well
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
X-List-Received-Date: Mon, 16 Nov 2015 19:35:51 -0000

From: Jean-Philippe Comtois <comtoisj@sonatest.com>

There is a chance that those environment-setup.d/ directories can be
fill with scripts that need to have the environment paths fixed as well.
---
 meta/files/toolchain-shar-extract.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/files/toolchain-shar-extract.sh b/meta/files/toolchain-shar-extract.sh
index 516aa3a..79fbcb4 100644
--- a/meta/files/toolchain-shar-extract.sh
+++ b/meta/files/toolchain-shar-extract.sh
@@ -135,8 +135,8 @@ echo "done"
 
 printf "Setting it up..."
 # fix environment paths
-for env_setup_script in `ls $target_sdk_dir/environment-setup-*`; do
-	$SUDO_EXEC sed -e "s:$DEFAULT_INSTALL_DIR:$target_sdk_dir:g" -i $env_setup_script
+for env_setup_script in `ls $target_sdk_dir/environment-setup-* $target_sdk_dir/sysroots/*/environment-setup.d/*`; do
+    $SUDO_EXEC sed -e "s:$DEFAULT_INSTALL_DIR:$target_sdk_dir:g" -i $env_setup_script
 done
 
 @SDK_POST_INSTALL_COMMAND@
-- 
2.1.4


