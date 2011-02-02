Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A37244C800A8
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 02:34:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2011 00:34:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,413,1291622400"; d="scan'208";a="598703508"
Received: from unknown (HELO [10.255.14.193]) ([10.255.14.193])
	by orsmga002.jf.intel.com with ESMTP; 02 Feb 2011 00:34:32 -0800
Message-ID: <4D491718.7030600@intel.com>
Date: Wed, 02 Feb 2011 00:34:32 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: scott.m.rifenbark@intel.com
References: <cover.1296594728.git.scott@scott-desktop.(none)>
In-Reply-To: <cover.1296594728.git.scott@scott-desktop.(none)>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] [DOCS] Fix to the Poky Ref Manual
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
X-List-Received-Date: Wed, 02 Feb 2011 08:34:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/01/2011 06:05 PM, scott.m.rifenbark@intel.com wrote:
> From: Scott Rifenbark<scott@scott-desktop.(none)>
>
> The manual was not building during the make due to a
> stray</literallayout>  command.  I removed it to correct
> the make operation.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: srifenbark/docs
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs
>
> Thanks,
>       <>
> ---
>
>
> Scott Rifenbark (1):
>    documentation/poky-ref-manual/extendpoky.xml:  Fixed make problem
>
>   documentation/poky-ref-manual/extendpoky.xml |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Master

Thanks

Sau!


