Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6BE214C808B0
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 11:59:15 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 09:59:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="688991600"
Received: from unknown (HELO [10.255.14.74]) ([10.255.14.74])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 09:59:14 -0800
Message-ID: <4D0F9972.4030405@linux.intel.com>
Date: Mon, 20 Dec 2010 09:59:14 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <cover.1292630935.git.dvhart@linux.intel.com>	<210a18897b1026f0eaa7fe2eec2efe94779e2aac.1292630935.git.dvhart@linux.intel.com>
	<AANLkTiks2GmL_rgoq0uE_Uz5ecPmQVn5jZxBjE7z3WKE@mail.gmail.com>
In-Reply-To: <AANLkTiks2GmL_rgoq0uE_Uz5ecPmQVn5jZxBjE7z3WKE@mail.gmail.com>
Cc: bruce.ashfield@intel.com, poky@yoctoproject.org
Subject: Re: [PATCH 1/4] linux-yocto-rt: initial PREEMPT_RT recipe for the linux-yocto stable kernel
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
X-List-Received-Date: Mon, 20 Dec 2010 17:59:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/19/2010 09:20 PM, Bruce Ashfield wrote:
> On Fri, Dec 10, 2010 at 5:53 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> ---
>>   .../conf/distro/include/poky-default-revisions.inc |    3 +
>>   .../linux/linux-yocto-rt_stablegit.bb              |   47 ++++++++++++++++++++
>>   2 files changed, 50 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb
>>
>> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
>> index 0612b7d..efb4a5d 100644
>> --- a/meta/conf/distro/include/poky-default-revisions.inc
>> +++ b/meta/conf/distro/include/poky-default-revisions.inc
>> @@ -95,6 +95,9 @@ SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "2ec2edaf256dd8500ee3d4
>>   SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d12f4756e6b5436f"
>>   SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
>>   SRCREV_meta_pn-linux-yocto-stable ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
>> +# preempt_rt SRCREVs
>> +SRCREV_machine_pn-linux-yocto-rt_qemux86-64 ?= "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
>> +SRCREV_meta_pn-linux-yocto-rt ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
>>   # development SRCREVs
>>   SRCREV_machine_pn-linux-yocto_qemuarm = "87e00a2d47ba80b4ad1f9170cb3f6cf81f21d739"
>>   SRCREV_machine_pn-linux-yocto_qemumips = "7231e473dd981a28e3cea9f677ed60583e731550"
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb b/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb
>> new file mode 100644
>> index 0000000..cb182da
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb
>> @@ -0,0 +1,47 @@
>> +inherit kernel
>> +require linux-yocto.inc
>> +
>> +KMACHINE_qemux86  = "common_pc/base"
>
> For stable, this one would be common_pc, which I see points out a bug in
> the -stable recipe. I'll fix that one in the morning.
>
>> +KMACHINE_qemux86-64  = "common_pc_64"
>> +KMACHINE_qemuppc  = "qemu_ppc32"
>> +KMACHINE_qemumips = "mti_malta32_be"
>> +KMACHINE_qemuarm  = "arm_versatile_926ejs"
>> +KMACHINE_atom-pc  = "atom-pc"
>> +KMACHINE_routerstationpro = "routerstationpro"
>> +KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
>> +KMACHINE_beagleboard = "beagleboard"
>> +
>> +LINUX_VERSION ?= "2.6.34"
>> +LINUX_KERNEL_TYPE = "preempt_rt"
>> +LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE_EXTENSION}"
>
> In the initial factoring of the recipes had these in a common location, but
> when the -stable and -dev kernels split the branching I had to move
> the branch specifications, kernel version and extension into the specific
> recipe files and out of the includes (since they were different).
>
> If we end up with a proliferation of recipes, it does make sense to create
> a stablegit.inc and devgit.inc (or some other suitable names), since
> we clearly don't want to repeat the machie mappings, and extension
> everywhere. I'll toss that into an upcoming series.
>
>> +
>> +PR = "r0"
>> +PV = "${LINUX_VERSION}+git${SRCPV}"
>> +SRCREV_FORMAT = "meta_machine"
>
> Same as this, we can make this part of an include
>
>> +
>> +COMPATIBLE_MACHINE = "(qemux86-64)"
>> +
>> +# this performs a fixup on the SRCREV for new/undefined BSPs
>> +python __anonymous () {
>> +    import bb, re, string
>> +
>> +    rev = bb.data.getVar("SRCREV_machine", d, 1)
>> +    if rev == "standard":
>> +        bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
>> +
>> +    kerntype = string.replace(bb.data.expand("${LINUX_KERNEL_TYPE}", d), "_", "-")
>> +    bb.data.setVar("LINUX_KERNEL_TYPE_EXTENSION", kerntype, d)
>> +}
>
> This can probably go away soon, either to somewhere common, or away
> completely but for now it is required.
>
>> +
>> +SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
>> +           git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"
>
> This should be inherited as well, more to factor out, good to see more
> recipes that highlight what I missed.
>
>> +
>> +# Functionality flags
>> +KERNEL_REVISION_CHECKING ?= "t"
>> +KERNEL_FEATURES=features/netfilter
>> +
>> +# extra tasks
>> +addtask kernel_link_vmlinux after do_compile before do_install
>> +addtask validate_branches before do_patch after do_kernel_checkout
>
> Probably the tasks as well. Something to try at least.
>
> But it looks good, not as small as we'd want, but getting there. Having
> too small a recipe with everything factored out is also bad, but the arcane
> parts should at least be made common.

Agreed on all points. Much of the above should be in an include. I think 
we should keep "COMPATIBLE MACHINES", "KERNEL_FEATURES", and possible 
"KMACHINE_*" in each recipe instance. Or are we better off to just 
override them in each instance?

-- 
Darren Hart
Yocto Linux Kernel

