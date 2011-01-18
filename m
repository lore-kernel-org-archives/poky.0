Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C64B24C81065
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 16:44:01 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2011 14:44:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,340,1291622400"; d="scan'208";a="878647649"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2011 14:44:01 -0800
Message-ID: <4D3617B0.3020009@intel.com>
Date: Tue, 18 Jan 2011 14:44:00 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jessica Zhang <jessica.zhang@intel.com>
References: <cover.1295288961.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1295288961.git.jessica.zhang@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Remove sanity check for i686
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
X-List-Received-Date: Tue, 18 Jan 2011 22:44:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/17/2011 10:29 AM, Jessica Zhang wrote:
> I've tested against a newly built toolchain with host as i686 and target as i586 and used the toolchain cross compile cvs(c) and suduku(c++) applications and ran them on the target without issues.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: jzhang/bitbake_i686
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jzhang/bitbake_i686
>
> Thanks,
>      Jessica Zhang<jessica.zhang@intel.com>
> ---
>
>
> Jessica Zhang (1):
>    remove sanity check for SDK_ARCH=i686 due to recent fixes in cross
>      toolchain areas, etc. the old issue no longer exists
>
Jessica:

Can you re-submit this with a more correct subject line, the format is 
typically:

<recipe/bbclass>: short synopsis
[Blank Line]
Longer Description of fix if needed

Signed-off-by: ...

For example this one might be:

sanity.bbclass: remove SDK_ARCH Check

remove sanity check for SDK_ARCH=i686 due to recent fixes in cross 
toolchain areas, etc. the old issue no longer exists


Thanks
   Sau!

>   meta/classes/sanity.bbclass |    3 ---
>   1 files changed, 0 insertions(+), 3 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


