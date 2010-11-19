Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABC854C81068
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 12:33:34 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Nov 2010 10:33:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,224,1288594800"; d="scan'208";a="859478111"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga001.fm.intel.com with ESMTP; 19 Nov 2010 10:33:34 -0800
Received: from [10.255.13.110] (10.255.13.110) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Fri, 19 Nov 2010 11:33:34 -0700
Message-ID: <4CE6C2FC.8020602@intel.com>
Date: Fri, 19 Nov 2010 10:33:32 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1290179273.git.josh@linux.intel.com>
In-Reply-To: <cover.1290179273.git.josh@linux.intel.com>
Subject: Re: [PATCH 0/1] Enable parallel installations of SDK's from different Poky versions
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
X-List-Received-Date: Fri, 19 Nov 2010 18:33:34 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2010 07:07 AM, Joshua Lock wrote:
> Simple patch to enable multiple SDK installations under the /opt/poky namespace separated into folders matching the version of the corresponding Poky distro release.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: josh/sdk
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/sdk
>
> Thanks,
>      Joshua Lock<josh@linux.intel.com>
> ---
>
>
> Joshua Lock (1):
>    poky.conf: move the SDK install into version directories
>
>   meta/conf/distro/poky.conf |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>

NAK. This would potentially break the poky-qemu script, which needs to 
differentiate between whether it is being run with an in-tree Poky setup 
or a standalone toolchain. See how the SDKDIR variable is set in 
poky-qemu-internal.

Mark rightly points out that hardcoded paths to SDK installations is 
kludgy and we need to move toward allowing arbitrary install locations. 
That however is going to take some coordination and edge-case planning 
before we can begin to do the refactoring. Please keep me in the loop on 
those discussions.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

