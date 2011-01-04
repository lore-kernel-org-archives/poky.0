Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 31C4C4C80039
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 19:20:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Jan 2011 17:20:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,269,1291622400"; d="scan'208";a="369641178"
Received: from unknown (HELO [10.255.14.6]) ([10.255.14.6])
	by azsmga001.ch.intel.com with ESMTP; 03 Jan 2011 17:20:52 -0800
Message-ID: <4D2275F4.9030702@intel.com>
Date: Mon, 03 Jan 2011 17:20:52 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <1293637203.12997.5.camel@elmorro>
In-Reply-To: <1293637203.12997.5.camel@elmorro>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] bblayers.conf.sample: remove meta-emenlow, v2
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
X-List-Received-Date: Tue, 04 Jan 2011 01:20:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/29/2010 07:40 AM, Tom Zanussi wrote:
> meta-emenlow has been moved to the meta-intel repo, so it shouldn't be
> added as a default layer by bblayers.conf.  Users who want to build
> the meta-emenlow layer can just add it to bblayers.conf as they would
> any other layer e.g.
>
Tom,

I am holding pulling this into master and pulling the emenlow stuff from
master, until I have had a chance to coordinate it with Beth, this will 
change the autobuilder and we need to make the adjustments to either 
pull the meta-intel or fix it appropriately.

I have not forgot about these changes.


Sau!


> BBLAYERS = " \
>    /home/trz/yocto/meta \
>    /home/trz/yocto/meta-intel/meta-emenlow \
>    "
>
> v2 changes:
>
> Update LCONF_VERSION as noted by Saul.
>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   meta/conf/bblayers.conf.sample |    3 +--
>   1 files changed, 1 insertions(+), 2 deletions(-)
>
> diff --git a/meta/conf/bblayers.conf.sample b/meta/conf/bblayers.conf.sample
> index 3c7b6e6..b2f37c0 100644
> --- a/meta/conf/bblayers.conf.sample
> +++ b/meta/conf/bblayers.conf.sample
> @@ -1,9 +1,8 @@
>   # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>   # changes incompatibly
> -LCONF_VERSION = "3"
> +LCONF_VERSION = "4"
>
>   BBFILES ?= ""
>   BBLAYERS = " \
>     ##POKYBASE##/meta \
> -  ##POKYBASE##/meta-emenlow \
>     "


