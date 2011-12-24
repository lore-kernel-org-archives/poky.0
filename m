Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14E70E00303
	for <poky@yoctoproject.org>; Fri, 23 Dec 2011 18:18:20 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2011 18:18:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="89904029"
Received: from unknown (HELO [10.255.13.66]) ([10.255.13.66])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2011 18:18:16 -0800
Message-ID: <4EF53667.1010605@linux.intel.com>
Date: Fri, 23 Dec 2011 18:18:15 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4EF37ECB.8020603@linux.intel.com>
	<4EF3864A.8030906@linux.intel.com>
	<4EF4146E.7000304@linux.intel.com>
In-Reply-To: <4EF4146E.7000304@linux.intel.com>
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
X-List-Received-Date: Sat, 24 Dec 2011 02:18:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a branch on poky-contrib, josh/edison_test[1], that contains 
several fixes for issues below. They are not in the josh/edsion branch 
as they are patches which are pending, or have not been submitted, to 
master.

More details inline below.

On 22/12/11 21:41, Joshua Lock wrote:
> Another update:
>
> On 22/12/11 11:34, Joshua Lock wrote:
>>> qemupcc (LSB) - coreutils dependency on libcap
>>>   - disable libcap (and ls --color)
>>>   OR
>>>   - add libcap to DEPENDS for coreutils
>>
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=1860
>> Assigned to Saul
>
> Saul has proposed a patch for this issue. I'll cherry-pick the fix once
> it hits master.

Patch applied in josh/edison_test

>>> qemux86-64 (LSB) - "which" build fails libiberty dependency
>>>   - Richard has a patch for this one to disable libiberty
>>
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=1861
>> Patch on ML, assigned to RP
>
> I'll cherry-pick the fix once it hits master.

Patch applied in josh/edison_test

>>> qemuarm - libzypp dependecny on binutils' ansidecl.h
>>
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=1862
>> Assigned to Joshua

I guess it's a race/determinism issue but don't have a patch for it yet.

>>> Routerstation Pro  - Kernel dependency on binutils' bfd.h
>>>   - Both of these need to ensure bintuils is completely installed in
>>>     sysroot before being build not sure if that should be by DEPENDS or
>>>     some other mechanism (possibly due to sstate ordering).
>>
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=1865
>> Assigned to Joshua

I've added binutils as a dependency of the perf build in 
linux-tools.inc, this patch has yet to be submitted against master until 
I've had chance to test it more. Patch in josh/edison_test

>>> Beageboard
>>> qt4-x11-free - ICE
>>>   painting/qdrawhelper.cpp:1229:1: error: insn does not satisfy its
>>> constraints:
>>> | (insn 2860 2859 951 57 (set (mem/c:V4SI (plus:SI (reg:SI 12 ip)
>>> |                 (const_int -140 [0xffffffffffffff74])) [66 %sfp+-16424
>>> S16 A64])
>>> |         (reg:V4SI 0 r0))
>>> /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.6.2/include/arm_neon.h:5346
>>> 746 {*neon_movv4si}
>>> |      (nil))
>>> | painting/qdrawhelper.cpp:1229:1: internal compiler error: in
>>> reload_cse_simplify_operands, at postreload.c:403
>>> | Please submit a full bug report,
>>> | with preprocessed source if appropriate.
>>>
>>> Maybe fixed by the following commit, need to here from Khem or Nitin:
>>>
>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=7022a8f8045bdf82b9209b8cd62fb09c4a7a24f8
>>
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=1863
>> Assigned to Nitin
>
> I'm testing a build here with the suggested patch merged.

Patch merged to josh/edison_test

>>> ALL - meta-toolchain-gmae
>>> | Manifest:
>>> /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-ppc/build/build/tmp/work/ppc603e-poky-linux/meta-toolchain-gmae-1.0-r6/sdk/image/install/install.manifest
>>>
>>> | mv: cannot stat
>>> `/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-ppc/build/build/tmp/work/ppc603e-poky-linux/meta-toolchain-gmae-1.0-r6/sdk/image/var/lib/rpm/*':
>>> No such file or directory
>>> NOTE: package meta-toolchain-gmae-1.0-r6: task do_populate_sdk: Failed
>>
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=1864
>> Assigned to Joshua
>
> I've cherry-picked a couple of patches against populate_sdk_*.bbclass
> which seem to fix this issue.

The cherry-picked fixes seem to resolve the issue.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

