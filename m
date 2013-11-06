Return-Path: <ajlennon@gmail.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4C2CE017E8
	for <poky@yoctoproject.org>; Wed,  6 Nov 2013 07:33:14 -0800 (PST)
Received: by mail-wi0-f181.google.com with SMTP id ex4so3875829wid.8
	for <poky@yoctoproject.org>; Wed, 06 Nov 2013 07:33:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=t1sYY9hqnRdK4ci8PO66UCa2Cblo+rZ8iYIQIsJl9Tw=;
	b=qJ7hssSsStyCh8E6GU28he+19MtSgkDbNCRwITwLRwEpGJWeWdYg0r6pTIXInvWLXE
	QiVfdBg2jpSME5FxZIAiXKgiuhkHdyH+Mmbf0i1USaOMZfeDqx8qxu+q9LNyGUQ7F5ca
	zNcQxeGHC98p4Hva/mUEaOFSJWtJpT4PyKitf/P1hzVyt8OcKf5bsq52bO5DetncRU9L
	tWMvkyvdPH744DRBTV/J09Qp6c2a7z/2PtcOxSvKqZ/+bUvuvHBfWn/nFQf9F/R4MUf4
	2IjTKvaKAFSePKrGdV9Z7LWndkRs8LfAjSWbDvxYtLS/6mFWKzmDUREKRKipq0JaQH+O
	o10A==
X-Received: by 10.180.109.75 with SMTP id hq11mr3004516wib.30.1383751993138;
	Wed, 06 Nov 2013 07:33:13 -0800 (PST)
Received: from localhost.localdomain
	(cpc16-live22-2-0-cust180.know.cable.virginm.net. [82.42.220.181])
	by mx.google.com with ESMTPSA id
	qc10sm25496697wic.9.2013.11.06.07.33.12 for <poky@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Nov 2013 07:33:12 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: poky@yoctoproject.org
Date: Wed,  6 Nov 2013 15:32:59 +0000
Message-Id: <3ab777991480aa4bff79130bd889ed25eba72fdc.1383743152.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1383743152.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1383743152.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1383743152.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1383743152.git.ajlennon@dynamicdevices.co.uk>
Subject: [PATCH 1/1] sqlite3: Add support for column metadata API, bumped PR
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
X-List-Received-Date: Wed, 06 Nov 2013 15:33:17 -0000

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


