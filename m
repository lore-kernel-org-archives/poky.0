Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC022E008BC; Mon,  2 Feb 2015 15:19:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20621E0086F
	for <poky@yoctoproject.org>; Mon,  2 Feb 2015 15:19:24 -0800 (PST)
Received: by mail-we0-f172.google.com with SMTP id q59so41846945wes.3
	for <poky@yoctoproject.org>; Mon, 02 Feb 2015 15:19:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=2mh3a/Re3/WSxv+ZJFXwAZoD2DiQSCdXQ0uYAcbDaKI=;
	b=PrL/+xMF0RJngNR05HOqbG2iRcnCo1Hz+mcCe4iWMsw1MQNHZeNK5cqtf8motrbb7p
	Fr3pHD3N5OLd8JzYRUXlNGzY3jfyXhPfRL+dfwPDOxpqibrq278+cOUp0qMe3Uob2fvA
	iM+dRnQkiIz1+OXGa6KWyVwfDxalkuahgVpWxUkukJAbpPODOV/cZhL0vHGcBDOCnvDi
	FFW3jqbIoVPN1kpOjFr3ww1q5gFOxDrrPbVTxzkkaCAk6GIOT5o0/Kesyv1+ILrQJJzX
	NbMjAxI/nd2aY/c6w6NJ/00UBTOepk2gCOa2kTJblL9pFC0J0CKzn1Mtakx+s61wyego
	B+lQ==
X-Gm-Message-State: ALoCoQmAsFNgCIABxQGUBzBqndLUTM/STbe18dym1te5b/fRN/zFrgJ5f9mDkU0GmzAHUe+g50Jr
X-Received: by 10.194.88.131 with SMTP id bg3mr46548137wjb.99.1422919163471;
	Mon, 02 Feb 2015 15:19:23 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by mx.google.com with ESMTPSA id
	ha1sm21848329wib.24.2015.02.02.15.19.22 for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Feb 2015 15:19:22 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon,  2 Feb 2015 23:17:29 +0000
Message-Id: <1422919049-21044-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] poky.conf: remove poky-feed-config-opkg from images
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
X-List-Received-Date: Mon, 02 Feb 2015 23:19:34 -0000

This recipe didn't do anything beyond opkg-arch-config so it was deleted from
oe-core.  Update the Poky distro configuration to stop install it.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf |    2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index d3aed52..9cb2f3a 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -30,8 +30,6 @@ PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.14%"
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
-EXTRAOPKGCONFIG = "poky-feed-config-opkg"
-
 DISTRO_EXTRA_RDEPENDS += " ${POKY_DEFAULT_EXTRA_RDEPENDS}"
 DISTRO_EXTRA_RRECOMMENDS += " ${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
 
-- 
1.7.10.4


