Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A0914C81284
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:30:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 17:30:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="701502242"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 17:30:17 -0800
Message-ID: <4D421C28.7040105@intel.com>
Date: Thu, 27 Jan 2011 17:30:16 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1295655589.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295655589.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] send-pull-request bugfix
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
X-List-Received-Date: Fri, 28 Jan 2011 01:30:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2011 04:21 PM, Scott Garman wrote:
> Hi Saul,
>
> Darren Hart and I discovered that when $CC is set (which
> our meta-toolchain environment script sets up), the value
> leaks into the use of this script. Unsetting $TO as well
> just to be thorough. This pull request fixes that.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/pull-request-fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/pull-request-fix
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (1):
>    send-pull-request: unset $TO and $CC from environment
>
>   scripts/send-pull-request |    4 ++++
>   1 files changed, 4 insertions(+), 0 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!

