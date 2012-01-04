Return-Path: <walters@verbum.org>
Received: from out5.smtp.messagingengine.com (out5.smtp.messagingengine.com
	[66.111.4.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3CCEE0070D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 18:13:29 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute5.internal (compute5.nyi.mail.srv.osa [10.202.2.45])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 0935A20BB2
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 21:13:28 -0500 (EST)
Received: from frontend2.nyi.mail.srv.osa ([10.202.2.161])
	by compute5.internal (MEProxy); Tue, 03 Jan 2012 21:13:28 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:date:in-reply-to
	:references:content-type:message-id:mime-version; s=smtpout; bh=
	jLDSmfBMb09q3rRNPcS09xHKrr0=; b=feqpNnGa1k+oxRgnD26rsHpLLxggfWLM
	QlIHnD2om59wI7IXqmzg0nob3Hk7W9fThvlxOO0TY+2bXyx/8fAJTSoTWYgBjVkf
	tGYJuOMtBaBPhZO9zteIWvznFTi6ZRT0tftZcM+OluKI0Tl0q+lg1dyPYeZIfpw1
	Os+JPg4IZSw=
X-Sasl-enc: 7uQGhgBAjaK+0BezR1zDGHVxRGi8BTOSuIoShVnsEmtV 1325643207
Received: from [192.168.1.6] (c-65-96-60-117.hsd1.ct.comcast.net
	[65.96.60.117])
	by mail.messagingengine.com (Postfix) with ESMTPA id CADDC4824DA
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 21:13:27 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: poky@yoctoproject.org
Date: Tue, 03 Jan 2012 21:13:10 -0500
In-Reply-To: <1325642890.24646.8.camel@lenny>
References: <1325642890.24646.8.camel@lenny>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1325643190.24646.9.camel@lenny>
Mime-Version: 1.0
Subject: Re: -dev RPM packages Require:ing all of their bitbake build dependences
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
X-List-Received-Date: Wed, 04 Jan 2012 02:13:30 -0000
X-Groupsio-MsgNum: 7315
Content-Type: multipart/mixed; boundary="=-f7CkXqNYdWbDW0VpML0O"

--=-f7CkXqNYdWbDW0VpML0O
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

See example attached patch for pkg-config.

A question if we go down this path though - should e.g. the GCC plugin
header files by this rationale also be in the main package, and not
-dev?


--=-f7CkXqNYdWbDW0VpML0O
Content-Disposition: attachment; filename="0001-pkgconfig-Include-pkg.m4-in-main-package.patch"
Content-Type: text/x-patch; name="0001-pkgconfig-Include-pkg.m4-in-main-package.patch";
	charset="UTF-8"
Content-Transfer-Encoding: 7bit

From 1e94c2156c46eada940f7d50ae42cc0984e02237 Mon Sep 17 00:00:00 2001
From: Colin Walters <walters@verbum.org>
Date: Tue, 3 Jan 2012 21:11:03 -0500
Subject: [PATCH] pkgconfig: Include pkg.m4 in main package

Having it in -dev forces consumers to include the -dev package which
in turn pulls in libglib-2.0-dev which pulls in...

I can't imagine anyone wants /usr/bin/pkg-config without the .m4 file.
---
 meta/recipes-devtools/pkgconfig/pkgconfig.inc |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/pkgconfig/pkgconfig.inc b/meta/recipes-devtools/pkgconfig/pkgconfig.inc
index 641bfae..37f6a90 100644
--- a/meta/recipes-devtools/pkgconfig/pkgconfig.inc
+++ b/meta/recipes-devtools/pkgconfig/pkgconfig.inc
@@ -25,6 +25,10 @@ EXTRA_OECONF = "--with-installed-glib --with-installed-popt --disable-legacy-scr
 EXTRA_OECONF_virtclass-native = "--disable-legacy-scripts"
 EXTRA_OECONF_virtclass-nativesdk = "--disable-legacy-scripts"
 
+# Include the .m4 in the main package - it's silly to have pkg-config without also
+# being able to run aclocal and use the PKG_CHECK_MODULES() macro.
+FILES_${PN} += "${datadir}/aclocal/pkg.m4"
+
 acpaths = "-I ."
 do_configure_prepend () {
 	install -m 0644 ${WORKDIR}/glibconfig-sysdefs.h glib-1.2.10/
-- 
1.7.6.4


--=-f7CkXqNYdWbDW0VpML0O--
