Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B451E00282
	for <poky@yoctoproject.org>; Thu, 21 Nov 2013 10:09:08 -0800 (PST)
Received: by mail-wg0-f47.google.com with SMTP id y10so109120wgg.14
	for <poky@yoctoproject.org>; Thu, 21 Nov 2013 10:09:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=1ymEfPocv5ZK3XKhwx6GssmgNGpmzyed6HN65DAtgIU=;
	b=EEk2TwXFlpv9sqjC4lshQgobe4ckaBi+pmQlnAlYQvncmcBSePN9ihS+Q7oXPd8qW5
	nL+WCm3XNcuatckJAyL5NOUc1u1o55QHxnhKp1+r6sj8fF+dOZQCLJEPMPeo43MIcCmd
	DCYLeTp3yIl/56JyXy7hqaWzGU92uj4G6CTC5rSNBtk0aH7skSrrWM36s+6Nk2vkrBxs
	f280iPFGtFAqiNW3+aTqG7ZRkWTZ05c4GTmdDsDr0j4psFzCe57lVUnA4+ywcMoI/4F+
	HMOyduzUrQYKqj0ZZmGEWMokgN45CCsg0ujk2829CUDQ/fFb3DJ+YtmEjeyVLyGEnjOB
	zT1A==
X-Gm-Message-State: ALoCoQngxxJhfc0fQCBQ+l/o8/gSWjYtI/hkbI7+io8aDm3SH/iP23ZTJLSobncJTfHpY+dXUksa
X-Received: by 10.194.143.66 with SMTP id sc2mr3096306wjb.45.1385057347223;
	Thu, 21 Nov 2013 10:09:07 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id uc12sm7522084wib.3.2013.11.21.10.09.06
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Nov 2013 10:09:06 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 21 Nov 2013 18:09:02 +0000
Message-Id: <1385057342-17210-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] poky: enable unknown-configure-option QA test as a warning
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
X-List-Received-Date: Thu, 21 Nov 2013 18:09:12 -0000

This QA test will warn if configure is passed options that it doesn't recongise.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index d0dbbdb..dd3323d 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -102,7 +102,8 @@ OELAYOUT_ABI = "8"
 INHERIT += "poky-sanity"
 
 # QA check settings - a little stricter than the OE-Core defaults
-WARN_QA = "textrel files-invalid incompatible-license xorg-driver-abi libdir"
+WARN_QA = "textrel files-invalid incompatible-license xorg-driver-abi libdir \
+           unknown-configure-option"
 ERROR_QA = "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms \
             useless-rpaths rpaths staticdev ldflags pkgvarcheck already-stripped \
             compile-host-path dep-cmp installed-vs-shipped install-host-path \
-- 
1.7.10.4


