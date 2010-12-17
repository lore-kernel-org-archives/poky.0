Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B4D674C80BCF
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 10:17:56 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Dec 2010 08:17:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,361,1288594800"; d="scan'208";a="637528496"
Received: from unknown (HELO [10.255.14.50]) ([10.255.14.50])
	by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2010 08:17:26 -0800
Message-ID: <4D0B8D17.9020805@linux.intel.com>
Date: Fri, 17 Dec 2010 08:17:27 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <4D0AA615.7050505@linux.intel.com>
	<AANLkTi=Ydq_ttWB6=P8F9wCx06Q6zWMzCuT4FwvdmWL7@mail.gmail.com>
In-Reply-To: <AANLkTi=Ydq_ttWB6=P8F9wCx06Q6zWMzCuT4FwvdmWL7@mail.gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: kernel SRCREV and meta series woes re new preempt_rt recipe
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
X-List-Received-Date: Fri, 17 Dec 2010 16:17:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/17/2010 05:53 AM, Bruce Ashfield wrote:
> On Thu, Dec 16, 2010 at 6:51 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
>> Hey Bruce,
>>
>> (lots of logs, explanation all through to the end)
>>
>> I'm running into a couple issues I haven't been able to explain.
>> I'm building from poky-contrib dvhart/rt which I rebased against
>> zedd/kernel today (646be7efc3c2a966607526439e3ad812cb4ae3f8). My
>> local.conf has 'MACHINE?=qemux86-64'.
>
> This repo is missing a paired up kernel repo modification, but it should
> be sane.
>
>>
>> You can see the linux-yocto-rt recipe in my contrib branch mentioned
>> above, but for quick reference, here's the diff from linux-yocto-stable:
>
> one demerit point fine for a non-unified diff ;)

Heh, in this case I thought the simple diff did a better job 
highlighting the only significant change was:

LINUX_KERNEL_TYPE = "preempt_rt"

>
>>
>>         $ diff linux-yocto-stable_git.bb linux-yocto-rt_stablegit.bb
>>         14a15
>>         >  LINUX_KERNEL_TYPE = "preempt_rt"
>>         21c22
>>         <  COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
>>         ---
>>         >  COMPATIBLE_MACHINE = "(qemux86-64)"
>>         32a34
>>         >       print "LINUX_KERNEL_TYPE_EXTENSION: ", bb.data.getVar("LINUX_KERNEL_TYPE_EXTENSION", d)
>>         37a40,41
>>         >  #SRCREV_machine_pn-linux-yocto-rt_qemux86-64 = "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
>>         >  #SRCREV = "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
>>
>> I determined the SRCREV from:
>>         $ git log --pretty=oneline origin/common_pc_64-preempt_rt -1
>>         f49444f06875894389e640bcda6c3f6ceb1f0c3e Merge branch 'standard' into common_pc_
>>
>
> That should be the right rev.
>

Richard,

Any thoughts on this first error - from here down to Bruce's comment?


>> First, bitbake is complaining about SRCREV while parsing
>> linux-yocto-rt_stablegit.bb:
>>
>>         $ bitbake linux-yocto-rt
>>         NOTE: Handling BitBake files: | (0236/0803) [29 %]
>>         LINUX_KERNEL_TYPE_EXTENSION:  preempt-rt # dvhart debug
>>         NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
>>         ${@bb.fetch.get_srcrev(d)}
>>         NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
>>         ${LINUX_VERSION}+git${SRCPV}
>>         NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
>>         ${PN}-${EXTENDPE}${PV}-${PR}
>>         NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
>>         ${TMPDIR}/work/${MULTIMACH_TARGET_SYS}/${PF}
>>         NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
>>         ${WORKDIR}/linux
>>         NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
>>                 cd ${S}
>>                 if [ -f ${WORKDIR}/defconfig ]; then
>>                     defconfig=${WORKDIR}/defconfig
>>                 fi
>>
>>                 kbranch=${KBRANCH}
>>
>>                 # simply ensures that a branch of the right name has been created
>>                 createme ${ARCH} ${kbranch} ${defconfig}
>>                 if [ $? -ne 0 ]; then
>>                         echo "ERROR. Could not create ${kbranch}"
>>                         exit 1
>>                 fi
>>
>>                 # updates or generates the target description
>>                 if [ -n "${KERNEL_FEATURES}" ]; then
>>                        addon_features="--features ${KERNEL_FEATURES}"
>>                 fi
>>                 updateme ${addon_features} ${ARCH} ${WORKDIR}
>>                 if [ $? -ne 0 ]; then
>>                         echo "ERROR. Could not update ${kbranch}"
>>                         exit 1
>>                 fi
>>
>>                 # executes and modifies the source tree as required
>>                 patchme ${kbranch}
>>                 if [ $? -ne 0 ]; then
>>                         echo "ERROR. Could not modify ${kbranch}"
>>                         exit 1
>>                 fi
>>
>>         NOTE: Error expanding variable do_patch
>>         ERROR: Please set SRCREV to a valid value while parsing /home/dvhart/data/poky.git/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb
>>         NOTE: Handling BitBake files: - (0802/0803) [99 %]Command execution failed: Traceback (most recent call last):
>>           File "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/bb/command.py", line 85, in runAsyncCommand
>>             self.cooker.updateCache()
>>           File "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/bb/cooker.py", line 804, in updateCache
>>             if not self.parser.parse_next():
>>           File "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/bb/cooker.py", line 1036, in parse_next
>>             raise ParsingErrorsFound
>>         ParsingErrorsFound
>>
>
>> I have added a SRC_REV in poky-default-revisions:
>>         +# preempt_rt SRCREVs
>>         +SRCREV_machine_pn-linux-yocto-rt_qemux86-64 ?= "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
>
> I've seen this man times, and typically it has always had to do with
> processing order of the files related to the fetcher. I'm hoping
> Richard reads this and can jump in with more details, since this is
> something internal to BB and not something I've had the pleasure
> of adding or digging into very much.
>
>>
>>
>> If I add the following to linux-yocto-rt_stablegit.bb:
>>         SRCREV = "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
>
> This hits it with a hammer .. yes. Because you set this, we aren't
> counting on the machine specific override of SRCREV to set the
> variable.  So this ensures that the variable has *something*, just
> not something that the fetcher will use properly.


But will it send the proper information to the kernel tools? I 
understand something needs to get fixed in bitbake or the linux-yocto 
recipe components, but does this short-cut that to allow us to examine 
the kernel-tools issues?


>>
>>
>> I get passed the parse error, but do_patch fails:
>>
>>         Unstaged changes after reset:
>>         M       .gitignore
>>         M       Documentation/DocBook/kgdb.tmpl

<snip>

>>         Aborting
>>         warning: could not find ktypes/temp.scc
>>         ./0-wrs_meta-temp-33ebe31bfbabe8a7793524c85ea65707.sco: line 14: temp_68b329da9893e34099c7d8ad5cb9c940: command not found
>>         ERROR. Could not locate meta series for common_pc_64-preempt_rt
>>         ERROR: Task failed: ('function do_patch failed', '/vol/1/dvhart/poky.git/build/tmp/work/qemux86-64-poky-linux/linux-yocto-rt-2.6.34+git1+f49444f06875894389e640bcda6c3f6ceb1f0c3e_2+f49444f06875894389e640bcda6c3f6ceb1f0c3e-r0/temp/log.do_patch.30710')
>
>
> This means you built a random temporary board and when the branch
> validation steps kicked in, they declared that patches were not present,
> and tried to re-push changes (which were really there) and hence caused
> your failure.
>
> It implies that your tools weren't up to date to me. Since I made changes
> to allow it to locate the proper meta series adapting for the _ vs -
> in the name.

I thought we left the _ in the kernel repository and only munged it to - 
in the bitbake string. The log mentions "common_pc_64-preempt_rt" which 
I took to mean it was looking for the right thing. Is this not the case?

>
> I'll check the SRCREV I pushed for the tools and see if it is out of date.
>
>>
>>
>> I look at look at the linux directory:
>>         $ cd tmp/work/qemux86-64-poky-linux/linux-yocto-rt-2.6.34+git1+f49444f06875894389e640bcda6c3f6ceb1f0c3e_2+f49444f06875894389e640bcda6c3f6ceb1f0c3e-r0/linux/
>>         $ git branch
>>           arm_versatile_926ejs-standard
>>           atom-pc-standard
>>           beagleboard-standard
>>           blacksand-standard
>>           common_pc-preempt_rt
>>           common_pc-standard
>>           common_pc_64-preempt_rt
>>           common_pc_64-standard
>>           crownbay-standard
>>           davinci-consolidated-2.6.34-merge
>>           emenlow-standard
>>           fsl-mpc8315e-rdb-standard
>>           kgdb-2.6.34-base-merge
>>           master
>>           mti_malta32_be-standard
>>           mti_malta32_le-standard
>>           omap-base-merge
>>           preempt_rt
>>           qemu_ppc32-standard
>>           routerstationpro-standard
>>           rt-2.6.34-base-merge
>>           standard
>>           wrs_base
>>           wrs_meta
>>           wrs_meta-orig
>>         * wrs_meta-temp
>>
>> This suggests to me that I'm not hitting the previous
>> no-local-branches-after-clone issues, and that "common_pc-preempt_rt"
>> does indeed exist. A quick review of the linux-2.6-wrs.git wrs_meta
>> branch wrs directory suggests all the preempt-rt meta data exists and
>> matches the expected naming.
>>
>>         $ find wrs -name "*preempt_rt*"
>>         wrs/cfg/kernel-cache/bsp/common_pc/common_pc-preempt_rt.scc
>>         wrs/cfg/kernel-cache/bsp/common_pc_64/common_pc_64-preempt_rt.scc
>>         wrs/cfg/kernel-cache/ktypes/preempt_rt
>>         wrs/cfg/kernel-cache/ktypes/preempt_rt/preempt_rt.cfg
>>         wrs/cfg/kernel-cache/ktypes/preempt_rt/preempt_rt.scc
>>         wrs/cfg/meta/common_pc-preempt_rt-meta
>>         wrs/cfg/meta/common_pc_64-preempt_rt-meta
>>         wrs/patches/common_pc_64-preempt_rt
>>         wrs/patches/preempt_rt
>>         wrs/patches/common_pc-preempt_rt
>>
>>
>> Any thoughts on what might be going wrong?
>
> Just the tools :) Since I just built the same thing here and it worked. I'll
> grab your recipe and have a look at the SRCREV and hopefully send a
> consolidated series ASAP.

dvhart@doubt:wr-kernel-tools.git$ git log --pretty=oneline -1
796d7fef92b2eed449c17c14441587ff0c465368 configme: check alternate 
meta-series

$ grep kern-tools 
../../../meta/conf/distro/include/poky-default-revisions.inc
SRCREV_pn-kern-tools-native ??= "796d7fef92b2eed449c17c14441587ff0c465368"

They appear to be in agreement, and that SRCREV is for the META_ALT 
patch - but it wasn't obvious to me if that was the one to account for 
-_ mangling.

-- 
Darren Hart
Yocto Linux Kernel

