Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A7EDE4C80579
	for <poky@yoctoproject.org>; Thu,  7 Apr 2011 21:50:48 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id ECDA81660810; Thu,  7 Apr 2011 20:50:47 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4C7F7166059C;
	Thu,  7 Apr 2011 20:50:43 -0600 (MDT)
Message-ID: <4D9E7803.5070308@mlbassoc.com>
Date: Thu, 07 Apr 2011 20:50:43 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: [PATCH] Allow JFFS2 image creation options to be overridden
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
X-List-Received-Date: Fri, 08 Apr 2011 02:50:49 -0000
X-Groupsio-MsgNum: 5200
Content-Type: multipart/mixed; boundary="------------080908000009090701030402"

--------------080908000009090701030402
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Allow the options for creating JFFS2 images to be specified
by the target/machine.  In other words, not the whole world
is LittleEndian :-)

Tested on PowerPC target

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------080908000009090701030402
Content-Type: text/x-patch;
 name="0001-Allow-JFFS2-image-options-to-be-overridden.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Allow-JFFS2-image-options-to-be-overridden.patch"

From 3bf930fcfa7547a926df460931d855bd0bc35caf Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 7 Apr 2011 20:45:40 -0600
Subject: [PATCH] Allow JFFS2 image options to be overridden

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/classes/image_types.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/image_types.bbclass b/meta/classes/image_types.bbclass
index f11a7ed..f23c1f5 100644
--- a/meta/classes/image_types.bbclass
+++ b/meta/classes/image_types.bbclass
@@ -63,7 +63,7 @@ IMAGE_CMD_ubi () {
 IMAGE_CMD_ubifs = "mkfs.ubifs -r ${IMAGE_ROOTFS} -o ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.ubifs.img ${MKUBIFS_ARGS}"
 
 EXTRA_IMAGECMD = ""
-EXTRA_IMAGECMD_jffs2 = "--pad --little-endian --eraseblock=0x40000"
+EXTRA_IMAGECMD_jffs2 ?= "--pad --little-endian --eraseblock=0x40000"
 EXTRA_IMAGECMD_yaffs2 = "1"
 # Change these if you want default genext2fs behavior (i.e. create minimal inode number)
 EXTRA_IMAGECMD_ext2 ?= "-i 8192"
-- 
1.7.3.4


--------------080908000009090701030402--
