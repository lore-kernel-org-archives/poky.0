Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7ACF34C803A5
	for <poky@pokylinux.org>; Mon, 29 Nov 2010 21:36:57 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Nov 2010 19:36:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,278,1288594800"; d="scan'208";a="682213672"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 29 Nov 2010 19:36:56 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 30 Nov 2010 11:35:15 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 30 Nov 2010 11:35:14 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, "poky@pokylinux.org"
	<poky@pokylinux.org>
Date: Tue, 30 Nov 2010 11:35:12 +0800
Thread-Topic: [poky] [PATCH 1/3] imagetest-qemu: Allow the task to run after
	any rootfs is created and also standalone
Thread-Index: AcuPxZSEwuR4qKAhTTCcGZ1kgV0XywAd4ndA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A303B29EA@shsmsx501.ccr.corp.intel.com>
References: <cover.1291035335.git.rpurdie@linux.intel.com>
	<a3ec07a2417519432c4dc9d64f6f1b0df1169fa4.1291035335.git.rpurdie@linux.intel.com>
In-Reply-To: <a3ec07a2417519432c4dc9d64f6f1b0df1169fa4.1291035335.git.rpurdie@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] imagetest-qemu: Allow the task to run after any rootfs is created and also standalone
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
X-List-Received-Date: Tue, 30 Nov 2010 03:36:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> One bitbake invocation can cause multiple images to be generated. We
> should test each one and we cna do this by running after the rootfs
> task. Running the tests standlone is also still possible with a new separ=
ate standlone task.
>=20
> Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
> ---
>  meta/classes/imagetest-qemu.bbclass |   19 ++++++++++++++-----
>  1 files changed, 14 insertions(+), 5 deletions(-)
> diff --git a/meta/classes/imagetest-qemu.bbclass
> b/meta/classes/imagetest-qemu.bbclass index 07bdf01..3c1586e 100644 ---
> a/meta/classes/imagetest-qemu.bbclass +++
> b/meta/classes/imagetest-qemu.bbclass @@ -1,8 +1,3 @@ -addtask
> qemuimagetest before do_build -# after do_rootfs
> -do_qemuimagetest[nostamp] =3D "1" -do_qemuimagetest[depends] +=3D
> "qemu-native:do_populate_sysroot" -
>  # Test related variables
>  # By default, TEST_DIR is created under WORKDIR  TEST_DIR ?=3D
> "${WORKDIR}/qemuimagetest"
> @@ -12,6 +7,20 @@ TEST_TMP ?=3D "${TEST_DIR}/tmp"
>  TEST_SCEN ?=3D "sanity"
> =20
>  python do_qemuimagetest() {
> +    qemuimagetest_main(d) +} +addtask qemuimagetest before do_build
> after do_rootfs +do_qemuimagetest[nostamp] =3D "1"
> +do_qemuimagetest[depends] +=3D "qemu-native:do_populate_sysroot" +
> +python do_qemuimagetest_standalone() { +    qemuimagetest_main(d) +}
> +addtask qemuimagetest_standalone +do_qemuimagetest_standalone[nostamp]
> =3D "1" +do_qemuimagetest_standalone[depends] +=3D
> "qemu-native:do_populate_sysroot" + +python qemuimagetest_main(d) {
>      import sys
>      import re
>      import os

Hi Richard,
Seems we should use keyword "def" qemuimagetest_main definition. After this=
 modification, it can work on my side.

diff --git a/meta/classes/imagetest-qemu.bbclass b/meta/classes/imagetest-q=
emu.bbclass
index 07bdf01..8751eeb 100644
--- a/meta/classes/imagetest-qemu.bbclass
+++ b/meta/classes/imagetest-qemu.bbclass
@@ -1,8 +1,3 @@
-addtask qemuimagetest before do_build
-# after do_rootfs
-do_qemuimagetest[nostamp] =3D "1"
-do_qemuimagetest[depends] +=3D "qemu-native:do_populate_sysroot"
-
 # Test related variables
 # By default, TEST_DIR is created under WORKDIR
 TEST_DIR ?=3D "${WORKDIR}/qemuimagetest"
@@ -11,7 +6,21 @@ TEST_RESULT ?=3D "${TEST_DIR}/result"
 TEST_TMP ?=3D "${TEST_DIR}/tmp"
 TEST_SCEN ?=3D "sanity"

-python do_qemuimagetest() {
+python do_qemuimagetest(){
+    qemuimagetest_main(d)
+}
+addtask qemuimagetest before do_build after do_rootfs
+do_qemuimagetest[nostamp] =3D "1"
+do_qemuimagetest[depends] +=3D "qemu-native:do_populate_sysroot"
+
+python do_qemuimagetest_standalone(){
+    qemuimagetest_main(d)
+}
+addtask qemuimagetest_standalone
+do_qemuimagetest_standalone[nostamp] =3D "1"
+do_qemuimagetest_standalone[depends] +=3D "qemu-native:do_populate_sysroot=
"
+
+def qemuimagetest_main(d):
     import sys
     import re
     import os
@@ -142,4 +151,3 @@ python do_qemuimagetest() {

     if ret !=3D 0:
         raise bb.build.FuncFailed("Some testcases fail, pls. check test re=
sult and test log!!!")
-}


Best Regards,
Jiajun



