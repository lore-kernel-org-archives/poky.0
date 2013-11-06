Return-Path: <ajlennon@gmail.com>
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 230D8E017DB
	for <poky@yoctoproject.org>; Wed,  6 Nov 2013 10:15:49 -0800 (PST)
Received: by mail-wi0-f175.google.com with SMTP id hm4so4215283wib.8
	for <poky@yoctoproject.org>; Wed, 06 Nov 2013 10:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=UrXrUTrV9kilIz0mXd25zOPtbzSkpbXDJM43Ht3smtU=;
	b=JvfnbQ75xA3Zr9cJOj7zz1pM65lR6JQnRUn2j0+oibULtFTNWF14jWoGoyyjlz8mUH
	51LHcRZZwybIthCZDTsCbCgfPcJxsMDzKQk8G9f+yKyXrVKuBNPHV3ee39pgoEl/waMi
	heANlpcHE5LC44JfIQLzW8h3W9UnfRosYdf8xQV3cl+QL/C5oWNmgXJvGODG35yGw4Ib
	o5kaTrfgjZHPF8pF7+HXtY1g7zDaf/krUi8b4qP99OgvTVQ2hOaQ7w/JUPFgN/R8tkm1
	Mh25tevSvwwsnsR1XhHLXQGOaJiQphAG9dH0RVhtdhl1NQL/+0fFrJs/QKdEHyWyfHtb
	elJA==
X-Received: by 10.180.79.227 with SMTP id m3mr22639873wix.2.1383761748657;
	Wed, 06 Nov 2013 10:15:48 -0800 (PST)
Received: from localhost.localdomain
	(cpc16-live22-2-0-cust180.know.cable.virginm.net. [82.42.220.181])
	by mx.google.com with ESMTPSA id hv5sm27105315wib.2.2013.11.06.10.15.47
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Nov 2013 10:15:48 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: poky@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Date: Wed,  6 Nov 2013 18:15:39 +0000
Message-Id: <36aa3d4b7358bdb06122705908d106bb074fc2cd.1383761518.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1383761518.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1383761518.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1383761518.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1383761518.git.ajlennon@dynamicdevices.co.uk>
Subject: [PATCH 1/1] sqlite3: Add support for column metadata API
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
X-List-Received-Date: Wed, 06 Nov 2013 18:15:55 -0000

I found that Mono.Data.SQlite has a dependency on the column meta-data API, thus enabling this API enables use of Hibernate / Mono with SQLite and no doubt enables other ORMs / utility libraries.

ref: https://bugzilla.xamarin.com/show_bug.cgi?id=6333

The API is present in the used SQLite3 sqlite-autoconf-3080002 source-base. Thus we are enabling pre-existing SQLite support rather than introducing new code.

I am not aware of any issues that enabling this SQLite functionality introduces, other than a slightly increased library size of circa 1.5KB , i.e. coretexa9_vfp_neon i.MX6

- with column meta-data API        610360 libsqlite3.so.0.8.6
- without column meta-data API  608880 libsqlite3.so.0.8.6

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 meta/recipes-support/sqlite/sqlite3_3080002.bb |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta/recipes-support/sqlite/sqlite3_3080002.bb b/meta/recipes-support/sqlite/sqlite3_3080002.bb
index 91dc6dd..18ff292 100644
--- a/meta/recipes-support/sqlite/sqlite3_3080002.bb
+++ b/meta/recipes-support/sqlite/sqlite3_3080002.bb
@@ -8,3 +8,8 @@ SRC_URI[md5sum] = "6d6cc639a4da04fbbdda7b1a1a01b386"
 SRC_URI[sha256sum] = "fca3a0a12f94dc92a6d9e700c3f6cab6cd4e79214bd7b6f13717a10f4bcfddb2"
 
 S = "${WORKDIR}/sqlite-autoconf-${PV}"
+
+# Provide column meta-data API
+BUILD_CFLAGS += "-DSQLITE_ENABLE_COLUMN_METADATA"
+TARGET_CFLAGS += "-DSQLITE_ENABLE_COLUMN_METADATA"
+
-- 
1.7.9.5


