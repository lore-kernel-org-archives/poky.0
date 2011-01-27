Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CC344C81146
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 18:40:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Jan 2011 16:40:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,383,1291622400"; d="scan'208";a="380448305"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by azsmga001.ch.intel.com with ESMTP; 26 Jan 2011 16:40:34 -0800
Message-ID: <4D40BF02.3020806@linux.intel.com>
Date: Wed, 26 Jan 2011 16:40:34 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20110126222304.75B03CD1385@gemini.denx.de>
In-Reply-To: <20110126222304.75B03CD1385@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: Build of meta-toolchain-sdk fails
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
X-List-Received-Date: Thu, 27 Jan 2011 00:40:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2011 02:23 PM, Wolfgang Denk wrote:
> Hi,
>
> I'm trying to build "meta-toolchain-sdk" for a machine pretty much
> identical to qemuppc:
>
> this works fine for commit 4cd1118, but fails for 74783fe like this:
>
> ...
> | Configuring libgypsy0.
> | Configuring libgypsy-dbg.
> | Configuring task-poky-standalone-sdk-target.
> | Configuring task-poky-standalone-sdk-target-dbg.
> | Configuring task-poky-standalone-gmae-sdk-target.
> | Configuring libtelepathy-dbg.
> | Configuring task-poky-standalone-gmae-sdk-target-dbg.
> | Collected errors:
> |  * satisfy_dependencies_for: Cannot satisfy the following dependencies for task-poky-standalone-gmae-sdk-target:
> |  *    libstartup-notification-1-0 (>= 0.10) *         xcb-util (>= 0.3.6) *
> |  * opkg_install_cmd: Cannot install package task-poky-standalone-gmae-sdk-target.
> | Function 'do_populate_sdk' failed (see /opt/poky/build-soft-float-support-52d1403/tmp/work/ppc603e-poky-linux/meta-toolchain-sdk-1.0-r0/temp/log.do_populate_sdk.17742 for further information)
> NOTE: package meta-toolchain-sdk-1.0-r0: task do_populate_sdk: Failed
> ERROR: Task 9 (/home/wd/git/poky/work/meta/recipes-core/meta/meta-toolchain-sdk.bb, do_populate_sdk) failed with exit code '1'
>
>
> Is this a known problem?

Wolfgang,

Was this a scratch build?  I just build
MACHINE=qemuppc bitbake meta-toolchain-sdk

and that worked OK, did you do this from an exisiting build?  There was 
a recent set of changes that require restarting from a clean state.

If you can please try that.

Thanks
    Sau!

>
> Best regards,
>
> Wolfgang Denk
>


