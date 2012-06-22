Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE987E01426
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 06:01:41 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Jun 2012 06:01:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="159562990"
Received: from unknown (HELO helios.localnet) ([10.252.120.123])
	by azsmga001.ch.intel.com with ESMTP; 22 Jun 2012 06:01:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 22 Jun 2012 14:01:39 +0100
Message-ID: <21623227.IdSUJJ2Hr3@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FE45BE3.3090200@mlbassoc.com>
References: <4FE220B8.2080903@mlbassoc.com> <3380572.szjuG0GuWa@helios>
	<4FE45BE3.3090200@mlbassoc.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: New warning
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
X-List-Received-Date: Fri, 22 Jun 2012 13:01:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 22 June 2012 05:49:55 Gary Thomas wrote:
> I see now what's causing the warning, but I don't see a good way to fix it.
> 
> I have my own DISTRO, similar to meta-yocto, plus a number of BSP layers. 
> Only one BSP layer will be selected in bblayers.conf.
> 
> My meta tree looks something like this:
>    /local/poky-multi/
>      meta/
>      meta-yocto/
>      meta-ti/
>      meta-MYDISTRO/
>      meta-BSPa/
>      meta-BSPb/
>      ...
>      meta-BSPn/
> A typical build will have this for bblayers.conf:
>    BBLAYERS = " \
>      /local/poky-multi/meta \
>      /local/poky-multi/meta-MYDISTRO \
>      /local/poky-multi/meta-BSPf \
>      /local/poky-multi/meta-ti \
>    "
> 
> The problem is that my generic layer1 has a main recipe which is used by
> only a few of the BSP layers (layerBSPa, layerBSPb, etc).  For example, if
> my configuration selects meta-BSPf, that BSP may not need to use the recipe
> in question, but it's still in meta-MYDISTRO.  More concretely,
> meta-MYDISTRO defines a recipe 'fpga-tool' which needs BSP specific setup
> files like this:
>    % find /local/poky-multi -name "fpga-tools*.bb*"
>    /local/poky-multi/meta-MYDISTRO/packages/fpga/fpga-tools_0.0.bb
>    /local/poky-multi/meta-BSPc/packages/fpga-tools_0.0.bbappend
>    /local/poky-multi/meta-BSPd/packages/fpga-tools_0.0.bbappend
> Notice that there is no fpga-tools setup in meta-BSPa.  If I'm building for
> BSPa, I'll get this warning:
>    WARNING: Unable to get checksum for fpga-tool SRC_URI entry
> fpga_gpio_layout.h: file could not be found WARNING: Unable to get checksum
> for fpga-tool SRC_URI entry video_mux.vme: file could not be found
> 
> I can see how to fix this warning by defining those files with dummy
> versions in meta-MYDISTRO

I guess if I were doing it I would not make the BSP layers depend upon the 
distro layer, as Tomas was suggesting. In any case though I suspect the best 
way to handle this is to use COMPATIBLE_MACHINE which you set to some invalid 
value in your distro layer recipe and then append to that value with the 
actual MACHINE in the bbappend in each BSP, e.g.


meta-MYDISTRO recipes/fpga/fpga-tools_0.0.bb:
...
COMPATIBLE_MACHINE = "not-valid"
...


meta-BSPc recipes/fpga/fpga-tools_0.0.bbappend:
...
COMPATIBLE_MACHINE .= "|machinec"
...


meta-BSPd recipes/fpga/fpga-tools_0.0.bbappend:
...
COMPATIBLE_MACHINE .= "|machined"
...


Then, the recipe will be skipped if it is not available for the current 
MACHINE.

> It gets more complicated as my kernel recipe (in meta-MYDISTRO) references
> files like SRC_URI += "file://${MACHINE}.patch"
> I don't see any way to define a dummy version of this.

Rather than ${MACHINE}.patch, the traditional way to do this is to have a 
generic name for the file and then use a MACHINE-named subdirectory within your 
BSP layers to define the machine-specific version. You can always make the dummy 
patch not apply or specifically check for some aspect added by the dummy in 
do_configure.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

