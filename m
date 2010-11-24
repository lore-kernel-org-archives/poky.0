Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 041AA4C80052
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:42:18 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 63F3212EC11B
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 06:19:41 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4CEC613A.8020005@linux.intel.com>
References: <4CEC613A.8020005@linux.intel.com>
Date: Wed, 24 Nov 2010 11:42:07 +0000
Message-ID: <1290598927.2799.14.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: linux recipe PV requirements
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
X-List-Received-Date: Wed, 24 Nov 2010 11:42:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-11-23 at 16:50 -0800, Darren Hart wrote:
> Are there restrictions on what the PV variable is set to?
> 
> I'd like to name the recipe I'm working on linux-linaro-2.6.35 and use 
> PR and the git AUTOREV to define the PV value. However, when I make the 
> following change in linux-linaro-2.6.35_git.bb:
> 
> - PV = "2.6.35"
> + PV = "${PR}+git${SRCREV}"

You need a kernel version in there, kernel.bbclass adds a depends to the
kernel of:

virtual/${TARGET_PREFIX}depmod-${@get_kernelmajorversion('${PV}')}

The get_kernelmajorversion() function in linux-kernel-base.bbclass is
failing to determine the kernel version and returning None which results
in the unbuildable dependency error you are seeing.

For further reference I'd point you at the PV's set by other git kernel
recipes:

joshual@scimitar:~/Projects/Yocto/poky/meta/recipes-kernel/linux
$ git grep PV\ =
linux-omap-zoomsync_2.6.32.bb:PV = "2.6.32.7-${OEV}"
linux-omap2_git.bb:PV = "2.6.26"
linux-omap2_git.bb:#PV = "2.6.26+2.6.27-rc1+${PR}+git${SRCREV}"
linux-omap3-pm_git.bb:PV = "2.6.31-rc7+pm+${PR}+git${SRCREV}"
linux-omap3_git.bb:PV = "2.6.27-rc6+${PR}+git${SRCREV}"
linux-yocto_git.bb:PV = "2.6.34+git${SRCPV}"

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


