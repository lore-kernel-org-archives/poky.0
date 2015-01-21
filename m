Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A671AE0089B; Wed, 21 Jan 2015 10:00:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD601E0080C
	for <poky@yoctoproject.org>; Wed, 21 Jan 2015 10:00:26 -0800 (PST)
Received: by mail-wi0-f174.google.com with SMTP id n3so15969791wiv.1
	for <poky@yoctoproject.org>; Wed, 21 Jan 2015 10:00:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=W97GIqyIexyIvTlGbwbWimnqdeIWozG8sCiSLRMxbw0=;
	b=GLTr+pWPSWmDLYZU9U8hkbRqeBQNo7vNw+5z9Ks/Q48EsZEXvfixmcTYqs/R8ZCR9Q
	hPbfhPhjc+8TKh+FYrAOz14yy604paZ7HAbkeaPMiMqDxmZT7IfF+zG69+aqHPN8dVQ1
	B1ijA3u3KgPLC8i3Vjo6DWGUN+aKHLU7IqdwfnVzSiznPUNFwZok+rNaT9oaXe47ZhAD
	8lUnPllH8onePym8oz8WCRBqBs5asUH0mUxXfvzoV4Y1AooI3oUmRXu/DlElqoaus39q
	J2LbybWD6pG/x0J9yNHf4kqmEgH/rVJrXCgsveRmUKC4O2cUhvhn6bbcLqqE9vIhc8ES
	weVA==
X-Gm-Message-State: ALoCoQlW5wH29hUKWwvfDA1QYQ9RHmRehj2ikQumX/usa/LkOiLh5XUAwyLWAUiD2HWQjNRathgd
X-Received: by 10.194.23.39 with SMTP id j7mr33357908wjf.9.1421863225954;
	Wed, 21 Jan 2015 10:00:25 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by mx.google.com with ESMTPSA id kn7sm682987wjc.45.2015.01.21.10.00.24
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Jan 2015 10:00:25 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 21 Jan 2015 17:58:48 +0000
Message-Id: <1421863128-17612-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] poky.conf: use logic to edit WARN_QA and ERROR_QA
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
X-List-Received-Date: Wed, 21 Jan 2015 18:00:31 -0000

Instead of overriding WARN_QA and ERROR_QA, edit the defaults to remove specific
tests from WARN_QA and add them to ERROR_QA.

This should avoid tests being added to poky.conf but not insane.bbclass, or vice
versa.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf |   12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index d3aed52..de1ab7f 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -102,10 +102,8 @@ OELAYOUT_ABI = "10"
 INHERIT += "poky-sanity"
 
 # QA check settings - a little stricter than the OE-Core defaults
-WARN_QA = "textrel files-invalid incompatible-license xorg-driver-abi libdir \
-           unknown-configure-option build-deps file-rdeps"
-ERROR_QA = "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms \
-            useless-rpaths rpaths staticdev ldflags pkgvarcheck already-stripped \
-            compile-host-path dep-cmp installed-vs-shipped install-host-path \
-            packages-list perm-config perm-line perm-link pkgv-undefined \
-            pn-overrides split-strip var-undefined version-going-backwards"
+WARN_TO_ERROR_QA = "already-stripped compile-host-path install-host-path \
+                    installed-vs-shipped ldflags pn-overrides rpaths staticdev \
+                    useless-rpaths"
+WARN_QA_remove = "${WARN_TO_ERROR_QA}"
+ERROR_QA_append = " ${WARN_TO_ERROR_QA}"
-- 
1.7.10.4


