Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2FE094C80B70
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 13:53:39 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 11:53:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589492614"
Received: from doubt.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 11:53:38 -0800
Message-ID: <4D222946.1070704@linux.intel.com>
Date: Mon, 03 Jan 2011 11:53:42 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: linux-yocto for atom-pc configuration error
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
X-List-Received-Date: Mon, 03 Jan 2011 19:53:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Bruce et all,

I noticed ftrace and debugfs are not enabled in the standard branch as 
they are in the 2.6.34 repo. I've added debugfs and ftrace features to 
the meta branch and am trying to build the linux-yocto image.

First I hit an issue where it was looking for standard/atom-pc - instead 
of standard/common-pc/atom-pc. I fixed this in linux-yocto_git.bb. Now I 
hit this during do_kernel_configme. I am using the meta-kernel-dev layer 
and a local repository for the kernel tools as well as the kernel 
repository.

[INFO] doing kernel configme
[INFO] Finding user(s) of branch "yocto/standard/common-pc/atom-pc"
[INFO] Finding user(s) of target -- atom-pc -- common-pc -
[INFO] Branch yocto/standard/common-pc/atom-pc used by atom-pc-standard.scc
Failed to find meta series ./meta/cfg/meta/atom-pc-standard-meta
config of yocto/standard/common-pc/atom-pc (atom-pc-standard.scc) failed
ERROR: Task failed: ('function do_kernel_configme failed', 
'/vol/1/dvhart/poky.git/build/tmp/work/atom-pc-poky-linux/linux-yocto-2.6.37+git0+ee0a10ab687b29c4d22d47e5b28bc8b3ebb7a8d9_0+87aacc373557f8849dde8618fbe1f7f8f2af6038-r14/temp/log.do_kernel_configme.23114')

Any thoughts on where to jump in and start debugging?

-- 
Darren Hart
Yocto Linux Kernel

