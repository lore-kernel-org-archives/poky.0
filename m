Return-Path: <sebmennetrier@gmail.com>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D0DAE00746
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 06:28:36 -0800 (PST)
Received: by mail-wg0-f45.google.com with SMTP id n12so4169222wgh.0
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 06:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=p+FHwe27buUlnOGFw/DgP1WdlsBSSVc9om9h3noDWo8=;
	b=YF+OHzFeNkSL+yInoG/5Ueujbgbn8EUHLwE2Wth84aX/b3R2Xsr7WvCSQ8VvOCZGY9
	ATSTKN8hs34OtxVuVJ/yocyIlN2PCwKfkS7lXwRppzRyXc3la8id3e8k32sBs/LB20xL
	68wDy2GIuzWMrMSpJoJmrFnAlv3bv2vbZSC1yNseiF33ecrflDOb3dAVoZtvHnYv8ffv
	W4H4mkGu9w8K5BDBflLcgid+JCQ6BYIH1pS+KgYKxhGTMElUnPaw7SEgpwzhOJz53ZnF
	I252KufucB7AU5yMJ/EkfOsLGXvZdba8H6RyQ00C7rdAzTnvWdUItSySTHQ8RSwPx6cr
	SdHg==
X-Received: by 10.194.142.170 with SMTP id rx10mr22258108wjb.13.1392042514567; 
	Mon, 10 Feb 2014 06:28:34 -0800 (PST)
Received: from smennetrier-desktop.mpl.mstarsemi.fr
	(connected-labs-gw1.ter2.neodc.mpl.cust.as8218.eu. [94.103.137.126])
	by mx.google.com with ESMTPSA id
	xt1sm35823259wjb.17.2014.02.10.06.28.33 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 10 Feb 2014 06:28:33 -0800 (PST)
Sender: Sebastien MENNETRIER <sebmennetrier@gmail.com>
From: =?UTF-8?q?S=C3=A9bastien=20Mennetrier?= <s.mennetrier@innotis.org>
To: poky@yoctoproject.org
Date: Mon, 10 Feb 2014 15:28:15 +0100
Message-Id: <1392042495-13533-1-git-send-email-s.mennetrier@innotis.org>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Subject: [PATCH][for-dora] Fix issue to build pulseaudio without x11
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
X-List-Received-Date: Mon, 10 Feb 2014 14:28:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This modification come from master branche

If x11 is not enabled, the pulseaudio-module-console-kit
couldn't be built.

Signed-off-by: Sébastien Mennetrier <s.mennetrier@innotis.org>
---
 meta/recipes-multimedia/pulseaudio/pulseaudio.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio.inc b/meta/recipes-multimedia/pulseaudio/pulseaudio.inc
index b7a6eba..27879ce 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio.inc
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio.inc
@@ -74,7 +74,7 @@ USERADD_PARAM_pulseaudio-server = "--system --home /var/run/pulse \
 # adding the console-kit module to an image, we also get the necessary
 # consolekit package produced.
 PACKAGES =+ "libpulsecore libpulsecommon libpulse libpulse-simple libpulse-mainloop-glib \
-             pulseaudio-server pulseaudio-misc pulseaudio-module-console-kit"
+             pulseaudio-server pulseaudio-misc ${@base_contains('PACKAGECONFIG', 'x11', 'pulseaudio-module-console-kit', '', d)}"
 
 #upgrade path:
 RREPLACES_pulseaudio-server = "libpulse-bin libpulse-conf"
-- 
1.8.1.2


