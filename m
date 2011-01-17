Return-Path: <aalonso00@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC5184C81200
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:01 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 4so2387299gxk.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=HZgylLuP7+fb9LOjhWgeSIeYw7k92H5DcUAT+SIV0WI=;
	b=iKin15RABsTi/J81ZACYReUnfq9USp7si1+Fhxz+ukNiQqD1baMPFhsD9aoff6/kw4
	YCLgIBoK2ZBFnw4nD+LBhJriMJCkjVbQXNlbABdTd+UKuOxa3jS4PflJ8XR2RuOwmCvd
	8v7qkrl3L5vcS58yK5r2pu1WypI/9TVlLYq8Q=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=UoZYxO5w06aKelRIHVJ5c89bnIEk1/fO9rVxp8+R13s878H6YxKxWGMhB8bfGOzMVC
	Yjp40jhXsUCRNDSjYKv1gNzCMPlzbrs7nkfsgjPngShjfM3Hsct42t3IHG9OMqaIF7kN
	Q98FzJEfVf0/TXtI6JXe7PzjX0RcjUBjba2rg=
Received: by 10.100.121.6 with SMTP id t6mr2782877anc.17.1295295841813;
	Mon, 17 Jan 2011 12:24:01 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.59
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:01 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:26 -0600
Message-Id: <1295296178-18590-13-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 13/25] u-boot-xilinx: remove hardcoded include path
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
X-List-Received-Date: Mon, 17 Jan 2011 20:24:02 -0000

* Remove hardcodded include path, search paths are pulled from
  bblayer settings
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 recipes-bsp/uboot/u-boot-xilinx_git.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
index c972311..afea5f0 100644
--- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
+++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
@@ -1,5 +1,5 @@
-require ../meta/recipes-bsp/uboot/u-boot.inc
-PR = "r5"
+require recipes-bsp/uboot/u-boot.inc
+PR = "r6"
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/files"], d)}:"
 
-- 
1.7.3.4


