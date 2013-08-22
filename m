Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7DB8E01405
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 08:59:17 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id hi8so867105wib.3
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 08:59:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=PpXt6XyIZgql7bkfEo4vOyJa5VPiN7bhcskLWPzwFDM=;
	b=AI/L6TP9zuPWxriFH4PPaJKfXp6FcxLAi91V4i6JnWT53EwI+zlXIpZLVLvhEm9BJi
	a2wvs+KhqvzbewYgk1/bzBIQfAfP5JWuBSmNQVajET4VGvfVVrsaZlTGbTDBu+Hy9hQl
	+n1reOIRrKMbc4w+hSX7+g6Rt1kzhWISl9oc274tbyjBEb70uQ/aRWBxiSc3JfMONK8D
	Ks4F8mMSZselcb5DbxhYKntJis0ZY/YQ4QVjjsUawdNm/Enu7Tn3vczs/REIJHAYFkTK
	TwbfRP5o1ckSCyK59OH9CGhSTfsFKqQ6QPMZlxZBkZvjU140usJxKxevmon8PQ5BrchU
	0yug==
X-Gm-Message-State: ALoCoQn+0GoX57lTMGH/t3se4Hs9PtPR7VtWPXgRd77aS4fmTgbQye4UR6K0iuG+EYwYX1J7QLmv
X-Received: by 10.180.13.83 with SMTP id f19mr10365825wic.54.1377187156130;
	Thu, 22 Aug 2013 08:59:16 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id a4sm39519248wik.11.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 22 Aug 2013 08:59:15 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 22 Aug 2013 16:59:08 +0100
Message-Id: <c6e699b18e2e78f9e44de5c49482afe0d46f8f95.1377186905.git.ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
References: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
In-Reply-To: <cover.1377186905.git.ross.burton@intel.com>
References: <cover.1377186905.git.ross.burton@intel.com>
Cc: dvhart@linux.intel.com
Subject: [PATCH 2/4] genericx86: add v86d to machine recommends for uvesafb
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
X-List-Received-Date: Thu, 22 Aug 2013 15:59:19 -0000

The uvesafb framebuffer driver needs a userspace helper.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 88464fa..e144754 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -27,7 +27,7 @@ XSERVER ?= "xserver-xorg \
 
 #MACHINE_EXTRA_RDEPENDS = "rt2860"
 
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware"
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware v86d"
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
-- 
1.7.10.4


