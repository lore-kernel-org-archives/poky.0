Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83323E004E9
	for <poky@yoctoproject.org>; Mon, 26 Sep 2011 21:40:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Sep 2011 21:40:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,448,1312182000"; d="scan'208";a="67767251"
Received: from unknown (HELO envy.home) ([10.255.14.198])
	by fmsmga001.fm.intel.com with ESMTP; 26 Sep 2011 21:40:40 -0700
Message-ID: <4E8153C8.4010705@linux.intel.com>
Date: Mon, 26 Sep 2011 21:40:40 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: chinmaya hoshing <cahoshing@gmail.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
	<CADkTA4PVKxWW1f1CmfXD3sKd+W0+Vn3JGOV6TeL9PVS+VrWu5A@mail.gmail.com>
	<CADkTA4PXcrk=b92UEPS72Byd5ine_ZRKJs7bzohfZfKBUbzVmw@mail.gmail.com>
	<1316185585.20858.29.camel@ted> <4E7369B7.7080201@mlbassoc.com>
	<CAMTw45Di1_n0N_bOno6_tms0DMpUovWPJ-CbKPiFaptXoE3B8A@mail.gmail.com>
In-Reply-To: <CAMTw45Di1_n0N_bOno6_tms0DMpUovWPJ-CbKPiFaptXoE3B8A@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Getting error in linux-yocto kernel during build.
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
X-List-Received-Date: Tue, 27 Sep 2011 04:40:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 09/20/2011 02:51 AM, chinmaya hoshing wrote:
> Hi ,
> 
> I have set up a git server for linux-yocto. 

Did you do a --bare clone?

> 
> Following is my recipe  :

Is there a reason you are recreating the entire recipe instead of just
adding a layer which only makes the necessary changes in a bbappend file?

> require linux-yocto.inc
> 
> KMACHINE = "yocto/standard/base"
> KMACHINE_qemux86  = "yocto/standard/common-pc/base"
> KMACHINE_qemux86-64  = "yocto/standard/common-pc-64/base"
> KMACHINE_qemuppc  = "yocto/standard/qemu-ppc32"
> KMACHINE_qemumips = "yocto/standard/mti-malta32-be"
> KMACHINE_qemuarm  = "yocto/standard/arm-versatile-926ejs"
> KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
> KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
> KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
> KMACHINE_beagleboard = "yocto/standard/beagleboard"
> KMACHINE_fishriver = "yocto/standard/fishriver"
> 
> KBRANCH = ${KMACHINE}
> KMETA = meta
> 
> LINUX_VERSION ?= "3.0"
> LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
> PR = "r0"
> #PV = "${LINUX_VERSION}+git${SRCPV}"
> #SRCREV_FORMAT = "meta_machine"
> 
> SRC_URI =
> "git://xxx.xxx.xxx.xx/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta" 
>            
> COMPATIBLE_MACHINE =
> "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro|beagleboard)"
> 
> # Functionality flags
> KERNEL_REVISION_CHECKING ?= "t" 
> KERNEL_FEATURES="features/netfilter"
> KERNEL_FEATURES_append_qemux86=" cfg/sound"
> KERNEL_FEATURES_append_qemux86-64=" cfg/sound"
> 
> YOCTO_KERNEL_META_DATA=t
> 
> # Temporary fix for oprofile and latencytop on qemux86-64
> KERNEL_FEATURES_append_qemux86-64=" features/profiling"
> KERNEL_FEATURES_append_qemux86-64=" features/latencytop"
> 
> # extra tasks
> addtask kernel_link_vmlinux after do_compile before do_install
> addtask validate_branches before do_patch after do_kernel_checkout
> addtask kernel_configcheck after do_configure before do_compile
> 
> require linux-tools.inc
> 
> 
>  
> But still I am getting the same result as before . My previous git
> commits in poky source are flashed out , also the only recipe remains in
>  meta/recipe-kernel/ is linux .
> 
> 
> Regards
> C Hoshing

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

