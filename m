Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7EC184C80BCF
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 20:56:34 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Jan 2011 18:56:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,316,1291622400"; d="scan'208";a="696281701"
Received: from unknown (HELO [10.255.14.60]) ([10.255.14.60])
	by orsmga001.jf.intel.com with ESMTP; 12 Jan 2011 18:56:33 -0800
Message-ID: <4D2E69E0.5030402@linux.intel.com>
Date: Wed, 12 Jan 2011 18:56:32 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1293749684.git.dvhart@linux.intel.com>
	<e5cc85afdfc1e70dfac07f1e77cfa726b678d8a0.1293749684.git.dvhart@linux.intel.com>
In-Reply-To: <e5cc85afdfc1e70dfac07f1e77cfa726b678d8a0.1293749684.git.dvhart@linux.intel.com>
Subject: Re: [PATCH 1/1] linux-2.6-windriver: atom-pc-preempt_rt meta-data
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
X-List-Received-Date: Thu, 13 Jan 2011 02:56:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Whoops, After just confirming that these are the same as the last ones
sent I came across a problem with them. See below:

On 12/21/2010 09:48 AM, Darren Hart wrote:
> The following patch adds support for the preempt_rt kernel type
> for the atom-pc machine. It should be applied to the wrs_meta
> branch.
> 
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> CC: Bruce Ashfield<bruce.ashfield@windriver.com>
> CC: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   .../bsp/atom-pc/atom-pc-preempt_rt.scc             |    7 +++++++
>   1 files changed, 7 insertions(+), 0 deletions(-)
>   create mode 100644 wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc
>   create mode 100644 wrs/patches/atom_pc-preempt_rt/series
>   create mode 100644 wrs/patches/atom_pc-preempt_rt/status
> 
> diff --git a/wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc b/wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc
> new file mode 100644
> index 0000000..3e13665
> --- /dev/null
> +++ b/wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc
> @@ -0,0 +1,7 @@
> +define WRS_BOARD atom-pc
> +define WRS_KERNEL preempt_rt
> +define WRS_ARCH i386
> +
> +scc_leaf ktypes/preempt_rt atom-pc-preempt_rt

This is incorrect, it should be:

+scc_leaf bsp/common_pc/common_pc-preempt_rt atom-pc-preempt_rt

The previous patch resulted in a bad .config for the rt kernels, one that
wouldn't boot on the live image for the atom-pc - likely due to things like
CONFIG_IDE and CONFIG_SCSI not being present (among _a lot_ of other basic
stuff)! The correct patch follows, sorry for the confusion. 

-- 
Darren Hart
Yocto Linux Kernel



From 76829ed36013a24d6de8085ff5e15aaadf6de21a Mon Sep 17 00:00:00 2001
From: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 21 Dec 2010 09:48:26 -0800
Subject: [PATCH] linux-2.6-windriver: atom-pc-preempt_rt meta-data

The following patch adds support for the preempt_rt kernel type
for the atom-pc machine. It should be applied to the wrs_meta
branch.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/atom-pc/atom-pc-preempt_rt.scc             |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc
 create mode 100644 wrs/patches/atom_pc-preempt_rt/series
 create mode 100644 wrs/patches/atom_pc-preempt_rt/status

diff --git a/wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc b/wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc
new file mode 100644
index 0000000..169207c
--- /dev/null
+++ b/wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc
@@ -0,0 +1,7 @@
+define WRS_BOARD atom-pc
+define WRS_KERNEL preempt_rt
+define WRS_ARCH i386
+
+scc_leaf bsp/common_pc/common_pc-preempt_rt atom-pc-preempt_rt
+
+include bsp/atom-pc/atom-pc.scc
diff --git a/wrs/patches/atom_pc-preempt_rt/series b/wrs/patches/atom_pc-preempt_rt/series
new file mode 100644
index 0000000..e69de29
diff --git a/wrs/patches/atom_pc-preempt_rt/status b/wrs/patches/atom_pc-preempt_rt/status
new file mode 100644
index 0000000..e69de29
-- 
1.7.1

