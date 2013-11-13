Return-Path: <bastien.jauny@gmail.com>
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15758E0178C
	for <poky@yoctoproject.org>; Wed, 13 Nov 2013 09:57:14 -0800 (PST)
Received: by mail-ee0-f54.google.com with SMTP id e51so145718eek.13
	for <poky@yoctoproject.org>; Wed, 13 Nov 2013 09:57:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:date:content-type:mime-version;
	bh=jqMcmHes1U3aUGANXpE1u3Fko4bMB1nmyNZISnaEnNA=;
	b=OY2qjowmP9XqB3RyHM+YEuZeMCWhRZQa95TQFQfsqOA3B+rIsyM2oVhlpLZyTTVf9J
	AH5yxT+2hhfN/0gTK2VGxXuUQ8jDv36ckH60cOO+gc7TWf0KWqA5B1IpqGiUEZAHDncQ
	2upXAY+PIBC1NgKbpmwC33/Zigh9cPSbwTJJmqBwDGmSNI0mqPrHo9Il/dh/2761Z/Yk
	9whsqdYreDamoWuKqI67izbFPQ2bOQsfJ8Dw3TOl/vvprH8oy+FE5/UhhJ8cLFiKHHlC
	vcltHGhDGuUZ6dx5uZasVC3YEbVe60n1IHaAocgD5ZnHb0WV3lx7+2E49AJwrMmlK1xl
	FP+w==
X-Received: by 10.15.21.1 with SMTP id c1mr387063eeu.114.1384365433535;
	Wed, 13 Nov 2013 09:57:13 -0800 (PST)
Received: from [192.168.0.11] (85-171-63-10.rev.numericable.fr. [85.171.63.10])
	by mx.google.com with ESMTPSA id 8sm90660757eem.15.2013.11.13.09.57.12
	for <poky@yoctoproject.org>
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Wed, 13 Nov 2013 09:57:12 -0800 (PST)
Message-ID: <1384365430.4683.2.camel@rivendell>
From: Bastien JAUNY <bastien.jauny@gmail.com>
To: poky@yoctoproject.org
Date: Wed, 13 Nov 2013 18:57:10 +0100
X-Mailer: Evolution 3.4.4-3 
Mime-Version: 1.0
Subject: Patch kernel.py to prevent a crash from yocto-bsp
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
X-List-Received-Date: Wed, 13 Nov 2013 17:57:15 -0000
X-Groupsio-MsgNum: 9313
Content-Type: multipart/mixed; boundary="=-oNKCTsv0NLtJhoyAfxYs"

--=-oNKCTsv0NLtJhoyAfxYs
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello there,

I found that if the build environment is misconfigured (e.g. a bad path
for a layer in bblayers.conf) the yocto-bsp script crashes with a
standard python error, not very explicit.

First time I use mailing lists, I hope I did everything right! :)

--=-oNKCTsv0NLtJhoyAfxYs
Content-Disposition: attachment;
	filename*0=0001-Fix-an-error-message-in-python-bsp-script-preventing.pat;
	filename*1=ch
Content-Type: text/x-patch;
	name="0001-Fix-an-error-message-in-python-bsp-script-preventing.patch";
	charset="UTF-8"
Content-Transfer-Encoding: 7bit

From b962a11f17ab213ae311828a5d4bdd5a787fbb7e Mon Sep 17 00:00:00 2001
From: Bastien JAUNY <bastien.jauny@gmail.com>
Date: Wed, 13 Nov 2013 18:51:43 +0100
Subject: [PATCH] Fix an error message in python bsp script, preventing a
 crash with a python error in case of a misconfiguration.
 Signed-off-by: Bastien JAUNY <bastien.jauny@gmail.com>

---
 scripts/lib/bsp/kernel.py |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 5696ca7..ba68b60 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -62,7 +62,7 @@ def find_bblayers():
             break
 
     if not bblayers:
-        print "Couldn't find BBLAYERS in 'bitbake -e' output, exiting." % \
+        print "Couldn't find BBLAYERS in %s output, exiting." % \
             bitbake_env_cmd
         sys.exit(1)
 
-- 
1.7.10.4


--=-oNKCTsv0NLtJhoyAfxYs--
