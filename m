Return-Path: <ajlennon@gmail.com>
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73C39E017A2
	for <poky@yoctoproject.org>; Wed,  6 Nov 2013 09:11:38 -0800 (PST)
Received: by mail-wg0-f48.google.com with SMTP id b13so5252179wgh.27
	for <poky@yoctoproject.org>; Wed, 06 Nov 2013 09:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=t1sYY9hqnRdK4ci8PO66UCa2Cblo+rZ8iYIQIsJl9Tw=;
	b=hgQkh760PaRECBfGtGt0D8ZxQyUdConw1h/01oPdeIfc+73rKWXGjDemdGYN99KYnS
	vrVEobLDW6CbXyne7TqrLr+o6QV3T+NA8jndtKLTya90CLM3cy3CUl15wY/o/Kx0GBQ5
	hEekIdt908UWR7sQaIK4Dembro1k9JwFBb7b4pXNDsrq76xJEMaDSGhsaUcU+MxHH6Nh
	z8Co4dvF1GaotW6Pi33DeO2hi/FcrsbRQ0GWjdrbDaIv6oSG5nRVBuYXXQhtmm6ADq8U
	FBpu0Y4/SzyVgx7ZZKFHB2oOe83yEYCE8t0tUSFKKcFdtvaJ5KMa1sWtJgdL43CBdiYj
	9+EQ==
X-Received: by 10.180.184.112 with SMTP id et16mr3413940wic.4.1383757898125;
	Wed, 06 Nov 2013 09:11:38 -0800 (PST)
Received: from localhost.localdomain
	(cpc16-live22-2-0-cust180.know.cable.virginm.net. [82.42.220.181])
	by mx.google.com with ESMTPSA id b7sm26251043wiz.8.2013.11.06.09.11.33
	for <poky@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Nov 2013 09:11:37 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: poky@yoctoproject.org
Date: Wed,  6 Nov 2013 17:10:06 +0000
Message-Id: <3ab777991480aa4bff79130bd889ed25eba72fdc.1383757684.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1383757684.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1383757684.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1383757684.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1383757684.git.ajlennon@dynamicdevices.co.uk>
Subject: [PATCH 1/2] sqlite3: Add support for column metadata API, bumped PR
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
X-List-Received-Date: Wed, 06 Nov 2013 17:11:41 -0000

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 meta/recipes-support/sqlite/sqlite3_3080002.bb |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/meta/recipes-support/sqlite/sqlite3_3080002.bb b/meta/recipes-support/sqlite/sqlite3_3080002.bb
index 91dc6dd..e54f108 100644
--- a/meta/recipes-support/sqlite/sqlite3_3080002.bb
+++ b/meta/recipes-support/sqlite/sqlite3_3080002.bb
@@ -2,9 +2,16 @@ require sqlite3.inc
 
 LIC_FILES_CHKSUM = "file://sqlite3.h;endline=11;md5=65f0a57ca6928710b418c094b3570bb0"
 
+PR = "r1"
+
 SRC_URI = "http://www.sqlite.org/2013/sqlite-autoconf-${PV}.tar.gz"
 
 SRC_URI[md5sum] = "6d6cc639a4da04fbbdda7b1a1a01b386"
 SRC_URI[sha256sum] = "fca3a0a12f94dc92a6d9e700c3f6cab6cd4e79214bd7b6f13717a10f4bcfddb2"
 
 S = "${WORKDIR}/sqlite-autoconf-${PV}"
+
+# Provide column meta-data API
+BUILD_CFLAGS += "-DSQLITE_ENABLE_COLUMN_METADATA"
+TARGET_CFLAGS += "-DSQLITE_ENABLE_COLUMN_METADATA"
+
-- 
1.7.9.5


