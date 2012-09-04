Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B1E9E00344
	for <poky@yoctoproject.org>; Tue,  4 Sep 2012 09:03:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q84G3px2018654;
	Tue, 4 Sep 2012 17:03:51 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17582-06; Tue,  4 Sep 2012 17:03:46 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q84G3j3d018648
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Tue, 4 Sep 2012 17:03:45 +0100
Message-ID: <1346774625.21985.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 04 Sep 2012 17:03:45 +0100
In-Reply-To: <ab587380891da9171acb6cb15dd4539447abe2b7.1346772644.git.bruce.ashfield@windriver.com>
References: <cover.1346772644.git.bruce.ashfield@windriver.com>
	<ab587380891da9171acb6cb15dd4539447abe2b7.1346772644.git.bruce.ashfield@windriver.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/1] linux-yocto/meta-yocto: update SRCREVs to 3.4.9, unionfs, perf and cfg
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
X-List-Received-Date: Tue, 04 Sep 2012 16:03:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-09-04 at 11:35 -0400, Bruce Ashfield wrote:
> Updating the SRCREVs for the following updates to match the oe-core boards:
> 
>  - v3.4.8, v3.4.9
> 
>   - bug fixes:
>       a4c7a04 perf: add SLANG_INC for slang.h
>       e32ab98 unionfs: restore FD_* utility defines
>       9f0fe58 unionfs: update unionfs fork to align with mainline
>       b3fcc2f codel: refine one condition to avoid a nul rec_inv_sqrt
>       ef7cf65 fq_codel: should use qdisc backlog as threshold
>       3f0ed1d net: codel: fix build errors
>       4c06aa1 net/codel: Add missing #include <linux/prefetch.h>
>       2888bf2 codel: use u16 field instead of 31bits for rec_inv_sqrt
>       6edeb2e codel: use Newton method instead of sqrt() and divides
>       2faecd6 fq_codel: Fair Queue Codel AQM
>       edca95f netem: add ECN capability
> 
>    - config/BSP updates:
> 
>       463299b meta: bump kver to v3.4.9
>       6b961c8 CrystalForest: Enable PCI IOV feature
>       4bc2238 meta: Add new pci iov feature
>       70346e6 mpc8315: remove now obsolete CONFIG_MISC_DEVICES
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++----
>  1 files changed, 4 insertions(+), 4 deletions(-)

Merged to master, thanks.

Richard


