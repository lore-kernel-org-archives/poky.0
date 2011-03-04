Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 390004C80A73
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 05:13:38 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p24BDbdg019465
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 4 Mar 2011 03:13:37 -0800 (PST)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 4 Mar 2011 03:13:37 -0800
Message-ID: <eeb64b9d82699a8c5136196d542af5e6f5b5fc24.1299236942.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1299236942.git.xiaofeng.yan@windriver.com>
References: <cover.1299236942.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 4 Mar 2011 19:04:16 +0800
Date: Fri, 4 Mar 2011 19:12:43 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] LSB_Setup.sh:Install LSB Test Suite and set lsb test environment
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
X-List-Received-Date: Fri, 04 Mar 2011 11:13:38 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Perfect some funtions for lsb test in yocto 1.0

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh |   20 ++++++++++----------
 1 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
index 4bf7686..78c33b3 100644
--- a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
+++ b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
@@ -21,7 +21,7 @@
 if [ ! -f /opt/lsb/test/manager/bin/dist-checker-start.pl ]
 then
         if [ -d /lsb-dist-testkit ];then
-                cd /lsb-dist-testkit && sh install.sh
+                cd /lsb-dist-testkit && sh install.sh && cd ../lsb-Application && rpm -ivh *.rpm --nodeps --force
         else 
                 echo "Please install the realted LSB Packages"
                 exit 1
@@ -42,7 +42,7 @@ yes|y)
         if [ $? -eq 0 ] || [ $? -eq 6 ]
         then
                 echo "Success to delete user tester"
-        else
+       else
                 echo "Fail to delete user tester"
         fi
         ;;
@@ -177,21 +177,21 @@ ping -c 5 ftp.linux-foundation.org
 check
 
 #Step 7
-if [ -f /lib/modules/*-wr-standard/kernel/drivers/block/loop.ko ];then
-	inmod /lib/modules/*-wr-standard/kernel/drivers/block/loop.ko
+insmod /lib/modules/2.6.37.2-yocto-standard\+/kernel/drivers/block/loop.ko
+if [ $? != 0 ];then
+	echo "Please insmod loop.ko  manully"
 fi
-
 #Step 8
 echo ""
 if [ -f /opt/lsb/test/manager/bin/dist-checker-start.pl ];then
-        ./opt/lsb/test/manager/bin/dist-checker-start.pl
+        /opt/lsb/test/manager/bin/dist-checker-start.pl
 fi
 
-
 #Step 9 get ip address for target platform
-addr=`ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}'|sed s/[[:space:]]Bcast//g`
-echo -e "you should input ${addr}:8888 on your browse"
-#Step 8
+addr=`ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}'|sed s/[[:space:]][[:space:]]Bcast//g`
+echo -e "you should input ${addr}:8888 on your browser"
+
+#Step 10
 echo "Done!!"
 
 ###End
-- 
1.7.0.4


