Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F11CE4C80578
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 00:41:30 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Apr 2011 22:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,264,1301900400"; d="scan'208";a="633645535"
Received: from unknown (HELO [10.255.12.237]) ([10.255.12.237])
	by orsmga002.jf.intel.com with ESMTP; 24 Apr 2011 22:41:30 -0700
Message-ID: <4DB50989.8010605@linux.intel.com>
Date: Sun, 24 Apr 2011 22:41:29 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1303372141.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1303372141.git.tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] fix for bug 994 (host infection in compile_perf)
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
X-List-Received-Date: Mon, 25 Apr 2011 05:41:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/21/2011 12:54 AM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> I haven't been able to reproduce the build failures even with libnewt-devel
> installed, so please test and make sure it fixes the problems you're
> seeing before applying, Saul.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: tzanussi/bugfix-994
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/bugfix-994
>
> Thanks,
>      Tom Zanussi<tom.zanussi@intel.com>
> ---
>
>
> Tom Zanussi (1):
>    linux-tools.inc: turn off newt and dwarf for perf
>
>   meta/recipes-kernel/linux/linux-tools.inc |    4 ++--
>   1 files changed, 2 insertions(+), 2 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Pulled into oe-core and poky/master

Thanks
	Sau!

