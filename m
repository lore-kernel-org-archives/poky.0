Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E436F4C80FA4
	for <poky@pokylinux.org>; Mon, 31 Jan 2011 18:33:49 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 31 Jan 2011 16:33:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,406,1291622400"; d="scan'208";a="598254727"
Received: from unknown (HELO [10.255.14.125]) ([10.255.14.125])
	by orsmga002.jf.intel.com with ESMTP; 31 Jan 2011 16:33:49 -0800
Message-ID: <4D4754EC.3090001@linux.intel.com>
Date: Mon, 31 Jan 2011 16:33:48 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky-bounces@yoctoproject.org
References: <1bdc18$jdga4u@fmsmga002.fm.intel.com>
In-Reply-To: <1bdc18$jdga4u@fmsmga002.fm.intel.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 0/5] a series of patches to address some LTP failures
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
X-List-Received-Date: Tue, 01 Feb 2011 00:33:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2011 03:38 AM, poky-bounces@yoctoproject.org wrote:
> From: Kevin Tian<kevin.tian@intel.com>
>
> Because now bugzilla is not usable, no bug number is included in this series.
> I'll report them later with these commits included for reference.
>
> With this series of fixes, all the LTP failures on Qemux86 target are audited
> which composed ~85% total failures on all platforms.
>
> For detail result, please check https://wiki.yoctoproject.org/wiki/LTP_result
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: tk/master
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master
>
> Thanks,
>      Kevin Tian<kevin.tian@intel.com>
> ---
>
>
> Kevin Tian (5):
>    base-files: remove ending colon from default $PATH for root user
>    cronie: enable multi-user crontab usage and make cron environment
>      complete
>    bash: use /bin/bash as default shell when bash is included
>    at: allow normal user to use 'at'
>    task-poky-sdk: add 'file' and 'ldd'
>
Partially pulled to master.

Cronie and at are still pending bases on the postinst issue

Sau!

>   meta/recipes-core/base-files/base-files/profile   |    2 +-
>   meta/recipes-core/base-files/base-files_3.0.14.bb |    2 +-
>   meta/recipes-core/tasks/task-poky-sdk.bb          |    4 ++-
>   meta/recipes-extended/at/at_3.1.12.bb             |   29 +++++++++++++++---
>   meta/recipes-extended/bash/bash.inc               |    5 +++
>   meta/recipes-extended/bash/bash_3.2.48.bb         |    2 +-
>   meta/recipes-extended/bash/bash_4.1.bb            |    2 +-
>   meta/recipes-extended/cronie/cronie/crontab       |   10 ++++++
>   meta/recipes-extended/cronie/cronie_1.4.6.bb      |   33 +++++++++++++++++++-
>   9 files changed, 77 insertions(+), 12 deletions(-)
>   create mode 100644 meta/recipes-extended/cronie/cronie/crontab
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


