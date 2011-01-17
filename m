Return-Path: <aalonso00@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 141B64C81212
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:15 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyf1 with SMTP id 1so2384497gyf.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=tk7Kug/Xy5+6J33wMAhEs0uRMwm/dhtSMhaG6fzmTfY=;
	b=IBu1EiDqL69ePtc1CoZjC17d2VmF+7VTRqmdbs7fPl9ZOiFHcVCQzut8NF25RjjCyI
	LwOHqnwrFLahCCaD3bQJGIkI2mOmWfHr5BKdLJpPyeK2BLreIsh2GcCZHRmLObdopfmg
	XXopOCYHEOxrwNQhn07OpwstLk8pjHnl1A7X8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=MmYiWJZ6O/UWJHOaGRhGnqx+c38T7B9FuLrbSZPwOntBlRCk1aJ1e3l35Pf+EozWYc
	EpyD9g/fHoWFq/TG/RWfCPjWues5LMP/lyFbIgRJhC5uY2Dvnc/8+Pdp9KDrbC8U25Iy
	Rjfq24+erhyTYCTUN9EGm5XL5QC6INOzdEH9U=
Received: by 10.100.250.4 with SMTP id x4mr2784356anh.164.1295295854810;
	Mon, 17 Jan 2011 12:24:14 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.12
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:14 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:31 -0600
Message-Id: <1295296178-18590-18-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 18/25] u-boot-xilinx: add license files checksum
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
X-List-Received-Date: Mon, 17 Jan 2011 20:24:15 -0000

* Add LICENSE_FILES_CHKSUM information
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 recipes-bsp/uboot/u-boot-xilinx_git.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
index afea5f0..86e798a 100644
--- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
+++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
@@ -1,7 +1,8 @@
 require recipes-bsp/uboot/u-boot.inc
-PR = "r6"
+PR = "r7"
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/files"], d)}:"
+LIC_FILES_CHKSUM = "file://COPYING;md5=4c6cde5df68eff615d36789dc18edd3b"
 
 BRANCH="master"
 TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
-- 
1.7.3.4


