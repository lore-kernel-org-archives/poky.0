Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBC1CE008BC; Mon,  2 Feb 2015 15:34:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SUBJ_OBFU_PUNCT_MANY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	*  0.0 SUBJ_OBFU_PUNCT_MANY Punctuation-obfuscated Subject: header
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 065DFE0086F
	for <poky@yoctoproject.org>; Mon,  2 Feb 2015 15:34:27 -0800 (PST)
Received: by mail-wi0-f173.google.com with SMTP id r20so20498703wiv.0
	for <poky@yoctoproject.org>; Mon, 02 Feb 2015 15:34:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=v7ZTAJIfzBGy+B3SmoZ8j4efSSgZxH6XrPB6SIxHBfg=;
	b=DrtRTkkMcrxEi6nieZw360nmulYjCdZXAZVBmPHuGEs2XetI8k6a0TDrthEus8dCdc
	zXTFv4E4BWXFSvfYAxfa1rnbrvDi2J1i/uPU/uKKU59oYhWtSlIaJQjTNycgX8ohORZj
	xIYYgPagQNVc44W949RABaxXioPi3KnnQAkT1jA/UaVi/pFBwCJR5EkmpG/7iOboqKOL
	OWXWa40aOyFkL6Fs0FtlbGIgFT/T/b8A/cM8DN5LyiT/Bhq8kL/eO0/k0c3wHbcV5FpY
	dWtJ/KIJwcAfQosFaakCXdO9pSG7kB6XPLGli9mrKcyTEst6UY6uLf7ooh7QsPN+HrlH
	abrA==
X-Gm-Message-State: ALoCoQn0usI9/4BjYPzMFWC2Ua0qIVoLmWhA50HrQ9nW7kthdxe1c/UjGi0EI+6zXkQedPo+1zif
X-Received: by 10.195.13.168 with SMTP id ez8mr8386169wjd.30.1422920066445;
	Mon, 02 Feb 2015 15:34:26 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by mx.google.com with ESMTPSA id u7sm21936741wiy.18.2015.02.02.15.34.24
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Feb 2015 15:34:25 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon,  2 Feb 2015 23:32:31 +0000
Message-Id: <1422919951-22160-1-git-send-email-ross.burton@intel.com>
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
X-List-Received-Date: Mon, 02 Feb 2015 23:34:30 -0000

Instead of overriding WARN_QA and ERROR_QA, edit the defaults to remove specific
tests from WARN_QA and add them to ERROR_QA.

This should avoid tests being added to poky.conf but not insane.bbclass
(unknown-configure-option wasn't enabled in oe-core), or vice versa (infodir
wasn't enabled in Poky).

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf |   12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 9cb2f3a..479182f 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -100,10 +100,8 @@ OELAYOUT_ABI = "10"
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


