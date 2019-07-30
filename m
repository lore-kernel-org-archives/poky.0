Return-Path: <zoltan.kuscsik@solution57.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48F02E00D47; Tue, 30 Jul 2019 05:15:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.179 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
	[209.85.208.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1BCDE00C94
	for <poky@yoctoproject.org>; Tue, 30 Jul 2019 05:15:33 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id y17so37288553ljk.10
	for <poky@yoctoproject.org>; Tue, 30 Jul 2019 05:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=solution57.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=te3+yZCtmE44A3Cxrbp8M9wnRn5Ro7JZgxv7+xSlBuM=;
	b=Y+PxonM9UsNfGwc6mxbWo4BBEo8ArzXH3AxKFjZw0VehjG2lNqVjGtH6auLOfrwRaH
	ULxqVrkalv01dv6kSvGSnQXQrzFb6BqDNMYo8go/se1FrSumBGaFNi6ON/0jAd1be3aq
	nZaUeYtn6lcjI7SOBC30H5hcbbB+gvHnPp1Yg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=te3+yZCtmE44A3Cxrbp8M9wnRn5Ro7JZgxv7+xSlBuM=;
	b=ftPTYdmjq3INCmPO9xPMcp9z0hQFVqxK6OkqxsVqu5bOA/UX4h0IAkv2oNa3FqUYyz
	k569ueV3BhT2vCCJq7I6vt3h5wtkmu7c0DBlr7K1woiiJoBF+/JsMLGs8DetD2+SyMuT
	kae0cOLQHmp29flVzUjrJnhgaaBglyexRnQp+dC8dkggbbvPdjS27KXj66Qb46yiDtdu
	us2CU0Mq2G5KcGByoBXUvS7wqNGJKWnMVnA82nsklWNVrsBXAuQdqzohiavL5eeS4pQF
	2KPN0Ot/LAWymy9Nwrnr1v1J7tSfF16iYm0OIBRrq9qiDlM3yCY0/po8mkWzVCfGSgfc
	j/hA==
X-Gm-Message-State: APjAAAXo8VJVNMp9uZyBnqQVb39gPzMOH5iec5B5lTchAESseSImmSCy
	xFGbn21jvI9n9N8UGt827y0WcmbKPag=
X-Google-Smtp-Source: APXvYqzM9c3j6CoAspuJ6yLYgIbfRCj5xyVDpQWBynxdMOu8Nm5EYbMbQRj3o+TjWD3F3m7dmO9Phg==
X-Received: by 2002:a2e:9b10:: with SMTP id u16mr18953539lji.231.1564488932325;
	Tue, 30 Jul 2019 05:15:32 -0700 (PDT)
Received: from hydra.zetee.io ([85.191.217.70])
	by smtp.gmail.com with ESMTPSA id
	n24sm13491205ljc.25.2019.07.30.05.15.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 30 Jul 2019 05:15:31 -0700 (PDT)
From: Zoltan Kuscsik <zoltan.kuscsik@solution57.com>
To: poky@yoctoproject.org
Date: Tue, 30 Jul 2019 14:15:00 +0200
Message-Id: <20190730121500.10689-1-zoltan.kuscsik@solution57.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [PATCH] kmscube: update to latest revision
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
X-List-Received-Date: Tue, 30 Jul 2019 12:15:37 -0000
Content-Transfer-Encoding: 8bit

Switch to gitlab URL, since previos location is now a mirror

Signed-off-by: Zoltan Kuscsik <zoltan.kuscsik@solution57.com>
---
 ...bo_map-_unmap-and-use-it-or-avoid-it.patch | 25 ++++++++++---------
 meta/recipes-graphics/kmscube/kmscube_git.bb  |  4 +--
 2 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/meta/recipes-graphics/kmscube/kmscube/detect-gst_bo_map-_unmap-and-use-it-or-avoid-it.patch b/meta/recipes-graphics/kmscube/kmscube/detect-gst_bo_map-_unmap-and-use-it-or-avoid-it.patch
index 611e541598..a7a08f14e6 100644
--- a/meta/recipes-graphics/kmscube/kmscube/detect-gst_bo_map-_unmap-and-use-it-or-avoid-it.patch
+++ b/meta/recipes-graphics/kmscube/kmscube/detect-gst_bo_map-_unmap-and-use-it-or-avoid-it.patch
@@ -1,7 +1,7 @@
-From 761bf993ca55095f46380c0238583791c1797295 Mon Sep 17 00:00:00 2001
+From a91c588b5a4122506e7fe949c37d530621bdd997 Mon Sep 17 00:00:00 2001
 From: =?UTF-8?q?Daniel=20D=C3=ADaz?= <daniel.diaz@linaro.org>
 Date: Tue, 11 Jul 2017 14:50:37 -0500
-Subject: [PATCH kmscube] Detect gst_bo_map/_unmap and use it (or avoid it)
+Subject: [PATCH] Detect gst_bo_map/_unmap and use it (or avoid it)
 MIME-Version: 1.0
 Content-Type: text/plain; charset=UTF-8
 Content-Transfer-Encoding: 8bit
@@ -18,6 +18,7 @@ Cc: Rob Clark <robdclark@gmail.com>
 Reviewed-by: Eric Engestrom <eric.engestrom@imgtec.com>
 
 Upstream-Status: Submitted [https://lists.freedesktop.org/archives/mesa-dev/2017-July/163020.html]
+Signed-off-by: Zoltan Kuscsik <zoltan.kuscsik@solution57.com>
 ---
  Makefile.am   | 5 ++++-
  configure.ac  | 3 +++
@@ -26,7 +27,7 @@ Upstream-Status: Submitted [https://lists.freedesktop.org/archives/mesa-dev/2017
  4 files changed, 17 insertions(+), 2 deletions(-)
 
 diff --git a/Makefile.am b/Makefile.am
-index a36087d..ab4adbf 100644
+index ba064e4..3a0a50b 100644
 --- a/Makefile.am
 +++ b/Makefile.am
 @@ -43,7 +43,6 @@ kmscube_SOURCES = \
@@ -37,16 +38,16 @@ index a36087d..ab4adbf 100644
  	drm-atomic.c \
  	drm-common.c \
  	drm-common.h \
-@@ -59,3 +58,7 @@ kmscube_LDADD += $(GST_LIBS)
- kmscube_CFLAGS += $(GST_CFLAGS)
- kmscube_SOURCES += cube-video.c gst-decoder.c
- endif
+@@ -68,3 +67,7 @@ texturator_SOURCES = \
+ 	drm-common.c \
+ 	drm-legacy.c \
+ 	texturator.c
 +
 +if ENABLE_GBM_MAP
 +kmscube_SOURCES += cube-tex.c
 +endif
 diff --git a/configure.ac b/configure.ac
-index 8397f7b..c7f1f4d 100644
+index 6be6541..3d20121 100644
 --- a/configure.ac
 +++ b/configure.ac
 @@ -49,5 +49,8 @@ if test "x$HAVE_GST" = "xyes"; then
@@ -59,7 +60,7 @@ index 8397f7b..c7f1f4d 100644
  AC_CONFIG_FILES([Makefile])
  AC_OUTPUT
 diff --git a/gst-decoder.c b/gst-decoder.c
-index 2d6d581..b84980e 100644
+index 5431014..0aa7a55 100644
 --- a/gst-decoder.c
 +++ b/gst-decoder.c
 @@ -332,6 +332,7 @@ set_last_frame(struct decoder *dec, EGLImage frame, GstSample *samp)
@@ -96,10 +97,10 @@ index 2d6d581..b84980e 100644
  	if (dmabuf_fd < 0) {
  		GST_ERROR("could not obtain DMABUF FD");
 diff --git a/kmscube.c b/kmscube.c
-index 3a2c4dd..276dc55 100644
+index 81803be..e93da67 100644
 --- a/kmscube.c
 +++ b/kmscube.c
-@@ -148,7 +148,11 @@ int main(int argc, char *argv[])
+@@ -166,7 +166,11 @@ int main(int argc, char *argv[])
  	else if (mode == VIDEO)
  		egl = init_cube_video(gbm, video, samples);
  	else
@@ -112,5 +113,5 @@ index 3a2c4dd..276dc55 100644
  	if (!egl) {
  		printf("failed to initialize EGL\n");
 -- 
-2.7.4
+2.22.0
 
diff --git a/meta/recipes-graphics/kmscube/kmscube_git.bb b/meta/recipes-graphics/kmscube/kmscube_git.bb
index 513148f9e0..fd90d20172 100644
--- a/meta/recipes-graphics/kmscube/kmscube_git.bb
+++ b/meta/recipes-graphics/kmscube/kmscube_git.bb
@@ -6,8 +6,8 @@ DEPENDS = "virtual/libgles2 virtual/egl libdrm"
 
 LIC_FILES_CHKSUM = "file://kmscube.c;beginline=1;endline=23;md5=8b309d4ee67b7315ff7381270dd631fb"
 
-SRCREV = "485b385e966a63cecc143765d112d267b299ffe5"
-SRC_URI = "git://anongit.freedesktop.org/mesa/kmscube;branch=master;protocol=git \
+SRCREV = "e888ea1d233b2639b87a68e099d18d4e919905df"
+SRC_URI = "git://gitlab.freedesktop.org/mesa/kmscube;branch=master;protocol=https \
     file://detect-gst_bo_map-_unmap-and-use-it-or-avoid-it.patch"
 UPSTREAM_CHECK_COMMITS = "1"
 
-- 
2.22.0


