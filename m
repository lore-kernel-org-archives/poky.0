Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E61DE00320
	for <poky@yoctoproject.org>; Wed, 17 Aug 2011 06:00:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Aug 2011 06:00:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="39268864"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by orsmga001.jf.intel.com with ESMTP; 17 Aug 2011 06:00:39 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: v sailaja <vsailub4u@gmail.com>
In-Reply-To: <CAFt-cozcx0uPkdK5P7JLUrMcYsSRU6sKyjgEdKTC2Q4kdnvekQ@mail.gmail.com>
References: <CAFt-cozcx0uPkdK5P7JLUrMcYsSRU6sKyjgEdKTC2Q4kdnvekQ@mail.gmail.com>
Date: Wed, 17 Aug 2011 08:00:43 -0500
Message-ID: <1313586043.2394.6.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: SRCREV s for linux-yocto v3.0.1
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
X-List-Received-Date: Wed, 17 Aug 2011 13:00:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-17 at 00:15 -0700, v sailaja wrote:
> Hi,
> 
> 
> I downloaded the poky  and meta-intel source using "git clone"
> 
> 
> git clone git://git.pokylinux.org/poky.git
> git clone git://git.yoctoproject.org/meta-intel.
> 
> 
> I changed the branch from "master" to "remotes/origin/1.1_M3". The
> source contains both the poky and openembedded recipes.
> 
> 
> I modified the local.conf and bblayers.conf for "sugarbay" machine.
> I am trying to build the "core-image-minimal". But by default It is
> taking the linux-yocto v3.0-rc7 because of the SRCREVs.
> 
> 
> "meta-intel/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend"
> 
> 
> ----------------------------ooo---------------------------------
> 
> 
> 
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 
> 
> COMPATIBLE_MACHINE_sugarbay = "sugarbay"
> KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
> 
> 
> SRCREV_machine_pn-linux-yocto_sugarbay ?=
> "3216e7d5c3cada16161481826cdb39c930457587"
> SRCREV_meta_pn-linux-yocto_sugarbay ?=
> "9010d1cbef2633dac7e559a7705c326b7601dd4c"
> 
> 
> -----------------------------ooo-----------------------------------
> 
> 
> 
> 
> SRCREV_machine_pn-linux-yocto_sugarbay ?=
> "3216e7d5c3cada16161481826cdb39c930457587"
> SRCREV_meta_pn-linux-yocto_sugarbay ?=
> "9010d1cbef2633dac7e559a7705c326b7601dd4c"
> 
> 
> These SRCREVs are for linux-yocto v3.0-rc7 but I want to build the
> source for v3.0.1.
> 
> 
> 
> 
> Can anyone Please send me the SRCREV s for linux-yocto v3.0.1 for
> "sugarbay" and "fishriver" machines for the branch
> "remotes/origin/1.1_M3" and Please tell me how to get the SRCREVs.
> 
> 

Hi, I just updated the SRCREVs, so if you want, you can grab them from
the below commit in meta-intel/master.

In the future, you can do the same thing to update the SRCREVs to
whatever you want - basically look at the last commit id (or whatever
commit id you want to use) in the machine branch for the machine you're
interested in and put that in SRCREV_machine_pn-linux-yocto_... and the
same thing for the meta branch - put that SRCREV in
SRCREV_meta_pn-linux-yocto_... of the kernel .bbappend.

Thanks,

Tom


commit fa92a44396b16be74f0de10256b0d42e52cf0bb6
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Wed Aug 17 07:50:46 2011 -0500

    meta-intel: update linux-yocto 3.0 kernel SRCREVs
    
    Update 3.0 kernel SRCREVs for fishriver, fri2, jasperforest,
sugarbay.
    
    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>



> 
> 
> 
> 
> 
> 
> -- 
> Thanks & Regards,
> SAI
> 
> 



