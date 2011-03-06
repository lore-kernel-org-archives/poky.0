Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34D974C8009A
	for <poky@yoctoproject.org>; Sun,  6 Mar 2011 10:21:58 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4E2B51660395; Sun,  6 Mar 2011 09:21:56 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0301A1660394;
	Sun,  6 Mar 2011 09:21:54 -0700 (MST)
Message-ID: <4D73B4A1.5010409@mlbassoc.com>
Date: Sun, 06 Mar 2011 09:21:53 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <b9dded$i440ij@orsmga002.jf.intel.com>	<4D6FC6E0.3070303@mlbassoc.com>	<4D6FC8E4.3020400@mlbassoc.com>
	<4D706D10.4050809@linux.intel.com>	<4D70D0B9.3020902@mlbassoc.com>
	<4D714C7D.2060300@linux.intel.com>
	<4D715A2B.3080505@linux.intel.com>
In-Reply-To: <4D715A2B.3080505@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] module: build and clean hostprogs for each module
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
X-List-Received-Date: Sun, 06 Mar 2011 16:21:58 -0000
X-Groupsio-MsgNum: 4272
Content-Type: multipart/mixed; boundary="------------080506060408040808050101"

--------------080506060408040808050101
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/04/11 14:31, Darren Hart wrote:
> On 03/04/2011 12:33 PM, Darren Hart wrote:
>> On 03/04/2011 03:44 AM, Gary Thomas wrote:
>>> On 03/03/2011 09:39 PM, Darren Hart wrote:
>>>> On 03/03/2011 08:59 AM, Gary Thomas wrote:
>>>>> On 03/03/2011 09:50 AM, Gary Thomas wrote:
>>>>>> On 03/02/2011 11:00 AM, Darren Hart wrote:
>>>>>>> From: Darren Hart<dvhart@linux.intel.com>
>>>>>>>
>>>>>>> This fixes [BUGID #241]
>>>>>>>
>>>>>>> The kernel hostprogs are built for the host architecture. They should
>>>>>>> not
>>>>>>> be deployed with to the target, and they should not be included in an
>>>>>>> sstate
>>>>>>> package which might get reused on a host of a different architecture.
>>>>>>>
>>>>>>> As we don't build many out-of-tree modules, this patch takes the
>>>>>>> approach
>>>>>>> of building the hostprogs as part of the module compile process
>>>>>>> with a
>>>>>>> do_compile_prepend() routine in module.bbclass. To ensure the
>>>>>>> hostprogs
>>>>>>> don't contaminate the build, they are removed in do_install_append().
>>>>>>>
>>>>>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>>>>>> CC: Gary Thomas<gary@mlbassoc.com>
>>>>>>
>>>>>> Sadly, this doesn't seem to work for me. I don't see any indication in
>>>>>> run.do_compile that the extra steps were added at all.
>>>>>>
>>>>>> Will it matter if my recipe overrides the do_compile() method?
>>>>>>
>>>>>
>>>>> Also, when you tested this, what was your target MACHINE (in
>>>>> particular,
>>>>> was the target a different architecture than the build host?) I ask
>>>>> because
>>>>> I tried to just manually insert the compile_prepend() functions into my
>>>>> recipe and it ended up trying to build host tools (that's what the fuss
>>>>> is all about) using the target toolchain.
>>>>
>>>> I made some modifications to avoid a Race that RP pointed out (just
>>>> removed the cleans from the module.bbclass since they weren't
>>>> necessary anyway). With this, I set my MACHINE to
>>>> beagleboard and built minimal. You can see from the following that
>>>> hostprogs were build for the host and the module for the target:
>>>>
>>>> dvhart@rage:build-beagleboard$ file
>>>> ./tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git1+e2737075b79e4fc682e41051cf1c0bc47a47d502_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-beagleboard-standard-build/scripts/basic/fixdep
>>>>
>>>>
>>>>
>>>>
>>>> ./tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git1+e2737075b79e4fc682e41051cf1c0bc47a47d502_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-beagleboard-standard-build/scripts/basic/fixdep:
>>>>
>>>>
>>>>
>>>> ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically
>>>> linked (uses shared libs), for GNU/Linux 2.6.15, not stripped
>>>
>>> Why are you looking in ${KERNEL_SRC}? It may not exist (think rm_work)
>>> when your module gets built.
>>>
>>> The example recipe I have uses ${STAGING_KERNEL_DIR} something like this:
>>> make -C ${STAGING_KERNEL_DIR} M=src
>>>
>>
>> module.bbclass passes KERNEL_SRC=${STAGING_KERNEL_DIR} to the module's
>> Makefile.
>>
>> I don't use STAGING_KERNEL_DIR in the hello-mod Makefile as I wanted the
>> Makefile to exemplary of external modules, and not poky specific.
>>
>>
>>> Also, if you look at the run.do_compile script for your module recipe, is
>>> there any indication that the compile_prepend() stuff was even added?
>>
>> I do see the compile_prepend() code prepended to the do_compile code:
>>
>> unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>> oe_runmake CC="arm-poky-linux-gnueabi-gcc "
>> LD="arm-poky-linux-gnueabi-ld
>> --sysroot=/home/dvhart/source/poky.git/build-beagleboard/tmp/sysroots/beagleboard
>> " AR="arm-poky-linux-gnueabi-ar " \
>> -C
>> /home/dvhart/source/poky.git/build-beagleboard/tmp/sysroots/beagleboard/kernel
>> scripts
>>
>> Hrm.... but looking at that, that's the target compiler... not the host
>> compiler... so why on earth did this work.... grumble. Some more
>> investigation remains it seems...
>
>
> Actually, this isn't a problem. For the compilation of hostprogs, the kernel Make system uses HOSTCC, not CC. From log.do_compile:
>
> make -C
> /home/dvhart/source/poky.git/build-beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git1+e2737075b79e4fc682e41051cf1c0bc47a47d502_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux
> O=/home/dvhart/source/poky.git/build-beagleboard/tmp/sysroots/beagleboard/kernel/. scripts

This sure looks like it's using the kernel source tree, not the staging tree.  If you run with rm_work
and/or sstate caching, that directory may not exist!  My example (which was lifted fro OE) uses the
kernel _staging_ directory, which should exist.

Recipe attached - I'm not sure how much use it is as it as a boat-load of dependencies
which are not germane to this issue.

> make[1]: Entering directory
> `/home/dvhart/source/poky.git/build-beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git1+e2737075b79e4fc682e41051cf1c0bc47a47d502_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux'
>
> HOSTCC scripts/basic/fixdep
> HOSTCC scripts/basic/docproc
> GEN /home/dvhart/source/poky.git/build-beagleboard/tmp/sysroots/beagleboard/kernel/Makefile
> HOSTCC scripts/kconfig/conf.o
> HOSTCC scripts/kconfig/kxgettext.o
> HOSTCC scripts/kconfig/zconf.tab.o
> HOSTLD scripts/kconfig/conf
>
> While the module itself builds with:
>
> make -C
> /home/dvhart/source/poky.git/build-beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git1+e2737075b79e4fc682e41051cf1c0bc47a47d502_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux
> O=/home/dvhart/source/poky.git/build-beagleboard/tmp/sysroots/beagleboard/kernel/.
> LD /home/dvhart/source/poky.git/build-beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/hello-mod-0.1-r0/built-in.o
> CC [M] /home/dvhart/source/poky.git/build-beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/hello-mod-0.1-r0/hello.o
> Building modules, stage 2.
> MODPOST 1 modules
> CC /home/dvhart/source/poky.git/build-beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/hello-mod-0.1-r0/hello.mod.o
> LD [M] /home/dvhart/source/poky.git/build-beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/hello-mod-0.1-r0/hello.ko
>
>
> Things are working as intended for the hello-mod recipe.
>
> --
> Darren
>
>>
>>
>> > I don't see it in mine (yes, it inherits module)
>>
>> Even though there is something up with the script build above, you
>> should be seeing it in run.do_compile. Is this recipe something you can
>> share? Also, have you tried from a clean build? I ran into various
>> (strange) problems because I wasn't cleaning the right
>> tasks/recipes/etc. I think your problem is different, but might have a
>> similar cause.
>>
>> --
>> Darren
>>
>>>
>>>>
>>>> dvhart@rage:build-beagleboard$ file
>>>> ./tmp/work/beagleboard-poky-linux-gnueabi/hello-world-mod-1.0-r0/package/lib/modules/2.6.37.2-yocto-standard+/extra/hello_world.ko
>>>>
>>>>
>>>> ./tmp/work/beagleboard-poky-linux-gnueabi/hello-world-mod-1.0-r0/package/lib/modules/2.6.37.2-yocto-standard+/extra/hello_world.ko:
>>>>
>>>> ELF 32-bit LSB relocatable, ARM, version 1
>>>> (SYSV), not stripped
>>>>
>>>> I'm going to do a beagleboard boot test, but if that works I'll be
>>>> resending these changes to close BUG 241 as they work on both qemux86
>>>> and beagleboard using hello-world-mod which
>>>> uses a very typical out-of-tree kernel module Make setup.
>>>>
>>>
>>
>>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------080506060408040808050101
Content-Type: text/plain;
 name="ti-linuxutils.inc"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="ti-linuxutils.inc"

DESCRIPTION = "MFP Linux utils for TI ARM/DSP processors"
SECTION = "devel"
LICENSE = "GPLv2,BSD"

BASE_SRC_URI = "http://software-dl.ti.com/dsps/dsps_public_sw/sdo_sb/targetcontent/linuxutils/${PV}/exports"
SRC_URI = "${BASE_SRC_URI}/linuxutils_${PV}.tar.gz "

S = "${WORKDIR}/linuxutils_${PV}"

require ti-paths.inc
require ti-staging.inc

#This is a kernel module, don't set PR directly
MACHINE_KERNEL_PR_append = "d"

inherit module

do_compile() {
    unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS

    case ${SOC_FAMILY} in 
    dm365)
            modules="cmem edma irq";;
    omap3)
            modules="cmem sdma";;
	dm355)
            modules="cmem edma irq";;
    *)
            modules="cmem"
    esac

    # Insure host tools are available
    # HORRIBLE HACK
    # Sadly, I can't see how to automate these builds since the normal
    # way to do it using the Makefile ends up building target executables
    # not useful host tools.
    #   make CROSS_COMPILE= -C ${STAGING_KERNEL_DIR}/scripts/basic fixdep
    #   make CROSS_COMPILE= -C ${STAGING_KERNEL_DIR} SUBDIRS=scripts
    cd ${STAGING_KERNEL_DIR}/scripts/basic
    cc -o fixdep fixdep.c
    cd ${STAGING_KERNEL_DIR}/scripts/mod
    cc -o modpost modpost.c file2alias.c sumversion.c
    cd ${STAGING_KERNEL_DIR}/scripts/genksyms
    cc -o genksyms genksyms.c parse.c lex.c

    for module in $modules ; do
    cd ${S}/packages/ti/sdo/linuxutils/$module
    make \
      LINUXKERNEL_INSTALL_DIR="${STAGING_KERNEL_DIR}" \
      MVTOOL_PREFIX="${TARGET_PREFIX}" \
      UCTOOL_PREFIX="${TARGET_PREFIX}" \
      clean debug release
    done
}

do_install () {
    install -d ${D}/lib/modules/${KERNEL_VERSION}/kernel/drivers/dsp
    # Install CMEM
    for module in $(find ${S}/packages/ti/sdo/linuxutils/ -name "*.ko") ; do
        install -m 0755 $module ${D}/lib/modules/${KERNEL_VERSION}/kernel/drivers/dsp
    done
    cd ${S}/packages/ti/sdo/linuxutils/cmem/apps
    make \
      LINUXKERNEL_INSTALL_DIR="${STAGING_KERNEL_DIR}" \
      MVTOOL_PREFIX="${TARGET_PREFIX}" \
      UCTOOL_PREFIX="${TARGET_PREFIX}" \
      EXEC_DIR="${D}${installdir}/ti-linuxutils-app/cmem-app" \
      install
    # Install EDMA
    if [ ${SOC_FAMILY} == "dm365" ] ; then
        cd ${S}/packages/ti/sdo/linuxutils/edma/apps
        make \
         LINUXKERNEL_INSTALL_DIR="${STAGING_KERNEL_DIR}" \
         MVTOOL_PREFIX="${TARGET_PREFIX}" \
         UCTOOL_PREFIX="${TARGET_PREFIX}" \
         EXEC_DIR="${D}${installdir}/ti-linuxutils-app/edma-app" \
         install
    fi

    # stage tree - other packages may need this
    install -d ${D}${LINUXUTILS_INSTALL_DIR_RECIPE}
    cp -pPrf ${S}/* ${D}${LINUXUTILS_INSTALL_DIR_RECIPE}
}




PACKAGES =+ " ti-cmem-module \
              ti-sdma-module \
              ti-edma-module \
              ti-irq-module \
              ti-linuxutils-app"

FILES_ti-cmem-module = "/lib/modules/${KERNEL_VERSION}/kernel/drivers/dsp/cmem*.ko"
FILES_ti-sdma-module = "/lib/modules/${KERNEL_VERSION}/kernel/drivers/dsp/sdma*.ko"
FILES_ti-edma-module = "/lib/modules/${KERNEL_VERSION}/kernel/drivers/dsp/edma*.ko"
FILES_ti-irq-module = "/lib/modules/${KERNEL_VERSION}/kernel/drivers/dsp/irq*.ko"

FILES_ti-linuxutils-app = "${installdir}/ti-linuxutils-app/*/*"

INSANE_SKIP_ti-linuxutils-app = "True"
PACKAGE_STRIP = "no"

--------------080506060408040808050101
Content-Type: text/plain;
 name="ti-linuxutils_2.26.01.02.bb"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="ti-linuxutils_2.26.01.02.bb"

require ti-linuxutils.inc
LIC_FILES_CHKSUM = " \
		 file://gpl_2.0.txt;md5=1298794fc2eed3df92a89f3c9d317440 \
"

SRC_URI += "file://linuxutils-BKL-fix-2.patch"

PE = "1"
PV = "2_26_01_02"

SRC_URI[md5sum] = "70b4918bc35c1bcfef34d6ba3fbce0c8"
SRC_URI[sha256sum] = "51266dd928f8d629cd417c869789a6c0d596612120f165619119cbaadfd66ee2"


--------------080506060408040808050101--
