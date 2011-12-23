Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FDBCE00305
	for <poky@yoctoproject.org>; Thu, 22 Dec 2011 21:41:03 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 22 Dec 2011 21:41:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="50001687"
Received: from unknown (HELO [10.255.13.45]) ([10.255.13.45])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Dec 2011 21:41:02 -0800
Message-ID: <4EF4146E.7000304@linux.intel.com>
Date: Thu, 22 Dec 2011 21:41:02 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4EF37ECB.8020603@linux.intel.com>
	<4EF3864A.8030906@linux.intel.com>
In-Reply-To: <4EF3864A.8030906@linux.intel.com>
Subject: Re: Edison 1.1.1 Status
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
X-List-Received-Date: Fri, 23 Dec 2011 05:41:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Another update:

On 22/12/11 11:34, Joshua Lock wrote:
>> qemupcc (LSB) - coreutils dependency on libcap
>>  - disable libcap (and ls --color)
>>  OR
>>  - add libcap to DEPENDS for coreutils
> 
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1860
> Assigned to Saul

Saul has proposed a patch for this issue. I'll cherry-pick the fix once
it hits master.

>> qemux86-64 (LSB) - "which" build fails libiberty dependency
>>  - Richard has a patch for this one to disable libiberty
> 
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1861
> Patch on ML, assigned to RP

I'll cherry-pick the fix once it hits master.

>> qemuarm - libzypp dependecny on binutils' ansidecl.h
> 
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1862
> Assigned to Joshua
> 
>> Routerstation Pro  - Kernel dependency on binutils' bfd.h
>>  - Both of these need to ensure bintuils is completely installed in
>>    sysroot before being build not sure if that should be by DEPENDS or
>>    some other mechanism (possibly due to sstate ordering).
> 
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1865
> Assigned to Joshua

I'm not sure about the above two. I can't reproduce them on my build
machine so I suspect a race of some sort.
I've made a comment in the bug report for 1862 to this effect.

>> Beageboard
>> qt4-x11-free - ICE
>>  painting/qdrawhelper.cpp:1229:1: error: insn does not satisfy its
>> constraints:
>> | (insn 2860 2859 951 57 (set (mem/c:V4SI (plus:SI (reg:SI 12 ip)
>> |                 (const_int -140 [0xffffffffffffff74])) [66 %sfp+-16424
>> S16 A64])
>> |         (reg:V4SI 0 r0))
>> /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.6.2/include/arm_neon.h:5346
>> 746 {*neon_movv4si}
>> |      (nil))
>> | painting/qdrawhelper.cpp:1229:1: internal compiler error: in
>> reload_cse_simplify_operands, at postreload.c:403
>> | Please submit a full bug report,
>> | with preprocessed source if appropriate.
>>
>> Maybe fixed by the following commit, need to here from Khem or Nitin:
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=7022a8f8045bdf82b9209b8cd62fb09c4a7a24f8
> 
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1863
> Assigned to Nitin

I'm testing a build here with the suggested patch merged.

>> ALL - meta-toolchain-gmae
>> | Manifest:
>> /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-ppc/build/build/tmp/work/ppc603e-poky-linux/meta-toolchain-gmae-1.0-r6/sdk/image/install/install.manifest
>>
>> | mv: cannot stat
>> `/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-ppc/build/build/tmp/work/ppc603e-poky-linux/meta-toolchain-gmae-1.0-r6/sdk/image/var/lib/rpm/*':
>> No such file or directory
>> NOTE: package meta-toolchain-gmae-1.0-r6: task do_populate_sdk: Failed
> 
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1864
> Assigned to Joshua

I've cherry-picked a couple of patches against populate_sdk_*.bbclass
which seem to fix this issue.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

