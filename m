Return-Path: <ajlennon@gmail.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1264FE017A2
	for <poky@yoctoproject.org>; Wed,  6 Nov 2013 09:12:16 -0800 (PST)
Received: by mail-we0-f171.google.com with SMTP id t60so5162591wes.2
	for <poky@yoctoproject.org>; Wed, 06 Nov 2013 09:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=FrpV7gKL8u8MgHT8v+OdBlzznoT3hZTZ1h+X+DFCkRY=;
	b=fXoN5QX/ClZ41h/lHfCoe/vl7P9u+9AsRjUailQIBJkSgteIHRIJjdbwLGjbTRbb1O
	1Ltvln0iPkNU1oMeZMeBMUAesybpLVStIhYg5xC34+EXwl/aTmDL68Dhl9y9NXqkqFn7
	GRCIy++RXq2xJEPabI4Cj+ok/H3Tg9Vbll3EvE8tLovw5So3JZWPsqIFNNjyqZHA1QFG
	cJaiannTR+sRe8XJ4gJWMkidudg8VtkXnbZ7xT7lbFK5XryTRe3V9xGmaMFieWA1lMOc
	AvCbyaYhV3h5HOzIRoISa80cF83OZzn5c58y1bte/w5dxCHMAOFNqSDt+wNGzS575fUB
	T1FQ==
X-Received: by 10.180.219.33 with SMTP id pl1mr3322339wic.49.1383757935010;
	Wed, 06 Nov 2013 09:12:15 -0800 (PST)
Received: from localhost.localdomain
	(cpc16-live22-2-0-cust180.know.cable.virginm.net. [82.42.220.181])
	by mx.google.com with ESMTPSA id b7sm26251043wiz.8.2013.11.06.09.12.14
	for <poky@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Nov 2013 09:12:14 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: poky@yoctoproject.org
Date: Wed,  6 Nov 2013 17:10:07 +0000
Message-Id: <a6737b61ff0e7962417c6c44f5c982ccfd6adc48.1383757684.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1383757684.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1383757684.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1383757684.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1383757684.git.ajlennon@dynamicdevices.co.uk>
Subject: [PATCH 2/2] sqlite3: Add support for column metadata API
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
X-List-Received-Date: Wed, 06 Nov 2013 17:12:17 -0000

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 meta/recipes-support/sqlite/sqlite3_3080002.bb |    2 --
 1 file changed, 2 deletions(-)

diff --git a/meta/recipes-support/sqlite/sqlite3_3080002.bb b/meta/recipes-support/sqlite/sqlite3_3080002.bb
index e54f108..18ff292 100644
--- a/meta/recipes-support/sqlite/sqlite3_3080002.bb
+++ b/meta/recipes-support/sqlite/sqlite3_3080002.bb
@@ -2,8 +2,6 @@ require sqlite3.inc
 
 LIC_FILES_CHKSUM = "file://sqlite3.h;endline=11;md5=65f0a57ca6928710b418c094b3570bb0"
 
-PR = "r1"
-
 SRC_URI = "http://www.sqlite.org/2013/sqlite-autoconf-${PV}.tar.gz"
 
 SRC_URI[md5sum] = "6d6cc639a4da04fbbdda7b1a1a01b386"
-- 
1.7.9.5


