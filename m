Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 09C344C81110
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 20:35:45 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Dec 2010 18:35:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,217,1291622400"; d="scan'208";a="639599122"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 22 Dec 2010 18:35:45 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Wed, 22 Dec 2010 18:35:45 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Khem Raj <raj.khem@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Wed, 22 Dec 2010 18:35:44 -0800
Thread-Topic: [poky] [PATCH 0/3] gcc 4.5.4 + linaro update
Thread-Index: Acug8WmL8JRHpbGSRUq1fXu03vdhIgBV3mMg
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9405196F62@orsmsx504.amr.corp.intel.com>
References: <cover.1292920700.git.raj.khem@gmail.com>
In-Reply-To: <cover.1292920700.git.raj.khem@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/3] gcc 4.5.4 + linaro update
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
X-List-Received-Date: Thu, 23 Dec 2010 02:35:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Khem,
  Thanks for this gcc recipe set upgrade work. I am reviewing your commits.=
 I am not seeing major changes other than linaro patches.
I am also building gcc and sdk images with your commits. Poky-image-minimal=
 are building well here, same as your test results.

I am also building the poky-image-sdk images, and this is not finished yet,=
 but I observed one failure on mips here it is:

I have verified testing of the same branch without your commits, and it did=
 not cause this issue. Maybe you can try building this particular recipe on=
 your end for qemumips. I have not done complete review yet, as I am buried=
 in the perl upgrade now. I will take another better look and send you some=
 review comments soon.

| make[4]: Entering directory `/disk0/pokybuild/build1/tmp/work/mips-poky-l=
inux/eds-dbus-2.30+git0+7337d11aed576e7caaa12b4e881ad8d33668799f-r1/git/cam=
el'^M
|   CCLD   libcamel-provider-1.2.la^M
| mips-poky-linux-libtool: link: `libcamel_provider_1_2_la-camel-search-sql=
-sexp.lo' is not a valid libtool object^M
| make[4]: *** [libcamel-provider-1.2.la] Error 1^M
| make[4]: Leaving directory `/disk0/pokybuild/build1/tmp/work/mips-poky-li=
nux/eds-dbus-2.30+git0+7337d11aed576e7caaa12b4e881ad8d33668799f-r1/git/came=
l'^M
| make[3]: *** [all-recursive] Error 1^M
| make[3]: Leaving directory `/disk0/pokybuild/build1/tmp/work/mips-poky-li=
nux/eds-dbus-2.30+git0+7337d11aed576e7caaa12b4e881ad8d33668799f-r1/git/came=
l'^M
| make[2]: *** [all] Error 2^M
| make[2]: Leaving directory `/disk0/pokybuild/build1/tmp/work/mips-poky-li=
nux/eds-dbus-2.30+git0+7337d11aed576e7caaa12b4e881ad8d33668799f-r1/git/came=
l'^M
| make[1]: *** [all-recursive] Error 1^M
| make[1]: Leaving directory `/disk0/pokybuild/build1/tmp/work/mips-poky-li=
nux/eds-dbus-2.30+git0+7337d11aed576e7caaa12b4e881ad8d33668799f-r1/git'^M
| make: *** [all] Error 2^M
| FATAL: oe_runmake failed^M
| ERROR: Task failed: ('function do_compile failed', '/disk0/pokybuild/buil=
d1/tmp/work/mips-poky-linux/eds-dbus-2.30+git0+7337d11aed576e7caaa12b4e881a=
d8d33668799f-r1/temp/log.do_compile.16616')


Thanks,
Nitin

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Khem Raj
> Sent: Tuesday, December 21, 2010 1:27 AM
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 0/3] gcc 4.5.4 + linaro update
>
> Hello,
>
> This branch brings in gcc 4.5.2 and on top linaro's enhancements to gcc
> 4.5
> I have made sure that it builds poky-image-minimal for arm, ppc, x86,
> mips
> qemu and boots on all of them. It did not boot on ppc however poky-qemu
> did not boot any images for me even the ones built without these
> enhancements
> i.e. on vanilla yocto. So I used a qemu 0.12.5 built with OE
> which worked well. I need help in testing it out. So please test these
> patches rigourously
> with standard testing setup you use before you pull them
>
> If there are issues found let me know
>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: kraj/gcc-update
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-
> contrib/log/?h=3Dkraj/gcc-update
>
> Thanks,
>     Khem Raj <raj.khem@gmail.com>
> ---
>
>
> Khem Raj (3):
>   gcc: Upgrade recipes from 4.5.1 -> 4.5.2
>   poky-default.inc: Set GCCVERSION and SDKGCCVERSION to 4.5.2 now
>   gcc-4.5.2: Add Linaro enhancements
>
>  meta/conf/distro/include/poky-default.inc          |    4 +-
>  meta/recipes-devtools/gcc/gcc-4.5.1.inc            |   88 -
>  .../gcc/gcc-4.5.1/gcc-poison-dir-extend.patch      |   24 -
>  .../gcc/gcc-4.5.1/gcc-poison-parameters.patch      |   83 -
>  meta/recipes-devtools/gcc/gcc-4.5.2.inc            |  191 +
>  .../{gcc-4.5.1 =3D> gcc-4.5.2}/100-uclibc-conf.patch |    0
>  .../103-uclibc-conf-noupstream.patch               |    0
>  .../200-uclibc-locale.patch                        |    0
>  .../203-uclibc-locale-no__x.patch                  |    0
>  .../204-uclibc-locale-wchar_fix.patch              |    0
>  .../205-uclibc-locale-update.patch                 |    0
>  .../301-missing-execinfo_h.patch                   |    0
>  .../302-c99-snprintf.patch                         |    0
>  .../303-c99-complex-ugly-hack.patch                |    0
>  .../{gcc-4.5.1 =3D> gcc-4.5.2}/304-index_macro.patch |    0
>  .../305-libmudflap-susv3-legacy.patch              |    0
>  .../306-libstdc++-namespace.patch                  |    0
>  .../307-locale_facets.patch                        |    0
>  .../602-sdk-libstdc++-includes.patch               |    0
>  .../gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/64bithack.patch   |    0
>  .../{gcc-4.5.1 =3D> gcc-4.5.2}/740-sh-pr24836.patch  |    0
>  .../800-arm-bigendian.patch                        |    0
>  .../904-flatten-switch-stmt-00.patch               |    0
>  .../{gcc-4.5.1 =3D> gcc-4.5.2}/arm-bswapsi2.patch    |    0
>  .../{gcc-4.5.1 =3D> gcc-4.5.2}/arm-nolibfloat.patch  |    0
>  .../{gcc-4.5.1 =3D> gcc-4.5.2}/arm-softfloat.patch   |    0
>  .../arm-unbreak-eabi-armv4t.dpatch                 |    0
>  .../{gcc-4.5.1 =3D> gcc-4.5.2}/cache-amnesia.patch   |    0
>  .../disable_relax_pic_calls_flag.patch             |    0
>  .../fedora/gcc43-c++-builtin-redecl.patch          |    0
>  .../fedora/gcc43-cpp-pragma.patch                  |    0
>  .../fedora/gcc43-i386-libgomp.patch                |    0
>  .../fedora/gcc43-ia64-libunwind.patch              |    0
>  .../fedora/gcc43-java-debug-iface-type.patch       |    0
>  .../fedora/gcc43-java-nomulti.patch                |    0
>  .../fedora/gcc43-libgomp-speedup.patch             |    0
>  .../fedora/gcc43-ppc32-retaddr.patch               |    0
>  .../fedora/gcc43-pr27898.patch                     |    0
>  .../fedora/gcc43-pr32139.patch                     |    0
>  .../fedora/gcc43-pr33763.patch                     |    0
>  .../fedora/gcc43-rh251682.patch                    |    0
>  .../fedora/gcc43-rh330771.patch                    |    0
>  .../fedora/gcc43-rh341221.patch                    |    0
>  .../fortran-cross-compile-hack.patch               |    0
>  .../gcc-4.0.2-e300c2c3.patch                       |    0
>  .../gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch          |    0
>  .../gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch      |    0
>  .../gcc-arm-frename-registers.patch                |    0
>  .../gcc/gcc-4.5.2/gcc-arm-qihi-split-PR46883.patch |   52 +
>  .../gcc-flags-for-build.patch                      |    0
>  .../{gcc-4.5.1 =3D> gcc-4.5.2}/gcc-ice-hack.dpatch   |    0
>  .../gcc/gcc-4.5.2/gcc-poison-dir-extend.patch      |   26 +
>  .../gcc-4.5.2/gcc-scalar-widening-pr45847.patch    |   63 +
>  .../gcc-uclibc-locale-ctype_touplow_t.patch        |    0
>  .../libstdc++-emit-__cxa_end_cleanup-in-text.patch |    0
>  .../{gcc-4.5.1 =3D> gcc-4.5.2}/libstdc++-pic.dpatch  |    0
>  .../linaro/gcc-4.5-linaro-r99297.patch}            |  240 +-
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99298.patch   |26654
> ++++++++++++++++++++
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99299.patch   |   62 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99300.patch   | 3094 +++
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99301.patch   |  675 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99302.patch   |  244 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99303.patch   |  131 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99304.patch   |   81 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99305.patch   |   52 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99306.patch   | 1401 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99307.patch   |  138 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99308.patch   |  112 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99310.patch   |   36 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99312.patch   |  714 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99313.patch   |   37 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99314.patch   |  433 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99315.patch   |   57 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99316.patch   |   76 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99318.patch   |  118 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99319.patch   |  197 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99320.patch   |  138 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99321.patch   |   28 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99322.patch   |   53 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99323.patch   |  688 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99324.patch   |  109 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99325.patch   |  174 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99326.patch   |   86 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99327.patch   |  132 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99332.patch   |   68 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99335.patch   |  138 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99336.patch   |   95 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99337.patch   |   36 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99338.patch   |  111 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99339.patch   |  236 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99340.patch   |   43 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99341.patch   |   28 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99342.patch   |   76 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99343.patch   |  132 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99344.patch   |   30 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99345.patch   |   30 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99346.patch   |  170 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99347.patch   |   83 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99348.patch   |   37 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99349.patch   |  401 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99350.patch   |  184 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99351.patch   |  552 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99352.patch   |  121 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99353.patch   |  298 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99354.patch   |  384 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99355.patch   |  181 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99356.patch   |  376 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99357.patch   |   27 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99358.patch   |   38 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99359.patch   |   27 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99360.patch   | 1759 ++
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99361.patch   |17586
> +++++++++++++
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99363.patch   |   95 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99364.patch   |  511 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99365.patch   |   38 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99366.patch   |   26 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99367.patch   |   49 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99368.patch   |  342 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99369.patch   |   53 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99371.patch   |  663 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99372.patch   |  380 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99373.patch   |  360 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99374.patch   |   72 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99375.patch   |  146 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99376.patch   |   35 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99377.patch   |   28 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99378.patch   |  159 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99379.patch   | 2011 ++
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99380.patch   | 2997 +++
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99381.patch   |  512 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99383.patch   |  369 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99384.patch   | 1202 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99385.patch   |  151 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99388.patch   |  191 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99391.patch   |   43 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99392.patch   |   33 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99393.patch   |   45 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99395.patch   |   26 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99396.patch   | 1760 ++
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99397.patch   | 3565 +++
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99398.patch   |   76 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99402.patch   | 1268 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99403.patch   |  176 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99404.patch   |  386 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99405.patch   |   36 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99406.patch   |   20 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99407.patch   |   33 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99408.patch   |  603 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99409.patch   |   18 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99410.patch   |   32 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99411.patch   |   21 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99412.patch   |  316 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99413.patch   |   26 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99414.patch   |   36 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99415.patch   |   46 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99416.patch   |  130 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99417.patch   |   53 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99418.patch   |   25 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99419.patch   |  734 +
>  .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99420.patch   |   38 +
>  .../optional_libstdc.patch                         |    0
>  .../gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/pr30961.dpatch    |    0
>  .../gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/pr35942.patch     |    0
>  .../{gcc-4.5.1 =3D> gcc-4.5.2}/zecke-xgcc-cpp.patch  |    0
>  ...nadian_4.5.1.bb =3D> gcc-cross-canadian_4.5.2.bb} |    0
>  ...initial_4.5.1.bb =3D> gcc-cross-initial_4.5.2.bb} |    0
>  .../gcc/gcc-cross-intermediate.inc                 |    8 +
>  ...te_4.5.1.bb =3D> gcc-cross-intermediate_4.5.2.bb} |    0
>  .../gcc/{gcc-cross_4.5.1.bb =3D> gcc-cross_4.5.2.bb} |    0
>  ...tial_4.5.1.bb =3D> gcc-crosssdk-initial_4.5.2.bb} |    0
>  ...4.5.1.bb =3D> gcc-crosssdk-intermediate_4.5.2.bb} |    0
>  ...gcc-crosssdk_4.5.1.bb =3D> gcc-crosssdk_4.5.2.bb} |    0
>  meta/recipes-devtools/gcc/gcc-package-cross.inc    |    5 +
>  meta/recipes-devtools/gcc/gcc-package-target.inc   |    5 +
>  .../{gcc-runtime_4.5.1.bb =3D> gcc-runtime_4.5.2.bb} |    0
>  .../gcc/{gcc_4.5.1.bb =3D> gcc_4.5.2.bb}             |    0
>  176 files changed, 79377 insertions(+), 314 deletions(-)
>  delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1.inc
>  delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-dir-
> extend.patch
>  delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-
> parameters.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2.inc
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/100-uclibc-
> conf.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/103-uclibc-
> conf-noupstream.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/200-uclibc-
> locale.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/203-uclibc-
> locale-no__x.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/204-uclibc-
> locale-wchar_fix.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/205-uclibc-
> locale-update.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/301-missing-
> execinfo_h.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/302-c99-
> snprintf.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/303-c99-
> complex-ugly-hack.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/304-
> index_macro.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/305-
> libmudflap-susv3-legacy.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/306-
> libstdc++-namespace.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/307-
> locale_facets.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/602-sdk-
> libstdc++-includes.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/64bithack.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/740-sh-
> pr24836.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/800-arm-
> bigendian.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/904-flatten-
> switch-stmt-00.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/arm-
> bswapsi2.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/arm-
> nolibfloat.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/arm-
> softfloat.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/arm-unbreak-
> eabi-armv4t.dpatch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/cache-
> amnesia.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/disable_relax_pic_calls_flag.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-c++-builtin-redecl.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-cpp-pragma.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-i386-libgomp.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-ia64-libunwind.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-java-debug-iface-type.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-java-nomulti.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-libgomp-speedup.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-ppc32-retaddr.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-pr27898.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-pr32139.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-pr33763.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-rh251682.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-rh330771.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/fedora/gcc43-rh341221.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/fortran-
> cross-compile-hack.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/gcc-4.0.2-
> e300c2c3.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/gcc-4.3.1-
> ARCH_FLAGS_FOR_TARGET.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/gcc-4.3.3-
> SYSROOT_CFLAGS_FOR_TARGET.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/gcc-arm-
> frename-registers.patch (100%)
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/gcc-arm-qihi-
> split-PR46883.patch
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/gcc-flags-
> for-build.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/gcc-ice-
> hack.dpatch (100%)
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/gcc-poison-dir-
> extend.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/gcc-scalar-
> widening-pr45847.patch
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/gcc-uclibc-
> locale-ctype_touplow_t.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/libstdc++-
> emit-__cxa_end_cleanup-in-text.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/libstdc++-
> pic.dpatch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1/gcc-poison-system-
> directories.patch =3D> gcc-4.5.2/linaro/gcc-4.5-linaro-r99297.patch}
> (53%)
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99298.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99299.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99300.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99301.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99302.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99303.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99304.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99305.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99306.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99307.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99308.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99310.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99312.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99313.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99314.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99315.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99316.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99318.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99319.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99320.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99321.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99322.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99323.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99324.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99325.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99326.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99327.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99332.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99335.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99336.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99337.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99338.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99339.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99340.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99341.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99342.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99343.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99344.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99345.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99346.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99347.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99348.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99349.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99350.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99351.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99352.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99353.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99354.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99355.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99356.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99357.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99358.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99359.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99360.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99361.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99363.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99364.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99365.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99366.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99367.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99368.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99369.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99371.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99372.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99373.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99374.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99375.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99376.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99377.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99378.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99379.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99380.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99381.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99383.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99384.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99385.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99388.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99391.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99392.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99393.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99395.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99396.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99397.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99398.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99402.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99403.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99404.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99405.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99406.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99407.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99408.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99409.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99410.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99411.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99412.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99413.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99414.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99415.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99416.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99417.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99418.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99419.patch
>  create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-
> linaro-r99420.patch
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/optional_libstdc.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/pr30961.dpatch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-
> 4.5.2}/pr35942.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-4.5.1 =3D> gcc-4.5.2}/zecke-xgcc-
> cpp.patch (100%)
>  rename meta/recipes-devtools/gcc/{gcc-cross-canadian_4.5.1.bb =3D> gcc-
> cross-canadian_4.5.2.bb} (100%)
>  rename meta/recipes-devtools/gcc/{gcc-cross-initial_4.5.1.bb =3D> gcc-
> cross-initial_4.5.2.bb} (100%)
>  rename meta/recipes-devtools/gcc/{gcc-cross-intermediate_4.5.1.bb =3D>
> gcc-cross-intermediate_4.5.2.bb} (100%)
>  rename meta/recipes-devtools/gcc/{gcc-cross_4.5.1.bb =3D> gcc-
> cross_4.5.2.bb} (100%)
>  rename meta/recipes-devtools/gcc/{gcc-crosssdk-initial_4.5.1.bb =3D>
> gcc-crosssdk-initial_4.5.2.bb} (100%)
>  rename meta/recipes-devtools/gcc/{gcc-crosssdk-intermediate_4.5.1.bb
> =3D> gcc-crosssdk-intermediate_4.5.2.bb} (100%)
>  rename meta/recipes-devtools/gcc/{gcc-crosssdk_4.5.1.bb =3D> gcc-
> crosssdk_4.5.2.bb} (100%)
>  rename meta/recipes-devtools/gcc/{gcc-runtime_4.5.1.bb =3D> gcc-
> runtime_4.5.2.bb} (100%)
>  rename meta/recipes-devtools/gcc/{gcc_4.5.1.bb =3D> gcc_4.5.2.bb} (100%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

