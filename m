Return-Path: <maxime.roussinbelanger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3632E00CBC; Thu, 29 Nov 2018 15:52:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maxime.roussinbelanger[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.196 listed in list.dnswl.org]
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 052B5E00D07
	for <poky@yoctoproject.org>; Thu, 29 Nov 2018 15:52:00 -0800 (PST)
Received: by mail-qt1-f196.google.com with SMTP id e5so4060391qtr.12
	for <poky@yoctoproject.org>; Thu, 29 Nov 2018 15:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=W4PuojrwvQ0IZxX97ndbB+JZGqkF5MUvtFSi9WSQs/4=;
	b=G4vf6OxZyXhfkVzEOBHZwkDhrhlCirhbAVsFbxhwU19yO81tIVC+5tOlrsQgUMwv89
	8gOtdkukzyxvfWj/jraMC0X+xb5KJFgWkpdxd/00/QRrCGj87/8PYVzqR+1TK1gUPj30
	Dv+EDRPJPEzLyZN0gCrWKUAg1JhQs5Gz6tFSJhez+kFQqG6gTVReqhUvN/BtTCYN20ax
	r5j5LkxxWMwkPx4FUms8v1kd5fwDpymDoqifqpaTJXNxrQPgJBN3vj8adq1Jl02lYWXG
	vyjCA8q038qT/HhQ7JkuW2Kqqyn9qUx8mnpi4sQyYuAtTms0AxQ8Q/Zz91qbIgwOfJpX
	MP5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=W4PuojrwvQ0IZxX97ndbB+JZGqkF5MUvtFSi9WSQs/4=;
	b=uKyGioNIvbDmsiOsEqyp0p77lAUteiT45y9dQGVTIwqW0x11Be+tJqBOOJ8nBUqRLx
	qcZnH0b1xdE8hYVfHh+SLQxy+K9rd786OqDs2AiH4SmL5LakWxFvnbd8Ie7GRb/T2hMl
	o0cdWLGf0DX0UMK10NbCG98doNHUFD/5YQORkSb/gy7nlOFEVg+MS38OwMRN8qOXFqpe
	FpTVI5miiJbrDgO0o/Ffdb+TPslMh8u5NFpUOkfl7Ki52q1NvTkafVjXe6gbVqeY7GoO
	xM+GxRQPUVYxTInjggyIrHXvt7m86afblishAbosmJCRXb21WIJGQAIinHkALa0olZwC
	13aw==
X-Gm-Message-State: AA+aEWarkmvzUXXKTF2+4wZEyFPUTD4NJZsl66NxmjwggVlM7Dpu/yiQ
	NuT1yFp35phW90u20M4/jtA9Hb+n
X-Google-Smtp-Source: AFSGD/UerQpsXkaiQw/vX8MOoAdRb3f2yj4fMUKOBm7+CoAHJKg9/n8fzEQifgLTMqk5VsKD/vevQg==
X-Received: by 2002:aed:3907:: with SMTP id l7mr3561739qte.65.1543535520308;
	Thu, 29 Nov 2018 15:52:00 -0800 (PST)
Received: from mbedesk.Sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	205sm1465333qkf.22.2018.11.29.15.51.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Nov 2018 15:51:59 -0800 (PST)
From: "=?UTF-8?q?Maxime=20Roussin-B=C3=A9langer?="
	<maxime.roussinbelanger@gmail.com>
X-Google-Original-From: =?UTF-8?q?Maxime=20Roussin-B=C3=A9langer?=
	<roussinm@sonatest.com>
To: poky@yoctoproject.org
Date: Thu, 29 Nov 2018 18:51:49 -0500
Message-Id: <9d5112ef83d85dd155d5972241280ac31ba7ea71.1543535225.git.roussinm@sonatest.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <cover.1543535225.git.roussinm@sonatest.com>
References: <cover.1543535225.git.roussinm@sonatest.com>
MIME-Version: 1.0
Cc: =?UTF-8?q?Maxime=20Roussin-B=C3=A9langer?= <roussinm@sonatest.com>
Subject: [PULL][PATCH 1/1] cmake: remove version in directory structure
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
X-List-Received-Date: Thu, 29 Nov 2018 23:52:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Remove the number because I don't think it's worth
supporting multiple version of cmake inside an embedded
product.

When using an SDK, using 2 different CMake is probably not a
use case.

Signed-off-by: Maxime Roussin-Bélanger <roussinm@sonatest.com>
---
 meta/recipes-devtools/cmake/cmake-native_3.12.2.bb | 2 ++
 meta/recipes-devtools/cmake/cmake_3.12.2.bb        | 7 ++++---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/cmake/cmake-native_3.12.2.bb b/meta/recipes-devtools/cmake/cmake-native_3.12.2.bb
index 9a1390f96d..3e59012b48 100644
--- a/meta/recipes-devtools/cmake/cmake-native_3.12.2.bb
+++ b/meta/recipes-devtools/cmake/cmake-native_3.12.2.bb
@@ -16,6 +16,8 @@ do_configure[cleandirs] = "${B}"
 # Disable ccmake since we don't depend on ncurses
 CMAKE_EXTRACONF = "\
     -DCMAKE_LIBRARY_PATH=${STAGING_LIBDIR_NATIVE} \
+    -DCMAKE_DOC_DIR=doc/cmake \
+    -DCMAKE_DATA_DIR=share/cmake \
     -DBUILD_CursesDialog=0 \
     -DCMAKE_USE_SYSTEM_LIBRARIES=1 \
     -DCMAKE_USE_SYSTEM_LIBRARY_JSONCPP=0 \
diff --git a/meta/recipes-devtools/cmake/cmake_3.12.2.bb b/meta/recipes-devtools/cmake/cmake_3.12.2.bb
index e0457677e8..0a3963b525 100644
--- a/meta/recipes-devtools/cmake/cmake_3.12.2.bb
+++ b/meta/recipes-devtools/cmake/cmake_3.12.2.bb
@@ -26,7 +26,8 @@ python () {
 }
 
 EXTRA_OECMAKE=" \
-    -DCMAKE_DOC_DIR=${docdir_stripped}/cmake-${CMAKE_MAJOR_VERSION} \
+    -DCMAKE_DOC_DIR=${docdir_stripped}/cmake \
+    -DCMAKE_DATA_DIR=share/cmake \
     -DCMAKE_USE_SYSTEM_LIBRARIES=1 \
     -DCMAKE_USE_SYSTEM_LIBRARY_JSONCPP=0 \
     -DCMAKE_USE_SYSTEM_LIBRARY_LIBUV=0 \
@@ -46,8 +47,8 @@ do_install_append_class-nativesdk() {
 
 FILES_${PN}_append_class-nativesdk = " ${SDKPATHNATIVE}"
 
-FILES_${PN} += "${datadir}/cmake-${CMAKE_MAJOR_VERSION} ${datadir}/cmake ${datadir}/aclocal"
-FILES_${PN}-doc += "${docdir}/cmake-${CMAKE_MAJOR_VERSION}"
+FILES_${PN} += "${datadir}/cmake ${datadir}/aclocal"
+FILES_${PN}-doc += "${docdir}/cmake"
 FILES_${PN}-dev = ""
 
 BBCLASSEXTEND = "nativesdk"
-- 
2.19.2


