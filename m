Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFF08E00CD7; Sun,  1 Sep 2019 02:38:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05431E0080A
	for <poky@yoctoproject.org>; Sun,  1 Sep 2019 02:38:51 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id h15so10178491ljg.10
	for <poky@yoctoproject.org>; Sun, 01 Sep 2019 02:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=yaij3VsfIdbYITbzYJCrkhlAmJzkadhGkyF7aUsAcJQ=;
	b=IoUt2QLzTA4baghjYrbKdzi9YCTWopSujk/EBfBXZ9Thy8UYXKCvwUG6E5FK1aesuO
	FRE/UmMDhHa5mU+v6KBapjZ2CkJuZfRvdV9VtCQpHzw1YVDSfVJdC7LOqAz475qn5Eqr
	cImNgtMLinF5qhIFkV94IQJpoqdhe0ulOfgsRRlVpxzXPVjS+M41atk2eAPNPG39KDHt
	QsPVf960xYSYZEJ3nntxvtawBy+rF8kXUZMyDsMqBgu3SgMIW6+nSHWUIeDO2lKTCpyB
	DtiaJs/BGP0wfExGBK5+eCtW0RsBRQ66kh2cm0ODM30bXphDx7F5O2FXHuThd+jfnM0P
	1ALQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=yaij3VsfIdbYITbzYJCrkhlAmJzkadhGkyF7aUsAcJQ=;
	b=aWQIXXWFUcnKDtwYwRar4SkTeZimtTjMVmTM4e3yMUDd9xV2KabnCIYR6vY9EMRptg
	6+IQvTTYCqn2dZjBXdB/p5lGG3fCJHlCxrU659C4vSxiqb44BpY2mTidLa49bkWRfeHq
	znGOzh8MAR1b5Q2n+C6PVmOzJcs8a8x7KgKSPPiL1YJcEXblY83Jk8jSrc1uk8+fTg0Y
	IR2C5N5NJIV40r3cRmTkRdzEwLk6GJtusVzJcHeffnBCPfYd+q/4nhO1f4fbw83naAUo
	vqfLOapn1LTTco8gQg0EvwPKBUsQm/TNIDnXvHwqpiyzxZn8E3QiDpUB+sDqCImwLokZ
	0sfQ==
X-Gm-Message-State: APjAAAVIh0QW40q+3YjTnIZoks3+IYX/9WFDWFpqddTRc043oh+iLYaA
	IFlSRZ91GE6pD/vadDll+mhj/+Ld
X-Google-Smtp-Source: APXvYqw47N4gkYFpzMFZlZGKQ1Q6q3a23KIjyjVZemlTx3ede1n5l4rzh/TCHnQQmNI9AW4ooVMDtg==
X-Received: by 2002:a2e:884d:: with SMTP id z13mr6634438ljj.62.1567330730624; 
	Sun, 01 Sep 2019 02:38:50 -0700 (PDT)
Received: from alexander-box.luxoft.com ([62.96.135.139])
	by smtp.gmail.com with ESMTPSA id t1sm505417lji.101.2019.09.01.02.38.49
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 01 Sep 2019 02:38:49 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@yoctoproject.org
Date: Sun,  1 Sep 2019 11:38:44 +0200
Message-Id: <20190901093844.95463-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH] local.conf.sample: add a commented-out option to enable the gtk UI qemu frontend
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
X-List-Received-Date: Sun, 01 Sep 2019 09:38:52 -0000

Gtk is disabled by default as SDL is somewhat quicker to build.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/local.conf.sample | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index b36530dd8c4..c86eee45602 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -238,12 +238,16 @@ BB_DISKMON_DIRS ??= "\
 # Qemu configuration
 #
 # By default native qemu will build with a builtin VNC server where graphical output can be
-# seen. The line below enable the SDL backend too. By default libsdl2-native will
-# be built, if you want to use your host's libSDL instead of the minimal libsdl built
-# by libsdl2-native then uncomment the ASSUME_PROVIDED line below.
+# seen. The line below enables the SDL UI frontend too.
 PACKAGECONFIG_append_pn-qemu-system-native = " sdl"
+# By default libsdl2-native will be built, if you want to use your host's libSDL instead of 
+# the minimal libsdl built by libsdl2-native then uncomment the ASSUME_PROVIDED line below.
 #ASSUME_PROVIDED += "libsdl2-native"
 
+# You can also enable the Gtk UI frontend, which takes somewhat longer to build, but adds
+# a handy set of menus for controlling the emulator.
+#PACKAGECONFIG_append_pn-qemu-system-native = " gtk+"
+
 # CONF_VERSION is increased each time build/conf/ changes incompatibly and is used to
 # track the version of this file when it was generated. This can safely be ignored if
 # this doesn't mean anything to you.
-- 
2.17.1


