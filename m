Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 680F8E00BEA; Mon, 29 Aug 2016 16:47:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2707BE009FA
	for <poky@yoctoproject.org>; Mon, 29 Aug 2016 16:47:23 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga105.fm.intel.com with ESMTP; 29 Aug 2016 16:47:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,253,1470726000"; 
   d="scan'208";a="2468311"
Received: from jzhang80-mac02.jf.intel.com ([10.24.2.112])
	by fmsmga006.fm.intel.com with ESMTP; 29 Aug 2016 16:47:23 -0700
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
In-Reply-To: <1472481219.5819.9.camel@linux.intel.com>
Date: Mon, 29 Aug 2016 16:47:23 -0700
Message-Id: <9FD07226-E04E-4009-8B56-E9DDD41AF712@linux.intel.com>
References: <1472247295-1155-1-git-send-email-jose.perez.carranza@intel.com>
	<1472481219.5819.9.camel@linux.intel.com>
To: benjamin.esquivel@linux.intel.com
X-Mailer: Apple Mail (2.3124)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] systemdboot: Add Test to check boot file is created correctly
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
X-List-Received-Date: Mon, 29 Aug 2016 23:47:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Jose,
I just found =E2=80=9CXXXX=E2=80=9D in this script which I guess it =
could be replaced with real TC number? Maybe you want to roll it in V2.

        """                                                              =
                                                                         =
                                                                         =
    =20
        Common setup for test cases: 1445, XXXX                          =
                                                                         =
                                                                         =
    =20
        """

        # Set EFI_PROVIDER =3D "gummiboot" and MACHINE =3D =
"genericx86-64" in conf/local.conf                                       =
                                                                         =
                      =20
        features =3D 'EFI_PROVIDER =3D "systemd-boot"\n'
        features +=3D 'MACHINE =3D "genericx86-64"'
        self.append_config(features)

    def _common_build(self):
        """                                                              =
                                                                         =
                                                                         =
    =20
        Common build for test cases: 1445 , XXXX

Thanks


> On Aug 29, 2016, at 7:33 AM, Benjamin Esquivel =
<benjamin.esquivel@linux.intel.com> wrote:
>=20
> Hello Jos=C3=A9, see my comments below.
>=20
> On Fri, 2016-08-26 at 16:34 -0500, Jose Perez Carranza wrote:
>>    Add Test case to verify Add test case to verify to Check
>>    if EFI bootloaderfor systemd boot is correctly build
> the two sentences above need revision, duplication and a space
> missing.
>>    inside of image.
>>=20
>>  [YOCTO #9903]
>>=20
>> Signed-off-by: Jose Perez Carranza <jose.perez.carranza@intel.com>
>> ---
>>  meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 51
>> +++++++++++++++++++++---
>>  1 file changed, 46 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py b/meta-
>> yocto-bsp/lib/oeqa/selftest/systemd_boot.py
>> index f7f74db..7f57f66 100644
>> --- a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
>> +++ b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
>> @@ -1,12 +1,11 @@
>>  from oeqa.selftest.base import oeSelfTest
>>  from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
>> -from oeqa.utils.decorators import testcase
>> +from oeqa.utils.decorators import testcase, skipUnlessPassed
>>  import re
>>  import os
>>  import sys
>>  import logging
>> =20
>> -
>>  class Systemdboot(oeSelfTest):
>> =20
>>      def _common_setup(self):
>> @@ -27,12 +26,12 @@ class Systemdboot(oeSelfTest):
>>          # Build a genericx86-64/efi gummiboot image
>>          bitbake('mtools-native core-image-minimal')
>> =20
>> -
>>      @testcase(1445)
>>      def test_efi_systemdboot_images_can_be_built(self):
>>          """
>>          Summary:     Check if systemd-boot images can be built
>> correctly
>> -        Expected:    1. File systemd-boot.efi should be available in
>> $poky/build/tmp/deploy/images/genericx86-64
>> +        Expected:    1. File systemd-boot.efi should be available
>> in:
>> +                         $poky/build/tmp/deploy/images/genericx86-64
>>                       2. 'systemd-boot" can be built correctly
>>          Product:     oe-core
>>          Author:      Jose Perez Carranza <jose.perez.carranza@intel.
>> com>
>> @@ -41,7 +40,8 @@ class Systemdboot(oeSelfTest):
>> =20
>>          # We'd use DEPLOY_DIR_IMAGE here, except that we need its
>> value for
>>          # MACHINE=3D"genericx86-64 which is probably not the one
>> configured
>> -        systemdbootfile =3D os.path.join(get_bb_var('DEPLOY_DIR'),
>> 'images', 'genericx86-64', 'systemd-bootx64.efi')
>> +        systemdbootfile =3D os.path.join(get_bb_var('DEPLOY_DIR'),
>> 'images', 'genericx86-64',
>> +                                       'systemd-bootx64.efi')
>> =20
>>          self._common_setup()
>> =20
>> @@ -54,3 +54,44 @@ class Systemdboot(oeSelfTest):
>> =20
>>          found =3D os.path.isfile(systemdbootfile)
>>          self.assertTrue(found, 'Systemd-Boot file %s not found' %
>> systemdbootfile)
>> +
>> +
>> +    @testcase(1528)
>> +    @skipUnlessPassed('test_efi_systemdboot_images_can_be_built')
>> +    def test_efi_systemdboot_is_built_correctly(self):
> Names as long as these impose some readability issues when listing the
> tests. Please remind that the test name is composed by
> module.class.function and if 'function' is this long then it leaves
> little room for the rest of the fields in the full test name. It looks
> like that level of description you're putting in the name is at the
> first line of the docstring of the function. I suggest you pick a
> function name short, unique and symbolic.
>> +        """
>> +        Summary:      Check if EFI bootloader for systemd is
>> correctly build
>> +        Dependencies: Image was built correctly on testcase 1445
>> +        Steps:        1. Copy bootx64.efi file form the hddimg
>> created
>> +                         under build/tmp/deploy/images/genericx86-64
>> +                      2. Check bootx64.efi was copied form hddimg
>> +                      3. Verify the checksums from the copied and
>> previously
>> +                         created file are equal.
>> +        Expected :    Systemd-bootx64.efi and bootx64.efi should be
>> the same
>> +                      hence checksums should be equal.
>> +        Product:      oe-core
>> +        Author:       Jose Perez Carranza <jose.perez.carranza@intel
>> .com>
>> +        AutomatedBy:  Jose Perez Carranza <jose.perez.carranza@intel
>> .com>
>> +        """
>> +
>> +        systemdbootfile =3D os.path.join(get_bb_var('DEPLOY_DIR'),
>> 'images', 'genericx86-64',
>> +                                       'systemd-bootx64.efi')
>> +        systemdbootimage =3D os.path.join(get_bb_var('DEPLOY_DIR'),
>> 'images', 'genericx86-64',
>> +                                        'core-image-minimal-
>> genericx86-64.hddimg')
>> +        imagebootfile =3D os.path.join(get_bb_var('DEPLOY_DIR'),
>> 'images', 'genericx86-64',
>> +                                                'bootx64.efi')
>> +        mcopynative =3D
>> os.path.join(get_bb_var('STAGING_BINDIR_NATIVE'), 'mcopy')
>> +
>> +        #Step 1
>> +        runCmd('%s -i %s ::EFI/BOOT/bootx64.efi %s' % (mcopynative
>> ,systemdbootimage,
>> +               imagebootfile))
>> +
>> +        #Step 2
>> +        found =3D os.path.isfile(imagebootfile)
>> +        self.assertTrue(found, 'bootx64.efi file %s was not copied
>> from image'
>> +                        % imagebootfile)
>> +
>> +        #Step 3
>> +        result =3D runCmd('md5sum %s %s' % (systemdbootfile,
>> imagebootfile))
>> +        self.assertEqual(result.output.split()[0],
>> result.output.split()[2],
>> +                         '%s was not correclty generated' %=20
> typo at 'correctly'
>> imagebootfile)
> also, if you have an option to get the command output and print it,
> would give the test runner more information.
>> --=20
>> 1.9.1
>>=20
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


