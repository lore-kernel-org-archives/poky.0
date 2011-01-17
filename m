Return-Path: <aalonso00@gmail.com>
Received: from mail-yi0-f54.google.com (mail-yi0-f54.google.com
	[209.85.218.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 122D44C8120B
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:10 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yi0-f54.google.com with SMTP id 19so2880643yie.13
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=7ZEqrjKisFcNNLiuQtN+NCmJOpkHvQDQpaht4248g4Q=;
	b=ZHW9WamevlxIepBVDraXfuj5d637cdmuqLYeW8BCH3oE+5Z2oYdxtXLb2jm6tbEjWV
	ZeZWZrF5f+lWeacBrUh4xLwNQQzhjT/azDc0ApazduSPCeVr43Dpm6zPrkJQogIjreTE
	tmTSoKj4rxdP+fGEs8IZQXB4R/cxHTI34wrng=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=kJoX+UD0fQAGYcDSVk7aDqJawT86Dg3thAQ94eR6maEV+jqGCGFJUBr7ryzXhDQ2ix
	d1o2XT8B/Kvf9mRe10zdPxczkp+uS2qYraVIYt+Vws90r2wGkv1XWJB3UPJ+Gy1ulTkx
	Yh+BNkg0ImB943fh8oW62aSeaN9r7WqYXkXXo=
Received: by 10.91.26.24 with SMTP id d24mr5054676agj.160.1295295849730;
	Mon, 17 Jan 2011 12:24:09 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.07
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:09 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:29 -0600
Message-Id: <1295296178-18590-16-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 16/25] linux-xilinx: add license files checksum
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
X-List-Received-Date: Mon, 17 Jan 2011 20:24:10 -0000

* Add LICENSE_FILES_CHKSUM information
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 recipes-kernel/linux/linux-xilinx_git.bb |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/recipes-kernel/linux/linux-xilinx_git.bb b/recipes-kernel/linux/linux-xilinx_git.bb
index 47f19b1..1d15437 100644
--- a/recipes-kernel/linux/linux-xilinx_git.bb
+++ b/recipes-kernel/linux/linux-xilinx_git.bb
@@ -7,9 +7,12 @@ DEFAULT_PREFERENCE = "-1"
 DEFAULT_PREFERENCE_virtex4 = "1"
 DEFAULT_PREFERENCE_virtex5 = "1"
 
+LICENSE = "GPL"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
+
 TAG="xilinx_v2.6.37-rc4"
 PV = "2.6.37.4"
-PR = "r4"
+PR = "r5"
 
 SRCREV = "${TAG}"
 SRC_URI = "git://git.xilinx.com/linux-2.6-xlnx.git;protocol=git \
-- 
1.7.3.4


