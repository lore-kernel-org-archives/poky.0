Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D250AE007DD; Mon, 16 Nov 2015 11:35:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jeff.dagenais[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1122E0071C
	for <poky@yoctoproject.org>; Mon, 16 Nov 2015 11:35:47 -0800 (PST)
Received: by qgad10 with SMTP id d10so57428830qga.3
	for <poky@yoctoproject.org>; Mon, 16 Nov 2015 11:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=6m6gbETAnHkZF76guqET+mkmkxGWJPaPpU1fKRjgfH4=;
	b=NF2rXdRR4u0NYAFLQ6lDi18kx8DQuN7HxDJ2Zia7HR29asO+/kmWpscTUlnsNRikLZ
	0mdDrWxVvdvyUV5cGjjZ2pnBBk7KXdB6cgHH8EOFtiwPoUqlKHSXv+NCwqCSeIsulhjn
	Kpyt8GdCDtrQdu4MoAkGUHiB/FgYpLHtxNsZF5nL80fU39DHX9bPbjHArjk7Ss6X7Bg3
	zMqRHT849NjtZgTirWFn9ZIXMla5oOwsFq3/KxCt83PW4qoUsi3giaHdkbJ9osan3YXE
	VwmMZzk205HzTD0sDos4pBYIYIrEeJoIfPPjsa4pkvuD5PDe2+DypBTHlyelO/0Fhk38
	yhyw==
X-Received: by 10.140.102.35 with SMTP id v32mr38210010qge.72.1447702547432;
	Mon, 16 Nov 2015 11:35:47 -0800 (PST)
Received: from jfddesk.Sonatest.net
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by smtp.gmail.com with ESMTPSA id 83sm9100558qhw.27.2015.11.16.11.35.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 16 Nov 2015 11:35:46 -0800 (PST)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
X-Google-Original-From: Jean-Francois Dagenais <dagenaisj@sonatest.com>
To: poky@yoctoproject.org
Date: Mon, 16 Nov 2015 14:37:16 -0500
Message-Id: <1447702637-1614-1-git-send-email-dagenaisj@sonatest.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH 1/2] toolchain-shar-relocate: don't assume last state of env_setup_script is good
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

From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>

In the case where many environment-setup-* files exist, the incorrect
filename might be lastly set in env_setup_script, which leads to
incorrect behaviour for the initialization of native_sysroot.

The scenario I had was that our custom meta-toolchain-*.bb, which
inherits populate_sdk, defined another environment-setup-* file to dump
variable information for qt-creator. The file is named like so in order
for the sdk shell script to pick it up and fix the SDK paths in the
file. Since it (coincidentally) alphabetically comes after ...-core2, it
was last set in env_setup_script and the grep OECORE_NATIVE_SYSROOT
would simply be blank. The apparent symptom was "...relocate_sdk.py:
Argument list too long" since the find command would not be searching in
the right path.
---
 meta/files/toolchain-shar-relocate.sh | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta/files/toolchain-shar-relocate.sh b/meta/files/toolchain-shar-relocate.sh
index dfb8e16..bfcf52e 100644
--- a/meta/files/toolchain-shar-relocate.sh
+++ b/meta/files/toolchain-shar-relocate.sh
@@ -1,3 +1,5 @@
+#reset the env_setup_script value to the proper value
+env_setup_script=$target_sdk_dir/environment-setup-@REAL_MULTIMACH_TARGET_SYS@
 # fix dynamic loader paths in all ELF SDK binaries
 native_sysroot=$($SUDO_EXEC cat $env_setup_script |grep 'OECORE_NATIVE_SYSROOT='|cut -d'=' -f2|tr -d '"')
 dl_path=$($SUDO_EXEC find $native_sysroot/lib -name "ld-linux*")
-- 
2.1.4


