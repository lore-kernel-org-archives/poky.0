Return-Path: <philippe.coval@open.eurogiciel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A20C9E009A5; Wed, 29 Apr 2015 02:08:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9E4AE00932
	for <poky@yoctoproject.org>; Wed, 29 Apr 2015 02:08:44 -0700 (PDT)
Received: by wgso17 with SMTP id o17so20963891wgs.1
	for <poky@yoctoproject.org>; Wed, 29 Apr 2015 02:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=open.eurogiciel.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=KZeh+mS7eEwWM7ZRUxPfwx1vdm4r+QkeS7VWt/0k6ik=;
	b=u0dZB2gs6JMlV++c/fytacTMJbYMpbEa/z0kcqEXncq3KekpffJObGqY/3v9iSpBBn
	Gvq+x9Y+euJVxlgLh9lNa266MS3+m7DWGLpWo9cUCeErSHhMuw0Be5yoZb1esJmRlDIB
	3NIIlkcd3OkARB0qyWSacr4GoebJ2ZG0+xoHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=KZeh+mS7eEwWM7ZRUxPfwx1vdm4r+QkeS7VWt/0k6ik=;
	b=cFwELrnbgh3dBqS+FWAnsNxhXFARKIK9AipuK+TZeeLDI1E27DrpgR92fAtbTNUln/
	k7rLlPgQGK/icC5kejot3UZ6g5CvqfzaTOA2BSmq3+wVzqxr+GLOCbAuWjJvN/3abZry
	N9I6yJmUwfypmXzTsYVWNku2nznUH0VxNh5lg9+QrnjKozR4bikeJQjsd4EGydbVljGX
	I4vVEPsKTUO7dO+cZg/uU1Pa1d8C0BYEU3/EwXjPW0OFqGbbX2QaaItb94bleyRcgu8x
	EIeA4B0jGTTfuKbwbYAAifjIC9AcgihlmBNvoGOPXZ4ltMFe98Ce5lYPnHfLFyJzLM0U
	IFrA==
X-Gm-Message-State: ALoCoQknHJ9r2VRiAQ++7TvMsO3TQzy4lWZdPROlJ1c+drCUBolC0Iu+bZ/5A6iSczcLUZHog+Dk
X-Received: by 10.194.77.7 with SMTP id o7mr39529035wjw.95.1430298523462;
	Wed, 29 Apr 2015 02:08:43 -0700 (PDT)
Received: from pcl (130.167.26.109.rev.sfr.net. [109.26.167.130])
	by mx.google.com with ESMTPSA id hu1sm20244047wib.6.2015.04.29.02.08.42
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 29 Apr 2015 02:08:42 -0700 (PDT)
Received: from pcoval by pcl with local (Exim 4.82)
	(envelope-from <philippe.coval@open.eurogiciel.org>)
	id 1YnNyz-0006Sb-W1; Wed, 29 Apr 2015 11:08:41 +0200
From: Philippe Coval <philippe.coval@open.eurogiciel.org>
To: poky@yoctoproject.org
Date: Wed, 29 Apr 2015 11:08:36 +0200
Message-Id: <1430298516-16502-1-git-send-email-philippe.coval@open.eurogiciel.org>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] weston-init: support system's configuration file
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
X-List-Received-Date: Wed, 29 Apr 2015 09:08:45 -0000

Look for OPTARGS variable in /etc/default/weston
and set it as weston's service default options.

This can be used to force system's supported backend.

Change-Id: I0562c9326df5b46226093199873ef58d77aeae75
Signed-off-by: Philippe Coval <philippe.coval@open.eurogiciel.org>
---
 meta/recipes-graphics/wayland/weston-init/init | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-graphics/wayland/weston-init/init b/meta/recipes-graphics/wayland/weston-init/init
index 8e662e0..2e938f4 100644
--- a/meta/recipes-graphics/wayland/weston-init/init
+++ b/meta/recipes-graphics/wayland/weston-init/init
@@ -8,6 +8,10 @@
 # Default-Stop:      0 1 6
 ### END INIT INFO
 
+if test -e /etc/default/weston ; then
+        . /etc/default/weston
+fi
+
 killproc() {
         pid=`/bin/pidof $1`
         [ "$pid" != "" ] && kill $pid
@@ -34,7 +38,7 @@ case "$1" in
                 chmod 0700 $XDG_RUNTIME_DIR
         fi
 
-        openvt -s weston
+        openvt -s weston -- $OPTARGS
   ;;
 
   stop)
-- 
1.9.1


