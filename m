Return-Path: <xudong.hao@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 174D24C8009D
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 09:15:34 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Mar 2011 07:15:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,199,1299484800"; d="scan'208";a="404109670"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 17 Mar 2011 07:15:32 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 17 Mar 2011 22:15:30 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 17 Mar 2011 22:15:30 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 17 Mar 2011 22:14:47 +0800
From: "Hao, Xudong" <xudong.hao@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 17 Mar 2011 22:14:46 +0800
Thread-Topic: [poky] creat-lsb-image: LSB test issue on x86_64
Thread-Index: AcvkratRMe6EUFKARdamc206eZuICg==
Message-ID: <BC00F5384FCFC9499AF06F92E8B78A9E1FD9975DC1@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: creat-lsb-image: LSB test issue on x86_64
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
X-List-Received-Date: Thu, 17 Mar 2011 14:15:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I used the latest poky tree with current master: 35260008f4094100ba337776a2=
ba5a2cece0d2c7.
When I do LSB test on x86_64 arch, both on qemu with lsb image or BSP image=
, according to creat-lsb-image script, it would download ia64 rpm packages =
instead of x86_64 packages, even if we installed "ia64" rpm balls to x86_64=
 system with some work around, the lsb test will fail.=20

Then I looked into the package source and find x86_64 packages.

Xiaofeng, how about this changes:

diff --git a/scripts/creat-lsb-image b/scripts/creat-lsb-image
index 3802e2f..3f295ba 100755
--- a/scripts/creat-lsb-image
+++ b/scripts/creat-lsb-image
@@ -75,8 +75,8 @@ if [ ${ARCH} =3D=3D x86 ];then
    T_ARCH=3Dia32
     P_ARCH=3Di486
 elif [ ${ARCH} =3D=3D x86_64 ];then
-   T_ARCH=3Dia64
-    P_ARCH=3Dia64
+   T_ARCH=3Damd64
+    P_ARCH=3Dx86_64
 else
    P_ARCH=3Dppc
    T_ARCH=3D${ARCH}
@@ -92,7 +92,11 @@ mkdir -p lsb-test-suite-${MACHINE_ARCH}
 if [ -d lsb-test-suite-${MACHINE_ARCH} ];then
    cd lsb-test-suite-${MACHINE_ARCH}
    ECHO "Download lsb test suite, it could take some time..."
-    wget -c -t 5  http://ftp.linuxfoundation.org/pub/lsb/bundles/released-=
4.1.0/dist-testkit/lsb-dist-testkit-4.1.0-5.${T_ARCH}.tar.gz
+   if [ ${ARCH} =3D=3D x86_64 ];then
+       wget -c -t 5  http://ftp.linuxfoundation.org/pub/lsb/bundles/releas=
ed-4.1.0/dist-testkit/lsb-dist-testkit-4.1.0-5.${P_ARCH}.tar.gz
+   else
+       wget -c -t 5  http://ftp.linuxfoundation.org/pub/lsb/bundles/releas=
ed-4.1.0/dist-testkit/lsb-dist-testkit-4.1.0-5.${T_ARCH}.tar.gz
+   fi
     exit_check
    ECHO "Download lsb-xdg-utils-4.0.0-2.${P_ARCH}.rpm"
    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/lsbdev/released-4.=
1.0/binary/${T_ARCH}/lsb-xdg-utils-4.0.0-2.${P_ARCH}.rpm


Best Regards,
Xudong Hao



