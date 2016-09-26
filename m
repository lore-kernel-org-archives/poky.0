Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71162E00924; Mon, 26 Sep 2016 13:56:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22210E00905
	for <poky@yoctoproject.org>; Mon, 26 Sep 2016 13:56:46 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 26 Sep 2016 13:56:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,401,1470726000"; d="scan'208";a="766180774"
Received: from jzhang80-mac02.jf.intel.com ([10.24.3.112])
	by FMSMGA003.fm.intel.com with ESMTP; 26 Sep 2016 13:56:46 -0700
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
In-Reply-To: <1472588254-24319-1-git-send-email-jose.perez.carranza@intel.com>
Date: Mon, 26 Sep 2016 13:56:45 -0700
Message-Id: <27A5025F-04CB-415C-9F8A-9FEF7D74580E@linux.intel.com>
References: <1472586734.4293.2.camel@linux.intel.com>
	<1472588254-24319-1-git-send-email-jose.perez.carranza@intel.com>
To: Jose Perez Carranza <jose.perez.carranza@intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v3] systemdboot: Add Test to check boot file is created correctly
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
X-List-Received-Date: Mon, 26 Sep 2016 20:56:50 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Jose,
Could you confirm this is merged in poky? I don=E2=80=99t see it today.

Thanks

> On Aug 30, 2016, at 1:17 PM, Jose Perez Carranza =
<jose.perez.carranza@intel.com> wrote:
>=20
>   Add Test case to verify if EFI bootloader for
>   systemd boot is correctly build inside of image.
>=20
> [YOCTO #9903]
>=20
> Signed-off-by: Jose Perez Carranza <jose.perez.carranza@intel.com>
> ---
> meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 64 =
++++++++++++++++++++----
> 1 file changed, 55 insertions(+), 9 deletions(-)
>=20
> diff --git a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py =
b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
> index f7f74db..9660c87 100644
> --- a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
> +++ b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
> @@ -1,20 +1,19 @@
> from oeqa.selftest.base import oeSelfTest
> from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
> -from oeqa.utils.decorators import testcase
> +from oeqa.utils.decorators import testcase, skipUnlessPassed
> import re
> import os
> import sys
> import logging
>=20
> -
> class Systemdboot(oeSelfTest):
>=20
>     def _common_setup(self):
>         """
> -        Common setup for test cases: 1445, XXXX
> +        Common setup for test cases: 1445, 1528
>         """
>=20
> -        # Set EFI_PROVIDER =3D "gummiboot" and MACHINE =3D =
"genericx86-64" in conf/local.conf
> +        # Set EFI_PROVIDER =3D "systemdboot" and MACHINE =3D =
"genericx86-64" in conf/local.conf
>         features =3D 'EFI_PROVIDER =3D "systemd-boot"\n'
>         features +=3D 'MACHINE =3D "genericx86-64"'
>         self.append_config(features)
> @@ -24,15 +23,15 @@ class Systemdboot(oeSelfTest):
>         Common build for test cases: 1445 , XXXX
>         """
>=20
> -        # Build a genericx86-64/efi gummiboot image
> +        # Build a genericx86-64/efi systemdboot image
>         bitbake('mtools-native core-image-minimal')
>=20
> -
>     @testcase(1445)
> -    def test_efi_systemdboot_images_can_be_built(self):
> +    def test_efi_image_build(self):
>         """
>         Summary:     Check if systemd-boot images can be built =
correctly
> -        Expected:    1. File systemd-boot.efi should be available in =
$poky/build/tmp/deploy/images/genericx86-64
> +        Expected:    1. File systemd-boot.efi should be available in:
> +                         $poky/build/tmp/deploy/images/genericx86-64
>                      2. 'systemd-boot" can be built correctly
>         Product:     oe-core
>         Author:      Jose Perez Carranza =
<jose.perez.carranza@intel.com>
> @@ -41,7 +40,8 @@ class Systemdboot(oeSelfTest):
>=20
>         # We'd use DEPLOY_DIR_IMAGE here, except that we need its =
value for
>         # MACHINE=3D"genericx86-64 which is probably not the one =
configured
> -        systemdbootfile =3D os.path.join(get_bb_var('DEPLOY_DIR'), =
'images', 'genericx86-64', 'systemd-bootx64.efi')
> +        systemdbootfile =3D os.path.join(get_bb_var('DEPLOY_DIR'), =
'images', 'genericx86-64',
> +                                       'systemd-bootx64.efi')
>=20
>         self._common_setup()
>=20
> @@ -54,3 +54,49 @@ class Systemdboot(oeSelfTest):
>=20
>         found =3D os.path.isfile(systemdbootfile)
>         self.assertTrue(found, 'Systemd-Boot file %s not found' % =
systemdbootfile)
> +
> +
> +    @testcase(1528)
> +    @skipUnlessPassed('test_efi_image_build')
> +    def test_image_efi_file(self):
> +        """
> +        Summary:      Check if EFI bootloader for systemd is =
correctly build
> +        Dependencies: Image was built correctly on test case 1445
> +        Steps:        1. Copy bootx64.efi file from the hddimg =
created
> +                         under build/tmp/deploy/images/genericx86-64
> +                      2. Check bootx64.efi was copied form hddimg
> +                      3. Verify the checksums from the copied and =
previously
> +                         created file are equal.
> +        Expected :    Systemd-bootx64.efi and bootx64.efi should be =
the same
> +                      hence checksums should be equal.
> +        Product:      oe-core
> +        Author:       Jose Perez Carranza =
<jose.perez.carranza@intel.com>
> +        AutomatedBy:  Jose Perez Carranza =
<jose.perez.carranza@intel.com>
> +        """
> +
> +        systemdbootfile =3D os.path.join(get_bb_var('DEPLOY_DIR'), =
'images', 'genericx86-64',
> +                                       'systemd-bootx64.efi')
> +        systemdbootimage =3D os.path.join(get_bb_var('DEPLOY_DIR'), =
'images', 'genericx86-64',
> +                                        =
'core-image-minimal-genericx86-64.hddimg')
> +        imagebootfile =3D os.path.join(get_bb_var('DEPLOY_DIR'), =
'images', 'genericx86-64',
> +                                                'bootx64.efi')
> +        mcopynative =3D =
os.path.join(get_bb_var('STAGING_BINDIR_NATIVE'), 'mcopy')
> +
> +        #Clean environment before start the test
> +        if os.path.isfile(imagebootfile):
> +            runCmd('rm -f %s' % imagebootfile)
> +
> +        #Step 1
> +        runCmd('%s -i %s ::EFI/BOOT/bootx64.efi %s' % (mcopynative =
,systemdbootimage,
> +               imagebootfile))
> +
> +        #Step 2
> +        found =3D os.path.isfile(imagebootfile)
> +        self.assertTrue(found, 'bootx64.efi file %s was not copied =
from image'
> +                        % imagebootfile)
> +
> +        #Step 3
> +        result =3D runCmd('md5sum %s %s' % (systemdbootfile, =
imagebootfile))
> +        self.assertEqual(result.output.split()[0], =
result.output.split()[2],
> +                         'checksums from %s and %s are different'
> +                         % (imagebootfile, systemdbootfile))
> --=20
> 1.9.1
>=20


