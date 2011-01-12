Return-Path: <jiajun.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D765B4C80BEF
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 10:07:20 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jan 2011 08:07:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,313,1291622400"; d="scan'208";a="876856925"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2011 08:07:19 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 13 Jan 2011 00:07:19 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 13 Jan 2011 00:07:18 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>, "Garman, Scott A"
	<scott.a.garman@intel.com>
Date: Thu, 13 Jan 2011 00:07:15 +0800
Thread-Topic: current Autobuilder failure
Thread-Index: AcuyN3lCRjHSkc1kQrS8nXQyXD1Q+wAJ0ABQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31B6F338@shsmsx501.ccr.corp.intel.com>
References: <4D2D6E2D.4040604@intel.com>
In-Reply-To: <4D2D6E2D.4040604@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: current Autobuilder failure
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
X-List-Received-Date: Wed, 12 Jan 2011 16:07:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>
> Jiajun, Scott
>
> Seems like there is a sanity test failure mode that then cascades to
> the next build target or 2 or 3!  Can you look into this to determine
> what's happening and resolve it.
>

It's because the timeout value of each case is 360 seconds but now some qem=
u targets(qemuarm and qemupp) took more than 360s for first time booting. W=
e have a bug to track the booting slowness issue, http://bugzilla.pokylinux=
.org/show_bug.cgi?id=3D646. When a previous sanity test is still running, a=
 next build is started. That caused the series failure you saw.
Since only the first time booting takes much time, I wrote a patch to fix t=
he timeout issue on autobuilder. I move test case dmesg to the first one an=
d save the image used for dmesg test. The image then will be used in follow=
ing test cases, which can save a lot of time. And I also set timeout value =
to 200s, which means 10 cases will cost 200*10=3D2000s at maximum, while th=
e timeout value of each sanity test task for each target is 2400s. It can e=
nsure above failure not happen again I think.
Could you help to review following patch to check if it solves the issue co=
rrectly?


diff --git a/meta/classes/imagetest-qemu.bbclass b/meta/classes/imagetest-q=
emu.bbclass
index bcae10d..014fd16 100644
--- a/meta/classes/imagetest-qemu.bbclass
+++ b/meta/classes/imagetest-qemu.bbclass
@@ -5,6 +5,7 @@ TEST_LOG ?=3D "${LOG_DIR}/qemuimagetests"
 TEST_RESULT ?=3D "${TEST_DIR}/result"
 TEST_TMP ?=3D "${TEST_DIR}/tmp"
 TEST_SCEN ?=3D "sanity"
+SHARE_IMAGE ?=3D "1"

 python do_qemuimagetest() {
     qemuimagetest_main(d)
@@ -37,7 +38,7 @@ def qemuimagetest_main(d):
     """funtion to run each case under scenario"""
     def runtest(scen, case, fulltestpath):
         resultpath =3D bb.data.getVar('TEST_RESULT', d, 1)
-        testpath =3D bb.data.getVar('TEST_DIR', d, 1)
+        tmppath =3D bb.data.getVar('TEST_TMP', d, 1)

         """initialize log file for testcase"""
         logpath =3D bb.data.getVar('TEST_LOG', d, 1)
@@ -45,10 +46,9 @@ def qemuimagetest_main(d):
         caselog =3D os.path.join(logpath, "%s/log_%s.%s" % (scen, case, bb=
.data.getVar('DATETIME', d, 1)))
         os.system("touch %s" % caselog)

-
         """export TEST_TMP, TEST_RESULT, DEPLOY_DIR and QEMUARCH"""
         os.environ["PATH"] =3D bb.data.getVar("PATH", d, True)
-        os.environ["TEST_TMP"] =3D testpath
+        os.environ["TEST_TMP"] =3D tmppath
         os.environ["TEST_RESULT"] =3D resultpath
         os.environ["DEPLOY_DIR"] =3D bb.data.getVar("DEPLOY_DIR", d, True)
         os.environ["QEMUARCH"] =3D machine
@@ -56,6 +56,7 @@ def qemuimagetest_main(d):
         os.environ["DISPLAY"] =3D bb.data.getVar("DISPLAY", d, True)
         os.environ["POKYBASE"] =3D bb.data.getVar("POKYBASE", d, True)
         os.environ["TOPDIR"] =3D bb.data.getVar("TOPDIR", d, True)
+        os.environ["SHARE_IMAGE"] =3D bb.data.getVar("SHARE_IMAGE", d, Tru=
e)

         """run Test Case"""
         bb.note("Run %s test in scenario %s" % (case, scen))
@@ -97,6 +98,15 @@ def qemuimagetest_main(d):
                        list.append((item, casefile, fulltestcase))
         return list

+    """Clean tmp folder for testing"""
+    def clean_tmp():
+        tmppath =3D bb.data.getVar('TEST_TMP', d, 1)
+
+        if os.path.isdir(tmppath):
+            for f in os.listdir(tmppath):
+                tmpfile =3D os.path.join(tmppath, f)
+                os.remove(tmpfile)
+
     """check testcase folder and create test log folder"""
     testpath =3D bb.data.getVar('TEST_DIR', d, 1)
     bb.utils.mkdirhier(testpath)
@@ -150,6 +160,9 @@ def qemuimagetest_main(d):
             bb.note(line)
     f.close()

+    """Clean temp files for testing"""
+    clean_tmp()
+
     if ret !=3D 0:
         raise bb.build.FuncFailed("Some testcases fail, pls. check test re=
sult and test log!!!")

diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index 9c58e6b..33a50dc 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -156,6 +156,15 @@ ENABLE_BINARY_LOCALE_GENERATION =3D "1"
 # list them like following.
 #TEST_SCEN =3D "sanity bat sanity:boot"

+# Because of the QEMU booting slowness issue(see bug #646 and #618), we ne=
ed a
+# workaround for sanity test running on autobuilder without timeout proble=
m.
+# So we introduce variable SHARE_IMAGE here. It is by default set to 1. Po=
ky
+# will use the latest built-out image for first test case running. Then th=
e
+# image will be still used in following cases and be removed after testing=
 is end.
+# If it is set to 0, latest built-out image will be copied and tested for =
each
+# case, which will take much time.
+#SHARE_IMAGE =3D "1"
+
 # Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should yo=
u not
 # wish to perform the time-consuming step of generating all LIBC locales.
 # NOTE: If removing en_US.UTF-8 you will also need to uncomment, and set
diff --git a/scripts/qemuimage-testlib b/scripts/qemuimage-testlib
index e2c2d24..b9afcf5 100644
--- a/scripts/qemuimage-testlib
+++ b/scripts/qemuimage-testlib
@@ -383,9 +383,16 @@ Test_Create_Qemu()
        TEST_ROOTFS_IMAGE=3D"${TEST_TMP}/${QEMUTARGET}-${QEMUARCH}-test.ext=
3"

        CP=3D`which cp`
+
+       # When SHARE_IMAGE is set, we use the existing image under tmp fold=
er
        if [ -e "$TEST_ROOTFS_IMAGE" ]; then
+               if [ ${SHARE_IMAGE} -eq 1 ]; then
+                       ROOTFS_IMAGE=3D"$TEST_ROOTFS_IMAGE"
+                       TEST_ROOTFS_IMAGE=3D"${TEST_TMP}/${QEMUTARGET}-${QE=
MUARCH}-shared-test.ext3"
+               fi
                rm -rf $TEST_ROOTFS_IMAGE
        fi
+
        $CP $ROOTFS_IMAGE $TEST_ROOTFS_IMAGE

        if [ $? -ne 0 ]; then
diff --git a/scripts/qemuimage-tests/sanity/compiler b/scripts/qemuimage-te=
sts/sanity/compiler
index 0290540..d3168a9 100755
--- a/scripts/qemuimage-tests/sanity/compiler
+++ b/scripts/qemuimage-tests/sanity/compiler
@@ -11,7 +11,7 @@

 . $POKYBASE/scripts/qemuimage-testlib

-TIMEOUT=3D360
+TIMEOUT=3D200
 RET=3D1

 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/connman b/scripts/qemuimage-tes=
ts/sanity/connman
index 8c5b7c5..6e19b81 100755
--- a/scripts/qemuimage-tests/sanity/connman
+++ b/scripts/qemuimage-tests/sanity/connman
@@ -11,7 +11,7 @@

 . $POKYBASE/scripts/qemuimage-testlib

-TIMEOUT=3D360
+TIMEOUT=3D200
 RET=3D1

 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/dmesg b/scripts/qemuimage-tests=
/sanity/dmesg
index 36813dc..d98d7af 100755
--- a/scripts/qemuimage-tests/sanity/dmesg
+++ b/scripts/qemuimage-tests/sanity/dmesg
@@ -11,7 +11,7 @@

 . $POKYBASE/scripts/qemuimage-testlib

-TIMEOUT=3D360
+TIMEOUT=3D200
 RET=3D1

 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/rpm_query b/scripts/qemuimage-t=
ests/sanity/rpm_query
index 9962115..7663901 100755
--- a/scripts/qemuimage-tests/sanity/rpm_query
+++ b/scripts/qemuimage-tests/sanity/rpm_query
@@ -11,7 +11,7 @@

 . $POKYBASE/scripts/qemuimage-testlib

-TIMEOUT=3D360
+TIMEOUT=3D200
 RET=3D1

 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/scp b/scripts/qemuimage-tests/s=
anity/scp
index ce3489d..ca19857 100755
--- a/scripts/qemuimage-tests/sanity/scp
+++ b/scripts/qemuimage-tests/sanity/scp
@@ -11,7 +11,7 @@

 . $POKYBASE/scripts/qemuimage-testlib

-TIMEOUT=3D360
+TIMEOUT=3D200
 RET=3D1
 SPID=3D0
 i=3D0
diff --git a/scripts/qemuimage-tests/sanity/shutdown b/scripts/qemuimage-te=
sts/sanity/shutdown
index e36b4a9..54d7861 100755
--- a/scripts/qemuimage-tests/sanity/shutdown
+++ b/scripts/qemuimage-tests/sanity/shutdown
@@ -13,7 +13,7 @@

 . $POKYBASE/scripts/qemuimage-testlib

-TIMEOUT=3D360
+TIMEOUT=3D200
 RET=3D1
 i=3D0

diff --git a/scripts/qemuimage-tests/sanity/ssh b/scripts/qemuimage-tests/s=
anity/ssh
index 084530a..e0ade72 100755
--- a/scripts/qemuimage-tests/sanity/ssh
+++ b/scripts/qemuimage-tests/sanity/ssh
@@ -11,7 +11,7 @@

 . $POKYBASE/scripts/qemuimage-testlib

-TIMEOUT=3D360
+TIMEOUT=3D200
 RET=3D1

 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/zypper_help b/scripts/qemuimage=
-tests/sanity/zypper_help
index e052501..48e121c 100755
--- a/scripts/qemuimage-tests/sanity/zypper_help
+++ b/scripts/qemuimage-tests/sanity/zypper_help
@@ -11,7 +11,7 @@

 . $POKYBASE/scripts/qemuimage-testlib

-TIMEOUT=3D360
+TIMEOUT=3D200
 RET=3D1

 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/zypper_search b/scripts/qemuima=
ge-tests/sanity/zypper_search
index b756db8..9ae69eb 100755
--- a/scripts/qemuimage-tests/sanity/zypper_search
+++ b/scripts/qemuimage-tests/sanity/zypper_search
@@ -11,7 +11,7 @@

 . $POKYBASE/scripts/qemuimage-testlib

-TIMEOUT=3D360
+TIMEOUT=3D200
 RET=3D1

 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb b/scri=
pts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
index 32d2bd1..0eb1926 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato b/scr=
ipts/qemuimage-tests/scenario/qemuarm/poky-image-sato
index 7b949a8..b60a89a 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk b/scri=
pts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
index 3a8b129..53c9ad5 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb b/scr=
ipts/qemuimage-tests/scenario/qemumips/poky-image-lsb
index 32d2bd1..0eb1926 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato b/sc=
ripts/qemuimage-tests/scenario/qemumips/poky-image-sato
index 7b949a8..b60a89a 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk b/scr=
ipts/qemuimage-tests/scenario/qemumips/poky-image-sdk
index 3a8b129..53c9ad5 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb b/scri=
pts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
index 32d2bd1..0eb1926 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato b/scr=
ipts/qemuimage-tests/scenario/qemuppc/poky-image-sato
index 7b949a8..b60a89a 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk b/scri=
pts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
index 3a8b129..53c9ad5 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb b/s=
cripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
index 32d2bd1..0eb1926 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato b/=
scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
index 7b949a8..b60a89a 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk b/s=
cripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
index 3a8b129..53c9ad5 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb b/scri=
pts/qemuimage-tests/scenario/qemux86/poky-image-lsb
index 32d2bd1..0eb1926 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato b/scr=
ipts/qemuimage-tests/scenario/qemux86/poky-image-sato
index 7b949a8..b60a89a 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk b/scri=
pts/qemuimage-tests/scenario/qemux86/poky-image-sdk
index 3a8b129..53c9ad5 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query

> It seems to start with a timeout but then cause problems for the reset
> of the build of that arch.
>
> Thanks
>      Sau!

Best Regards,
Jiajun



