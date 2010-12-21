Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC2414C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 03:27:49 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so3491192iyb.35
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 01:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:from:to:cc:subject:date
	:message-id:x-mailer;
	bh=UM9n37HTyHkBR2MyUfFTJ6FQ5v8SMv7uQcc2wQkn0Ak=;
	b=Lrx87bbtzbxM4EGUxSexnJXK6Hft6R96K9Q2glBy9WM0vRHHf6WmjwC6VDqbGphdz0
	ed2zD/tfYfkznwvMrtPN+JHWDTbuHF4f6NM+DuKt44BIZ+kJvekqgLRMeR9XOz2kavy/
	I6JBHdSsVhOep6Iq73Dwtw2K+HbOKrii0rNbw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer;
	b=AK/4iDE/hnj/9RhNNaCFC9lm0HlKV0p7Rs+7jpHrQoL2ClJm+j9lW/q6Ce8caaMaum
	rK1BWp+WSJ21G9RevjXkSPn3lrY8CfcNf9RPPNp+r2/Ic2250wopyGbbVMwE9GVwDrCS
	dXA9btyvYmPmR5/CpMS5sde/5g4u2klx/mQ18=
Received: by 10.231.31.2 with SMTP id w2mr5103261ibc.117.1292923669374;
	Tue, 21 Dec 2010 01:27:49 -0800 (PST)
Received: from localhost.localdomain
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id d21sm4385485ibg.3.2010.12.21.01.27.47
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 21 Dec 2010 01:27:48 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue, 21 Dec 2010 01:27:00 -0800
Message-Id: <cover.1292920700.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/3] gcc 4.5.4 + linaro update
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
X-List-Received-Date: Tue, 21 Dec 2010 09:27:50 -0000

Hello,

This branch brings in gcc 4.5.2 and on top linaro's enhancements to gcc 4.5
I have made sure that it builds poky-image-minimal for arm, ppc, x86, mips
qemu and boots on all of them. It did not boot on ppc however poky-qemu
did not boot any images for me even the ones built without these enhancements
i.e. on vanilla yocto. So I used a qemu 0.12.5 built with OE
which worked well. I need help in testing it out. So please test these patches rigourously 
with standard testing setup you use before you pull them

If there are issues found let me know


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kraj/gcc-update
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kraj/gcc-update

Thanks,
    Khem Raj <raj.khem@gmail.com>
---


Khem Raj (3):
  gcc: Upgrade recipes from 4.5.1 -> 4.5.2
  poky-default.inc: Set GCCVERSION and SDKGCCVERSION to 4.5.2 now
  gcc-4.5.2: Add Linaro enhancements

 meta/conf/distro/include/poky-default.inc          |    4 +-
 meta/recipes-devtools/gcc/gcc-4.5.1.inc            |   88 -
 .../gcc/gcc-4.5.1/gcc-poison-dir-extend.patch      |   24 -
 .../gcc/gcc-4.5.1/gcc-poison-parameters.patch      |   83 -
 meta/recipes-devtools/gcc/gcc-4.5.2.inc            |  191 +
 .../{gcc-4.5.1 => gcc-4.5.2}/100-uclibc-conf.patch |    0
 .../103-uclibc-conf-noupstream.patch               |    0
 .../200-uclibc-locale.patch                        |    0
 .../203-uclibc-locale-no__x.patch                  |    0
 .../204-uclibc-locale-wchar_fix.patch              |    0
 .../205-uclibc-locale-update.patch                 |    0
 .../301-missing-execinfo_h.patch                   |    0
 .../302-c99-snprintf.patch                         |    0
 .../303-c99-complex-ugly-hack.patch                |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/304-index_macro.patch |    0
 .../305-libmudflap-susv3-legacy.patch              |    0
 .../306-libstdc++-namespace.patch                  |    0
 .../307-locale_facets.patch                        |    0
 .../602-sdk-libstdc++-includes.patch               |    0
 .../gcc/{gcc-4.5.1 => gcc-4.5.2}/64bithack.patch   |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/740-sh-pr24836.patch  |    0
 .../800-arm-bigendian.patch                        |    0
 .../904-flatten-switch-stmt-00.patch               |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/arm-bswapsi2.patch    |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/arm-nolibfloat.patch  |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/arm-softfloat.patch   |    0
 .../arm-unbreak-eabi-armv4t.dpatch                 |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/cache-amnesia.patch   |    0
 .../disable_relax_pic_calls_flag.patch             |    0
 .../fedora/gcc43-c++-builtin-redecl.patch          |    0
 .../fedora/gcc43-cpp-pragma.patch                  |    0
 .../fedora/gcc43-i386-libgomp.patch                |    0
 .../fedora/gcc43-ia64-libunwind.patch              |    0
 .../fedora/gcc43-java-debug-iface-type.patch       |    0
 .../fedora/gcc43-java-nomulti.patch                |    0
 .../fedora/gcc43-libgomp-speedup.patch             |    0
 .../fedora/gcc43-ppc32-retaddr.patch               |    0
 .../fedora/gcc43-pr27898.patch                     |    0
 .../fedora/gcc43-pr32139.patch                     |    0
 .../fedora/gcc43-pr33763.patch                     |    0
 .../fedora/gcc43-rh251682.patch                    |    0
 .../fedora/gcc43-rh330771.patch                    |    0
 .../fedora/gcc43-rh341221.patch                    |    0
 .../fortran-cross-compile-hack.patch               |    0
 .../gcc-4.0.2-e300c2c3.patch                       |    0
 .../gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch          |    0
 .../gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch      |    0
 .../gcc-arm-frename-registers.patch                |    0
 .../gcc/gcc-4.5.2/gcc-arm-qihi-split-PR46883.patch |   52 +
 .../gcc-flags-for-build.patch                      |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/gcc-ice-hack.dpatch   |    0
 .../gcc/gcc-4.5.2/gcc-poison-dir-extend.patch      |   26 +
 .../gcc-4.5.2/gcc-scalar-widening-pr45847.patch    |   63 +
 .../gcc-uclibc-locale-ctype_touplow_t.patch        |    0
 .../libstdc++-emit-__cxa_end_cleanup-in-text.patch |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/libstdc++-pic.dpatch  |    0
 .../linaro/gcc-4.5-linaro-r99297.patch}            |  240 +-
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99298.patch   |26654 ++++++++++++++++++++
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99299.patch   |   62 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99300.patch   | 3094 +++
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99301.patch   |  675 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99302.patch   |  244 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99303.patch   |  131 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99304.patch   |   81 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99305.patch   |   52 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99306.patch   | 1401 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99307.patch   |  138 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99308.patch   |  112 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99310.patch   |   36 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99312.patch   |  714 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99313.patch   |   37 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99314.patch   |  433 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99315.patch   |   57 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99316.patch   |   76 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99318.patch   |  118 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99319.patch   |  197 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99320.patch   |  138 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99321.patch   |   28 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99322.patch   |   53 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99323.patch   |  688 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99324.patch   |  109 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99325.patch   |  174 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99326.patch   |   86 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99327.patch   |  132 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99332.patch   |   68 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99335.patch   |  138 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99336.patch   |   95 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99337.patch   |   36 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99338.patch   |  111 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99339.patch   |  236 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99340.patch   |   43 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99341.patch   |   28 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99342.patch   |   76 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99343.patch   |  132 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99344.patch   |   30 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99345.patch   |   30 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99346.patch   |  170 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99347.patch   |   83 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99348.patch   |   37 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99349.patch   |  401 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99350.patch   |  184 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99351.patch   |  552 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99352.patch   |  121 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99353.patch   |  298 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99354.patch   |  384 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99355.patch   |  181 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99356.patch   |  376 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99357.patch   |   27 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99358.patch   |   38 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99359.patch   |   27 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99360.patch   | 1759 ++
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99361.patch   |17586 +++++++++++++
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99363.patch   |   95 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99364.patch   |  511 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99365.patch   |   38 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99366.patch   |   26 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99367.patch   |   49 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99368.patch   |  342 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99369.patch   |   53 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99371.patch   |  663 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99372.patch   |  380 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99373.patch   |  360 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99374.patch   |   72 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99375.patch   |  146 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99376.patch   |   35 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99377.patch   |   28 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99378.patch   |  159 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99379.patch   | 2011 ++
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99380.patch   | 2997 +++
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99381.patch   |  512 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99383.patch   |  369 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99384.patch   | 1202 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99385.patch   |  151 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99388.patch   |  191 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99391.patch   |   43 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99392.patch   |   33 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99393.patch   |   45 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99395.patch   |   26 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99396.patch   | 1760 ++
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99397.patch   | 3565 +++
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99398.patch   |   76 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99402.patch   | 1268 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99403.patch   |  176 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99404.patch   |  386 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99405.patch   |   36 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99406.patch   |   20 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99407.patch   |   33 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99408.patch   |  603 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99409.patch   |   18 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99410.patch   |   32 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99411.patch   |   21 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99412.patch   |  316 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99413.patch   |   26 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99414.patch   |   36 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99415.patch   |   46 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99416.patch   |  130 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99417.patch   |   53 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99418.patch   |   25 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99419.patch   |  734 +
 .../gcc-4.5.2/linaro/gcc-4.5-linaro-r99420.patch   |   38 +
 .../optional_libstdc.patch                         |    0
 .../gcc/{gcc-4.5.1 => gcc-4.5.2}/pr30961.dpatch    |    0
 .../gcc/{gcc-4.5.1 => gcc-4.5.2}/pr35942.patch     |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/zecke-xgcc-cpp.patch  |    0
 ...nadian_4.5.1.bb => gcc-cross-canadian_4.5.2.bb} |    0
 ...initial_4.5.1.bb => gcc-cross-initial_4.5.2.bb} |    0
 .../gcc/gcc-cross-intermediate.inc                 |    8 +
 ...te_4.5.1.bb => gcc-cross-intermediate_4.5.2.bb} |    0
 .../gcc/{gcc-cross_4.5.1.bb => gcc-cross_4.5.2.bb} |    0
 ...tial_4.5.1.bb => gcc-crosssdk-initial_4.5.2.bb} |    0
 ...4.5.1.bb => gcc-crosssdk-intermediate_4.5.2.bb} |    0
 ...gcc-crosssdk_4.5.1.bb => gcc-crosssdk_4.5.2.bb} |    0
 meta/recipes-devtools/gcc/gcc-package-cross.inc    |    5 +
 meta/recipes-devtools/gcc/gcc-package-target.inc   |    5 +
 .../{gcc-runtime_4.5.1.bb => gcc-runtime_4.5.2.bb} |    0
 .../gcc/{gcc_4.5.1.bb => gcc_4.5.2.bb}             |    0
 176 files changed, 79377 insertions(+), 314 deletions(-)
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1.inc
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-dir-extend.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-parameters.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2.inc
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/100-uclibc-conf.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/103-uclibc-conf-noupstream.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/200-uclibc-locale.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/203-uclibc-locale-no__x.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/204-uclibc-locale-wchar_fix.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/205-uclibc-locale-update.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/301-missing-execinfo_h.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/302-c99-snprintf.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/303-c99-complex-ugly-hack.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/304-index_macro.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/305-libmudflap-susv3-legacy.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/306-libstdc++-namespace.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/307-locale_facets.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/602-sdk-libstdc++-includes.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/64bithack.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/740-sh-pr24836.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/800-arm-bigendian.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/904-flatten-switch-stmt-00.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/arm-bswapsi2.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/arm-nolibfloat.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/arm-softfloat.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/arm-unbreak-eabi-armv4t.dpatch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/cache-amnesia.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/disable_relax_pic_calls_flag.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-c++-builtin-redecl.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-cpp-pragma.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-i386-libgomp.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-ia64-libunwind.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-java-debug-iface-type.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-java-nomulti.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-libgomp-speedup.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-ppc32-retaddr.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-pr27898.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-pr32139.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-pr33763.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-rh251682.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-rh330771.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-rh341221.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fortran-cross-compile-hack.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-4.0.2-e300c2c3.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-arm-frename-registers.patch (100%)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/gcc-arm-qihi-split-PR46883.patch
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-flags-for-build.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-ice-hack.dpatch (100%)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/gcc-poison-dir-extend.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/gcc-scalar-widening-pr45847.patch
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-uclibc-locale-ctype_touplow_t.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/libstdc++-emit-__cxa_end_cleanup-in-text.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/libstdc++-pic.dpatch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1/gcc-poison-system-directories.patch => gcc-4.5.2/linaro/gcc-4.5-linaro-r99297.patch} (53%)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99298.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99299.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99300.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99301.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99302.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99303.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99304.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99305.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99306.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99307.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99308.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99310.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99312.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99313.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99314.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99315.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99316.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99318.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99319.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99320.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99321.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99322.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99323.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99324.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99325.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99326.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99327.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99332.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99335.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99336.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99337.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99338.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99339.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99340.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99341.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99342.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99343.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99344.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99345.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99346.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99347.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99348.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99349.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99350.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99351.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99352.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99353.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99354.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99355.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99356.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99357.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99358.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99359.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99360.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99361.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99363.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99364.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99365.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99366.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99367.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99368.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99369.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99371.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99372.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99373.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99374.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99375.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99376.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99377.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99378.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99379.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99380.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99381.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99383.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99384.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99385.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99388.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99391.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99392.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99393.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99395.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99396.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99397.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99398.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99402.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99403.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99404.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99405.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99406.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99407.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99408.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99409.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99410.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99411.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99412.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99413.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99414.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99415.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99416.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99417.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99418.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99419.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/linaro/gcc-4.5-linaro-r99420.patch
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/optional_libstdc.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/pr30961.dpatch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/pr35942.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/zecke-xgcc-cpp.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-cross-canadian_4.5.1.bb => gcc-cross-canadian_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-cross-initial_4.5.1.bb => gcc-cross-initial_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-cross-intermediate_4.5.1.bb => gcc-cross-intermediate_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-cross_4.5.1.bb => gcc-cross_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-crosssdk-initial_4.5.1.bb => gcc-crosssdk-initial_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-crosssdk-intermediate_4.5.1.bb => gcc-crosssdk-intermediate_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-crosssdk_4.5.1.bb => gcc-crosssdk_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-runtime_4.5.1.bb => gcc-runtime_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc_4.5.1.bb => gcc_4.5.2.bb} (100%)


