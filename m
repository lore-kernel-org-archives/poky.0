Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A8E1E00C44; Wed,  3 Feb 2016 11:08:37 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEB34E00C3C
	for <poky@yoctoproject.org>; Wed,  3 Feb 2016 11:08:34 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 03 Feb 2016 11:08:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,391,1449561600"; d="scan'208";a="41893763"
Received: from lsandov1-mob1-linux.zpn.intel.com (HELO [10.219.5.43])
	([10.219.5.43])
	by fmsmga004.fm.intel.com with ESMTP; 03 Feb 2016 11:08:33 -0800
To: Khem Raj <raj.khem@gmail.com>
References: <1454410252-32098-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
	<C5111F39-1682-4D0F-931A-A21018305709@gmail.com>
	<56B23402.8080502@linux.intel.com>
	<86E97C86-4A71-4145-A22E-A61ECBA2EB7D@gmail.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <56B25135.6070203@linux.intel.com>
Date: Wed, 3 Feb 2016 13:12:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <86E97C86-4A71-4145-A22E-A61ECBA2EB7D@gmail.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/4][jethro] yocto-bsp related patches backported from master
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
X-List-Received-Date: Wed, 03 Feb 2016 19:08:37 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 02/03/2016 12:58 PM, Khem Raj wrote:
>> On Feb 3, 2016, at 9:08 AM, Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>>
>>
>>
>> On 02/03/2016 12:12 AM, Khem Raj wrote:
>>>> On Feb 2, 2016, at 2:50 AM, leonardo.sandoval.gonzalez@linux.intel.com wrote:
>>>>
>>>> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>>>>
>>>> Set of patches that mainly fixes the do_patch issues found when creating
>>>> BSP layers with the yocto-bsp tool. More detail on each patch description.
>>>>
>>> AUTOREV is going to set a bad example IMO, it will be better to translate auto rev
>>> into a static SHA value may be driven out of AUTOREV enquiry at the time of BSP layer
>>> creation.
>> On this series, I simple backported some yocto-bsp related patches into Jethro so I believe the patch remains valid.
>>
> OK fair enough.
>
>> In the other hand, you mean getting the SHA value from AUTOREV instead of using the AUTOREV variable? If yes, what would be the real benefit from it?
> AUTOREVs are good for development but eventually they are hard to use in a release products
> so setting a template to use AUTOREV can set a wrong pretext. We should not do that in default
> templates. If user chooses so be it.

Got it. I will elaborate a separate patch/series base on your comments. 
Thanks.


>>>> Leonardo Sandoval (4):
>>>>   yocto-bsp: Default kernel version to 4.1 on x86_64
>>>>   yocto-bsp: Avoid duplication of user patches
>>>>     ({{=machine}}-user-patches.scc)
>>>>   yocto-bsp: Set KTYPE to user selected base branch
>>>>   yocto-bsp: Set SRCREV meta/machine revisions to AUTOREV
>>>>
>>>> .../arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc     | 3 ++-
>>>> .../arch/arm/recipes-kernel/linux/files/machine-standard.scc       | 3 ++-
>>>> .../target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc    | 3 ++-
>>>> .../target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend  | 1 -
>>>> .../arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend     | 6 +++---
>>>> .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend   | 6 +++---
>>>> .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend   | 6 +++---
>>>> .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | 6 +++---
>>>> .../target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend | 7 +++----
>>>> .../target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend | 7 +++----
>>>> .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 7 +++----
>>>> .../arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc    | 3 ++-
>>>> .../arch/i386/recipes-kernel/linux/files/machine-standard.scc      | 3 ++-
>>>> .../target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc   | 3 ++-
>>>> .../target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend | 1 -
>>>> .../arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | 6 +++---
>>>> .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | 6 +++---
>>>> .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | 6 +++---
>>>> .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 6 +++---
>>>> .../arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend       | 7 +++----
>>>> .../arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend       | 7 +++----
>>>> .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend | 7 +++----
>>>> .../arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc    | 3 ++-
>>>> .../arch/mips/recipes-kernel/linux/files/machine-standard.scc      | 3 ++-
>>>> .../target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc   | 3 ++-
>>>> .../target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend | 1 -
>>>> .../arch/mips/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | 6 +++---
>>>> .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | 6 +++---
>>>> .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | 6 +++---
>>>> .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 6 +++---
>>>> .../arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend       | 7 +++----
>>>> .../arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend       | 7 +++----
>>>> .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend | 7 +++----
>>>> .../arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc  | 3 ++-
>>>> .../arch/mips64/recipes-kernel/linux/files/machine-standard.scc    | 3 ++-
>>>> .../target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc | 3 ++-
>>>> .../arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend      | 1 -
>>>> .../arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend  | 6 +++---
>>>> .../mips64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend     | 6 +++---
>>>> .../mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend     | 6 +++---
>>>> .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend | 6 +++---
>>>> .../arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend     | 5 ++---
>>>> .../arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend     | 7 +++----
>>>> .../arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend      | 7 +++----
>>>> .../arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc | 3 ++-
>>>> .../arch/powerpc/recipes-kernel/linux/files/machine-standard.scc   | 3 ++-
>>>> .../arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc       | 3 ++-
>>>> .../arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend     | 1 -
>>>> .../arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend | 6 +++---
>>>> .../powerpc/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend    | 6 +++---
>>>> .../powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend    | 6 +++---
>>>> .../powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend     | 6 +++---
>>>> .../arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend    | 7 +++----
>>>> .../arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend    | 7 +++----
>>>> .../arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 7 +++----
>>>> .../arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc    | 3 ++-
>>>> .../arch/qemu/recipes-kernel/linux/files/machine-standard.scc      | 3 ++-
>>>> .../target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc   | 3 ++-
>>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend | 1 -
>>>> .../arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | 6 +++---
>>>> .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | 6 +++---
>>>> .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | 6 +++---
>>>> .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 6 +++---
>>>> .../arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend       | 7 +++----
>>>> .../arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend       | 7 +++----
>>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend | 7 +++----
>>>> .../arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc  | 3 ++-
>>>> .../arch/x86_64/recipes-kernel/linux/files/machine-standard.scc    | 3 ++-
>>>> .../target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc | 3 ++-
>>>> .../target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall  | 2 +-
>>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend      | 1 -
>>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend  | 6 +++---
>>>> .../x86_64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend     | 6 +++---
>>>> .../x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend     | 6 +++---
>>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend | 6 +++---
>>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend     | 7 +++----
>>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend     | 7 +++----
>>>> .../arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend      | 7 +++----
>>>> 78 files changed, 189 insertions(+), 196 deletions(-)
>>>>
>>>> --
>>>> 2.6.2
>>>>
>>>> --
>>>> _______________________________________________
>>>> poky mailing list
>>>> poky@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/poky


