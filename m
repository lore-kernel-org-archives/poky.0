Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 238E24C8123C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:12:36 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Jan 2011 17:12:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="380986334"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by azsmga001.ch.intel.com with ESMTP; 27 Jan 2011 17:12:35 -0800
Message-ID: <4D421802.80805@intel.com>
Date: Thu, 27 Jan 2011 17:12:34 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1295655857.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295655857.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] poky-extract-sdk bugfix for #670
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
X-List-Received-Date: Fri, 28 Jan 2011 01:12:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2011 04:27 PM, Scott Garman wrote:
> Hi Saul,
>
> This pull request includes a fix for the issue Diego Sueiro
> reported where relative paths given to the poky-extract-sdk
> script cause errors.
>
> Josh: This is a low-risk commit that I'd like to see included
> with our Laverne point-release.
>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/extract-sdk-fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/extract-sdk-fix
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (1):
>    poky-extract-sdk: allow relative paths for extract-dir
>
>   scripts/poky-extract-sdk |    5 +++++
>   1 files changed, 5 insertions(+), 0 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!

