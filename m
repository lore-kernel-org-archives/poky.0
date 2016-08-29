Return-Path: <benjamin.esquivel@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9EE7E00E9A; Mon, 29 Aug 2016 07:38:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF965E00B47
	for <poky@yoctoproject.org>; Mon, 29 Aug 2016 07:38:23 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga101.jf.intel.com with ESMTP; 29 Aug 2016 07:34:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,596,1464678000"; 
   d="scan'208";a="2300959"
Received: from besquive-mobl2.zpn.intel.com ([10.219.128.82])
	by orsmga005.jf.intel.com with ESMTP; 29 Aug 2016 07:34:24 -0700
Message-ID: <1472481219.5819.9.camel@linux.intel.com>
From: Benjamin Esquivel <benjamin.esquivel@linux.intel.com>
To: Jose Perez Carranza <jose.perez.carranza@intel.com>, poky@yoctoproject.org
In-Reply-To: <1472247295-1155-1-git-send-email-jose.perez.carranza@intel.com>
References: <1472247295-1155-1-git-send-email-jose.perez.carranza@intel.com>
Organization: Intel Corporation
Date: Mon, 29 Aug 2016 09:33:39 -0500
Mime-Version: 1.0
X-Mailer: Evolution 3.18.5.2 (3.18.5.2-1.fc23) 
Subject: Re: [PATCH] systemdboot: Add Test to check boot file is created correctly
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: benjamin.esquivel@linux.intel.com
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 29 Aug 2016 14:38:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hello José, see my comments below.

On Fri, 2016-08-26 at 16:34 -0500, Jose Perez Carranza wrote:
>    Add Test case to verify Add test case to verify to Check
>    if EFI bootloaderfor systemd boot is correctly build
the two sentences above need revision, duplication and a space
missing.
>    inside of image.
> 
>  [YOCTO #9903]
> 
> Signed-off-by: Jose Perez Carranza <jose.perez.carranza@intel.com>
> ---
>  meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 51
> +++++++++++++++++++++---
>  1 file changed, 46 insertions(+), 5 deletions(-)
> 
> diff --git a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py b/meta-
> yocto-bsp/lib/oeqa/selftest/systemd_boot.py
> index f7f74db..7f57f66 100644
> --- a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
> +++ b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
> @@ -1,12 +1,11 @@
>  from oeqa.selftest.base import oeSelfTest
>  from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
> -from oeqa.utils.decorators import testcase
> +from oeqa.utils.decorators import testcase, skipUnlessPassed
>  import re
>  import os
>  import sys
>  import logging
>  
> -
>  class Systemdboot(oeSelfTest):
>  
>      def _common_setup(self):
> @@ -27,12 +26,12 @@ class Systemdboot(oeSelfTest):
>          # Build a genericx86-64/efi gummiboot image
>          bitbake('mtools-native core-image-minimal')
>  
> -
>      @testcase(1445)
>      def test_efi_systemdboot_images_can_be_built(self):
>          """
>          Summary:     Check if systemd-boot images can be built
> correctly
> -        Expected:    1. File systemd-boot.efi should be available in
> $poky/build/tmp/deploy/images/genericx86-64
> +        Expected:    1. File systemd-boot.efi should be available
> in:
> +                         $poky/build/tmp/deploy/images/genericx86-64
>                       2. 'systemd-boot" can be built correctly
>          Product:     oe-core
>          Author:      Jose Perez Carranza <jose.perez.carranza@intel.
> com>
> @@ -41,7 +40,8 @@ class Systemdboot(oeSelfTest):
>  
>          # We'd use DEPLOY_DIR_IMAGE here, except that we need its
> value for
>          # MACHINE="genericx86-64 which is probably not the one
> configured
> -        systemdbootfile = os.path.join(get_bb_var('DEPLOY_DIR'),
> 'images', 'genericx86-64', 'systemd-bootx64.efi')
> +        systemdbootfile = os.path.join(get_bb_var('DEPLOY_DIR'),
> 'images', 'genericx86-64',
> +                                       'systemd-bootx64.efi')
>  
>          self._common_setup()
>  
> @@ -54,3 +54,44 @@ class Systemdboot(oeSelfTest):
>  
>          found = os.path.isfile(systemdbootfile)
>          self.assertTrue(found, 'Systemd-Boot file %s not found' %
> systemdbootfile)
> +
> +
> +    @testcase(1528)
> +    @skipUnlessPassed('test_efi_systemdboot_images_can_be_built')
> +    def test_efi_systemdboot_is_built_correctly(self):
Names as long as these impose some readability issues when listing the
tests. Please remind that the test name is composed by
module.class.function and if 'function' is this long then it leaves
little room for the rest of the fields in the full test name. It looks
like that level of description you're putting in the name is at the
first line of the docstring of the function. I suggest you pick a
function name short, unique and symbolic.
> +        """
> +        Summary:      Check if EFI bootloader for systemd is
> correctly build
> +        Dependencies: Image was built correctly on testcase 1445
> +        Steps:        1. Copy bootx64.efi file form the hddimg
> created
> +                         under build/tmp/deploy/images/genericx86-64
> +                      2. Check bootx64.efi was copied form hddimg
> +                      3. Verify the checksums from the copied and
> previously
> +                         created file are equal.
> +        Expected :    Systemd-bootx64.efi and bootx64.efi should be
> the same
> +                      hence checksums should be equal.
> +        Product:      oe-core
> +        Author:       Jose Perez Carranza <jose.perez.carranza@intel
> .com>
> +        AutomatedBy:  Jose Perez Carranza <jose.perez.carranza@intel
> .com>
> +        """
> +
> +        systemdbootfile = os.path.join(get_bb_var('DEPLOY_DIR'),
> 'images', 'genericx86-64',
> +                                       'systemd-bootx64.efi')
> +        systemdbootimage = os.path.join(get_bb_var('DEPLOY_DIR'),
> 'images', 'genericx86-64',
> +                                        'core-image-minimal-
> genericx86-64.hddimg')
> +        imagebootfile = os.path.join(get_bb_var('DEPLOY_DIR'),
> 'images', 'genericx86-64',
> +                                                'bootx64.efi')
> +        mcopynative =
> os.path.join(get_bb_var('STAGING_BINDIR_NATIVE'), 'mcopy')
> +
> +        #Step 1
> +        runCmd('%s -i %s ::EFI/BOOT/bootx64.efi %s' % (mcopynative
> ,systemdbootimage,
> +               imagebootfile))
> +
> +        #Step 2
> +        found = os.path.isfile(imagebootfile)
> +        self.assertTrue(found, 'bootx64.efi file %s was not copied
> from image'
> +                        % imagebootfile)
> +
> +        #Step 3
> +        result = runCmd('md5sum %s %s' % (systemdbootfile,
> imagebootfile))
> +        self.assertEqual(result.output.split()[0],
> result.output.split()[2],
> +                         '%s was not correclty generated' % 
typo at 'correctly'
> imagebootfile)
also, if you have an option to get the command output and print it,
would give the test runner more information.
> -- 
> 1.9.1
> 

