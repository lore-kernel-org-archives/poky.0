Return-Path: <halstead@happypunch.com>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D333EE011ED
	for <poky@yoctoproject.org>; Wed, 13 Feb 2013 08:31:18 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id kq12so791001pab.1
	for <poky@yoctoproject.org>; Wed, 13 Feb 2013 08:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=happypunch.com; s=google;
	h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=1mh/Dum1Ebfy/rAtwJLCAJmRu1UpqzA29Bljs0S9lTk=;
	b=AzZEG9SfghdW5Julnamg4VYAeoen2c6zKrUKHTw77gFAUyfNdV97y5Eul3PDTcKSeE
	4o2l8XdUhArjH7pLwN0Ag90tOnLJatdV0cnWdgRWjt24rTUaWhVSX0fLwwFV9LZ8+ckr
	mEY7yWp9Jupq4+Djg10XPl+0+ZATQxKQgXnBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=1mh/Dum1Ebfy/rAtwJLCAJmRu1UpqzA29Bljs0S9lTk=;
	b=mouU2Sos5b0mU/lEaIkWr4nWvQzj3Z/Vn7QwMWH69utQedkT9bWvi50ZSDLhwynfbV
	qof2IxCtnytY85fIk7MSXxspI75s8S9HFX3N/VM1dNgzPSYCtMmdm2owCfLV2xWIN410
	DP4g66b5mYOvoTgjg+CxK7Dz0/iBZkjtEz7f+h+R2TNIRrDmjobLrqSkn4E/vgdCKfwV
	/KtRNtYaw4vZk4/hrKenx+crigu0pXvfyGssPFgmbM+3cS9fHI6oOykxSNrSwuZ5EydC
	k2smwrU4vGCKk/TQlOZLYAzT5wXGlew2IsKzb7UKV6hmoF/8tNLjAdlP11oM3OxJEQlC
	RhMw==
X-Received: by 10.66.84.202 with SMTP id b10mr65527212paz.71.1360773078094;
	Wed, 13 Feb 2013 08:31:18 -0800 (PST)
Received: from localhost.localdomain
	(static-50-43-37-91.bvtn.or.frontiernet.net. [50.43.37.91])
	by mx.google.com with ESMTPS id s9sm1453740pav.7.2013.02.13.08.31.16
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 13 Feb 2013 08:31:17 -0800 (PST)
Sender: Michael Halstead <halstead@happypunch.com>
From: Michael Halstead <michael@yoctoproject.org>
To: poky@yoctoproject.org
Date: Wed, 13 Feb 2013 08:31:03 -0800
Message-Id: <1360773064-3671-1-git-send-email-michael@yoctoproject.org>
X-Mailer: git-send-email 1.7.9.5
X-Gm-Message-State: ALoCoQm3TbPoBoxX4ULZJCjX07lmQZBRPrNiIdQ5tO3KGeYDNwim605zHpbjiafRtZlEhCV9J+jR
Subject: [PATCH] Forcing ps to display unlimited column width allows the qemu IP address to be discovered during sanity testing when the command line is extremely long.
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
X-List-Received-Date: Wed, 13 Feb 2013 16:31:18 -0000

---

This seems to fix the sanity testing problem on AB05 which was recently updated
to OpenSUSE 12.2. I'm not sure what about qemu or process listing is different
on that distribution but this simpile fix seems to work and my help on other
distro's as well.

 scripts/qemuimage-testlib |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/qemuimage-testlib b/scripts/qemuimage-testlib
index 7bdaa4f..f8a5299 100755
--- a/scripts/qemuimage-testlib
+++ b/scripts/qemuimage-testlib
@@ -220,7 +220,7 @@ Test_Kill_Qemu()
 	declare local pid
 
 	# Check if $1 pid exists and is a qemu process
-	ps -fp $PID | grep -iq "qemu"
+	ps -wwfp $PID | grep -iq "qemu"
 
 	# Find all children pid of the pid $1
 	if [ $? -eq 0 ]; then
@@ -383,7 +383,7 @@ Test_Fetch_Target_IP()
 	declare local pid
 
 	# Check if $1 pid exists and contains ipaddr of target
-	ps -fp $opid | grep -oq "192\.168\.7\.[0-9]*::"
+	ps -wwfp $opid | grep -oq "192\.168\.7\.[0-9]*::"
 
 	# Find all children pid of the pid $1
 	# and check if they contain ipaddr of target
@@ -408,14 +408,14 @@ Test_Fetch_Target_IP()
 		while [ $i -ne 0 ]
 		do
 			i=$((i-1))
-			ps -fp ${pid[$i]} | grep -oq "192\.168\.7\.[0-9]*::"
+			ps -wwfp ${pid[$i]} | grep -oq "192\.168\.7\.[0-9]*::"
 			if [ $? -eq 0 ]; then
-				ip_addr=`ps -fp ${pid[$i]} | grep -o "192\.168\.7\.[0-9]*::" | awk -F":" '{print $1}'`
+				ip_addr=`ps -wwfp ${pid[$i]} | grep -o "192\.168\.7\.[0-9]*::" | awk -F":" '{print $1}'`
 			fi
 			sleep 1
 		done
 	else
-		ip_addr=`ps -fp $opid | grep -o "192\.168\.7\.[0-9]*::" | awk -F":" '{print $1}'`
+		ip_addr=`ps -wwfp $opid | grep -o "192\.168\.7\.[0-9]*::" | awk -F":" '{print $1}'`
 	fi
 
 	echo $ip_addr
-- 
1.7.9.5


