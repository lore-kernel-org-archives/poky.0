Return-Path: <aalonso00@gmail.com>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 80E024C80052
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 20:31:29 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ewy9 with SMTP id 9so4148749ewy.35
	for <poky@yoctoproject.org>; Wed, 01 Dec 2010 18:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:sender:from:to:cc:subject
	:date:message-id:x-mailer:in-reply-to:references;
	bh=IlsRnRYTD4fml4SFmNbr7iiIh4j5D2pl/zQ6O4KICQk=;
	b=k3VMkC6TfW3InjnC+qEBASKjAXFM6iylcEiBxr8SwuRYCdanE8d41IrFktP26KmMLv
	Rx0hhsbkthRVboW4Ipwxz5ESdlaHyW74pbeW5B15jqdVTNwSKEx9sXU/0QqWw669TB2S
	gjHebHBaKp7QOV1VoIGXAYrQuun8l70s0bpRE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=feaMc+yJ7XSKWG5/7e+7erIboml2fY2C7rEDzJKOwMuTDvrDFZgJkceguPofaucygE
	SGKm5T/+P7dcUEZQbgB2Wl6v2AJiX6Mz91L3qGbkxVRxjWkjpod96hfy+YtI+SI6x36n
	NGq/vv9Oai4wkAytUkoOLG3dXeFpD1M6kjOKg=
Received: by 10.213.27.66 with SMTP id h2mr202929ebc.42.1291257087177;
	Wed, 01 Dec 2010 18:31:27 -0800 (PST)
Received: from aalonso-pc.lan ([189.134.121.81])
	by mx.google.com with ESMTPS id b52sm596979eei.19.2010.12.01.18.31.25
	(version=SSLv3 cipher=RC4-MD5); Wed, 01 Dec 2010 18:31:26 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Wed,  1 Dec 2010 20:36:21 -0600
Message-Id: <1291257381-21280-2-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.2.3
In-Reply-To: <1291257381-21280-1-git-send-email-aalonso@secretlab.ca>
References: <1291257381-21280-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 2/2] xrandr: fix license checksum
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
X-List-Received-Date: Thu, 02 Dec 2010 02:31:29 -0000

* Fix FATAL: Licensing warning: LIC_FILES_CHKSUM does not match
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb b/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
index 8712ff6..7d2a678 100644
--- a/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
+++ b/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
@@ -2,10 +2,10 @@ require xorg-app-common.inc
 
 DESCRIPTION = "X Resize and Rotate extension command."
 LICENSE= "BSD-X"
-LIC_FILES_CHKSUM = "file://COPYING;md5=4c5c132d3690478179d78ec3bf064584"
+LIC_FILES_CHKSUM = "file://COPYING;md5=fe1608bdb33cf8c62a4438f7d34679b3"
 DEPENDS += "libxrandr libxrender"
 PE = "1"
-PR = "r0"
+PR = "r1"
 
 SRC_URI[md5sum] = "d6d20038257eba5178b523e10239d51c"
 SRC_URI[sha256sum] = "5e4a2492e6cc51345aa571b95283c43c2771c4f444837dbce2699d62f76b4adb"
-- 
1.7.2.3


