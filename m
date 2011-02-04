Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 12E5D4C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 21:47:15 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Feb 2011 19:47:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,424,1291622400"; d="scan'208";a="884232697"
Received: from unknown (HELO [10.255.14.193]) ([10.255.14.193])
	by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2011 19:47:04 -0800
Message-ID: <4D4B76B8.3000100@intel.com>
Date: Thu, 03 Feb 2011 19:47:04 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <849307$be7ei2@azsmga001.ch.intel.com>
In-Reply-To: <849307$be7ei2@azsmga001.ch.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] meta-sugarbay updates
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
X-List-Received-Date: Fri, 04 Feb 2011 03:47:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/03/2011 07:38 PM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> Just a couple kernel bookkeeping commits...
>
> Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/sugarbay-updates
>    Branch: tzanussi/sugarbay-updates
>    Browse:
> http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/sugarbay-updates
>
> Tom Zanussi (2):
>    sugarbay: update kernel SRCREVs
>    meta-sugarbay: switch from standard to standard/common-pc-64
>
>   meta-sugarbay/conf/machine/sugarbay.conf           |    4 ++--
>   .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
>   2 files changed, 3 insertions(+), 3 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Merged into meta-intel master

Thanks

Sau!


