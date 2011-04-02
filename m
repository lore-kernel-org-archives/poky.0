Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7ABBC4C800AC
	for <poky@yoctoproject.org>; Sat,  2 Apr 2011 03:43:17 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p328hGeQ020604
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sat, 2 Apr 2011 01:43:16 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sat, 2 Apr 2011 01:43:15 -0700
Message-ID: <2f13241403454d83affaff72721a25ad876848bd.1301733116.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1301733116.git.xiaofeng.yan@windriver.com>
References: <cover.1301733116.git.xiaofeng.yan@windriver.com>
Old-Date: Sat, 2 Apr 2011 16:22:17 +0800
Date: Sat, 2 Apr 2011 16:35:14 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] LSB_Setup.sh: Add function to install all test packages
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
X-List-Received-Date: Sat, 02 Apr 2011 08:43:17 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Add function to  install all of lsb test suite packages instead of installing parts of test packages

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh |   50 ++++++++++++++---------
 1 files changed, 30 insertions(+), 20 deletions(-)

diff --git a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
index 78c33b3..7ce823e 100644
--- a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
+++ b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
@@ -17,11 +17,38 @@
 
 ##Prepare Steps
 #Steps 0; Confirm the installed LSB Packages
-
+ARCH=`uname -m`
+APP_FILE=`ls /lsb-Application/*.rpm`
 if [ ! -f /opt/lsb/test/manager/bin/dist-checker-start.pl ]
 then
         if [ -d /lsb-dist-testkit ];then
-                cd /lsb-dist-testkit && sh install.sh && cd ../lsb-Application && rpm -ivh *.rpm --nodeps --force
+		if [ ${ARCH} == i686 ];then
+                	echo "i486-suse" >> /etc/rpm/platform
+                	echo "i486-noarch" >> /etc/rpm/platform
+                	echo "i486-pc" >> /etc/rpm/platform
+                	echo "noarch-suse" >> /etc/rpm/platform
+		else
+                	echo "${ARCH}-suse" >> /etc/rpm/platform
+                	echo "${ARCH}-noarch" >> /etc/rpm/platform
+                	echo "${ARCH}-pc" >> /etc/rpm/platform
+                	echo "noarch-suse" >> /etc/rpm/platform
+                fi      
+                cd /lsb-dist-testkit && sh install.sh && cd ../lsb-Application
+                for i in ${APP_FILE}
+                do
+                    echo "$i" |grep -q "apache"
+                    if [ $? -eq 0 ]
+                    then
+                        rpm -ivh $i --noscripts --nodeps --force
+                    else
+                        rpm -ivh $i --nodeps --force
+                    fi
+                done
+                mkdir -p /var/opt/lsb/test/manager/packages/ftp.linuxfoundation.org/pub/lsb/snapshots/appbat/tests/
+                mkdir -p  /var/opt/lsb/test/manager/packages/ftp.linuxfoundation.org/pub/lsb/app-battery/tests/ 
+		cp expect-tests.tar  test1.pdf  test2.pdf /var/opt/lsb/test/manager/packages/ftp.linuxfoundation.org/pub/lsb/app-battery/tests/
+                cp raptor-tests.tar  tcl-tests.tar /var/opt/lsb//test/manager/packages/ftp.linuxfoundation.org/pub/lsb/snapshots/appbat/tests/
+		cd ..
         else 
                 echo "Please install the realted LSB Packages"
                 exit 1
@@ -33,10 +60,6 @@ id tester
 if [ $? -eq  0 ]
 then 
         echo "User tester was existed"
-        echo -n "Deleted tester(yes/no):"
-        read INPUT
-case $INPUT in 
-yes|y)
         sleep 1
         userdel -rf tester
         if [ $? -eq 0 ] || [ $? -eq 6 ]
@@ -45,19 +68,6 @@ yes|y)
        else
                 echo "Fail to delete user tester"
         fi
-        ;;
-no|n)
-        sleep 1
-        echo "There must be deleted User test before ran LSB4 on Target"
-        echo ""
-        exit 1
-        ;;
-*)
-        sleep 1
-        echo "Input ERROR, pls reinput that your expected"
-        echo ""
-        exit 1
-esac
 else 
         echo "There was not User tester"
 fi
@@ -177,7 +187,7 @@ ping -c 5 ftp.linux-foundation.org
 check
 
 #Step 7
-insmod /lib/modules/2.6.37.2-yocto-standard\+/kernel/drivers/block/loop.ko
+insmod /lib/modules/2.6.*/kernel/drivers/block/loop.ko
 if [ $? != 0 ];then
 	echo "Please insmod loop.ko  manully"
 fi
-- 
1.7.0.4


