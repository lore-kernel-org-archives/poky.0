Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B14D64C80050;
	Fri, 31 Dec 2010 11:16:30 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 Dec 2010 09:16:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,255,1291622400"; d="scan'208";a="692375633"
Received: from unknown (HELO [10.255.13.218]) ([10.255.13.218])
	by orsmga001.jf.intel.com with ESMTP; 31 Dec 2010 09:16:29 -0800
Message-ID: <4D1E0FED.4080305@intel.com>
Date: Fri, 31 Dec 2010 09:16:29 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1293744156.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1293744156.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-yocto: update to 2.6.37-rc8
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
X-List-Received-Date: Fri, 31 Dec 2010 17:16:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/30/2010 01:31 PM, Bruce Ashfield wrote:
> Nothing fancy here, just updating to track 2.6.37-rc8. Compile tested
> for all arches.
>
Maybe not fancy, but it's breaking the build!  Checkout the 
distro-testing autobuild from last night, I am backing this out of 
distro/master for now.

Sau!

> Cheers,
>
> Bruce
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: zedd/kernel
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
>
> Thanks,
>      Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>
>
> Bruce Ashfield (1):
>    linux-yocto: update to 2.6.37-rc8
>
>   .../conf/distro/include/poky-default-revisions.inc |   24 ++++++++++----------
>   1 files changed, 12 insertions(+), 12 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


