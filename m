Return-Path: <walters@verbum.org>
Received: from out5.smtp.messagingengine.com (out5.smtp.messagingengine.com
	[66.111.4.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A14DDE0070D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 10:49:11 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute1.internal (compute1.nyi.mail.srv.osa [10.202.2.41])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 6BD3E20594
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 13:49:10 -0500 (EST)
Received: from frontend1.nyi.mail.srv.osa ([10.202.2.160])
	by compute1.internal (MEProxy); Tue, 03 Jan 2012 13:49:10 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:date:content-type
	:message-id:mime-version; s=smtpout; bh=NMF33iWJe9xrEjEjDZAyx3r8
	ChQ=; b=Qa4nUyDBY/lj2ZTz0CTMzi5XK69ZtF5UNNXpV6p3r37gDP+7kUzeQlEv
	dFUvnzLRQkKTHjTSqSp8WPsI8cBnIq34McV6cunVI24ZL4+SA7Zf7OK5caET2fWo
	IM36Nl9sJTAG5odkSSN9CeUtLDx+f/tW4j/KiWvq7I1TLbRy+f8=
X-Sasl-enc: nzPpHGH2wOMT3jnOnZdffmNY0rX/+kDmbwPibsxqynPz 1325616550
Received: from [192.168.0.148] (c-76-24-220-150.hsd1.ma.comcast.net
	[76.24.220.150])
	by mail.messagingengine.com (Postfix) with ESMTPA id 26C078E009D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 13:49:10 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: poky <poky@yoctoproject.org>
Date: Tue, 03 Jan 2012 13:48:53 -0500
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1325616533.23339.10.camel@lenny>
Mime-Version: 1.0
Subject: [PATCH] rpm: Move postinsts to /var
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
X-List-Received-Date: Tue, 03 Jan 2012 18:49:12 -0000
X-Groupsio-MsgNum: 7306
Content-Type: multipart/mixed; boundary="=-jgHOaknYBo5zSlR2Vysv"

--=-jgHOaknYBo5zSlR2Vysv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

My OS has read-only bind mounts over most directories (including
/etc), with the exception of /var.  Since these scripts need to
be run once and then deleted, it's better for me if these are in
/var, and won't hurt anyone else for them to be there.



--=-jgHOaknYBo5zSlR2Vysv
Content-Disposition: attachment; filename="0001-rpm-Move-postinsts-to-var.patch"
Content-Type: text/x-patch; name="0001-rpm-Move-postinsts-to-var.patch"; charset="UTF-8"
Content-Transfer-Encoding: 7bit

From 529d2e5e193c82ddb1e4bee57c650b07cf844ce5 Mon Sep 17 00:00:00 2001
From: Colin Walters <walters@verbum.org>
Date: Tue, 3 Jan 2012 13:45:38 -0500
Subject: [PATCH] rpm: Move postinsts to /var

My OS has read-only bind mounts over most directories (including
/etc), with the exception of /var.  Since these scripts need to be run
once and then deleted, it's better for me if these are in /var, and
won't hurt anyone else for them to be there.

Signed-off-by: Colin Walters <walters@verbum.org>
---
 meta/classes/package_rpm.bbclass |   12 ++++++------
 meta/classes/rootfs_rpm.bbclass  |   19 +++++++++++--------
 2 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index 2ace053..094571b 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -394,13 +394,13 @@ export OPKG_OFFLINE_ROOT="\$D"
 
 \$2 \$1/\$3 \$4
 if [ \$? -ne 0 ]; then
-  mkdir -p \$1/etc/rpm-postinsts
+  mkdir -p \$1/var/rpm-postinsts
   num=100
-  while [ -e \$1/etc/rpm-postinsts/\${num} ]; do num=\$((num + 1)); done
-  echo "#!\$2" > \$1/etc/rpm-postinsts/\${num}
-  echo "# Arg: \$4" >> \$1/etc/rpm-postinsts/\${num}
-  cat \$1/\$3 >> \$1/etc/rpm-postinsts/\${num}
-  chmod +x \$1/etc/rpm-postinsts/\${num}
+  while [ -e \$1/var/rpm-postinsts/\${num} ]; do num=\$((num + 1)); done
+  echo "#!\$2" > \$1/var/rpm-postinsts/\${num}
+  echo "# Arg: \$4" >> \$1/var/rpm-postinsts/\${num}
+  cat \$1/\$3 >> \$1/var/rpm-postinsts/\${num}
+  chmod +x \$1/var/rpm-postinsts/\${num}
 fi
 EOF
 
diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index 6973008..3a583df 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -107,7 +107,7 @@ EOF
 	${ROOTFS_POSTINSTALL_COMMAND}
 
 	# Report delayed package scriptlets
-	for i in ${IMAGE_ROOTFS}/etc/rpm-postinsts/*; do
+	for i in ${IMAGE_ROOTFS}/var/rpm-postinsts/*; do
 		echo "Delayed package scriptlet: `head -n 3 $i | tail -n 1`"
 	done
 
@@ -116,15 +116,18 @@ EOF
 	i=\$i
 	cat > ${IMAGE_ROOTFS}${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure << EOF
 #!/bin/sh
-for i in /etc/rpm-postinsts/*; do
-	echo "Running postinst $i..."
-	if [ -f $i ] && $i; then
-		rm $i
-	else
-		echo "ERROR: postinst $i failed."
+for i in /var/rpm-postinsts/*; do
+	if [ -f $i ]; then
+		echo "Running postinst $i..."
+		if $i; then
+			rm -f $i
+		else
+			echo "ERROR: postinst $i failed."
+		fi
 	fi
 done
-rm -f ${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure
+# Don't show any errors if this fails, e.g. due to /etc being a readonly bind mount
+rm -f ${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure 2>/dev/null
 EOF
 	chmod 0755 ${IMAGE_ROOTFS}${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure
 
-- 
1.7.6.4


--=-jgHOaknYBo5zSlR2Vysv--
