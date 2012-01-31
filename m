Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA2B2E00303
	for <poky@yoctoproject.org>; Tue, 31 Jan 2012 08:19:24 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 Jan 2012 08:19:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118604282"
Received: from unknown (HELO envy.home) ([10.255.14.180])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2012 08:19:23 -0800
Message-ID: <4F28146E.10104@linux.intel.com>
Date: Tue, 31 Jan 2012 08:18:54 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1327954069.git.bruce.ashfield@windriver.com>
	<a418a0b035767546908156d87c6c01d1aaceaa6f.1327954069.git.bruce.ashfield@windriver.com>
In-Reply-To: <a418a0b035767546908156d87c6c01d1aaceaa6f.1327954069.git.bruce.ashfield@windriver.com>
X-Enigmail-Version: 1.3.5
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/2] linux-yocto/meta-yocto: create linux-yocto 3.2 bbappend
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
X-List-Received-Date: Tue, 31 Jan 2012 16:19:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/30/2012 12:16 PM, Bruce Ashfield wrote:
> Now that the 3.2 kernel has been introduced, we need a 3.2 bbappend for
> the yocto hardware reference boards.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   19 +++++++++++++++++++
>  1 files changed, 19 insertions(+), 0 deletions(-)
>  create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
> 
> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
> new file mode 100644
> index 0000000..5e25910
> --- /dev/null
> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
> @@ -0,0 +1,19 @@
> +KMACHINE_atom-pc  = "atom-pc"
> +KMACHINE_routerstationpro = routerstationpro"
> +KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
> +KMACHINE_beagleboard = "beagleboard"
> +
> +KBRANCH_atom-pc  = "standard/default/common-pc/atom-pc"
> +KBRANCH_routerstationpro = "standard/default/routerstationpro"
> +KBRANCH_mpc8315e-rdb = "standard/default/fsl-mpc8315e-rdb"
> +KBRANCH_beagleboard = "standard/default/beagleboard"

Do all of these machines still have BSP-specific patches which require
their own branch?

--
Darren

> +
> +SRCREV_machine_atom-pc ?= "417fc778a86e81303bab5883b919ee422ec51c04"
> +SRCREV_machine_routerstationpro ?= "e015d29f374cd986e15f636b6b84b514d95d76ed"
> +SRCREV_machine_mpc8315e-rdb ?= "2349967f408cc60db2b1c89fcefffc81428f9341"
> +SRCREV_machine_beagleboard ?= "417fc778a86e81303bab5883b919ee422ec51c04"
> +
> +COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
> +COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
> +COMPATIBLE_MACHINE_beagleboard = "beagleboard"
> +COMPATIBLE_MACHINE_atom-pc = "atom-pc"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

