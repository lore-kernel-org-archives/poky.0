Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66E314C80578
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 00:04:57 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Apr 2011 22:04:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,264,1301900400"; d="scan'208";a="424868686"
Received: from unknown (HELO [10.255.12.237]) ([10.255.12.237])
	by azsmga001.ch.intel.com with ESMTP; 24 Apr 2011 22:04:56 -0700
Message-ID: <4DB500F8.4000207@intel.com>
Date: Sun, 24 Apr 2011 22:04:56 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4DAC495F.2040406@mlbassoc.com>
In-Reply-To: <4DAC495F.2040406@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH v2] Control over when package init scripts are run
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
X-List-Received-Date: Mon, 25 Apr 2011 05:04:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/18/2011 07:23 AM, Gary Thomas wrote:
> When a package is built, some installation scripts must be
> performed on the target. In the case of a complete image,
> these scripts are run by a separate step at init time, but
> only during the first boot (other package install scripts
> can just be run when the package is installed on the target).
>
> This patch lets the distribution (or user) decide when these
> postponed install scripts should run. The default is normally
> near the end of init, but there may be times when it's beneficial
> to run them earlier so the "when" can be overridden.
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
Pulled into oe-core and poky/master

Thanks
	Sau!


