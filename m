Return-Path: <scott.a.garman@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 28EFE4C80B70
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:19:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Jan 2011 13:18:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,279,1291622400"; d="scan'208";a="370572894"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 05 Jan 2011 13:18:52 -0800
Received: from [10.255.14.56] (10.255.14.56) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 5 Jan 2011 14:18:51 -0700
Message-ID: <4D24E03A.9020708@intel.com>
Date: Wed, 5 Jan 2011 13:18:50 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1294250102.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294250102.git.scott.a.garman@intel.com>
Subject: Re: [PATCH 0/8] Handful 'o recipe updates
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
X-List-Received-Date: Wed, 05 Jan 2011 21:19:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2011 10:00 AM, Scott Garman wrote:
> Hi Saul,
>
> This pull request includes all of the recipe upgrades Yu Ke recently
> gave me except icu, which I'm still working on. Most of them do not
> involve any upstream upgrades, but there were some recipe cleanups
> that were needed anyway.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/recipe-upgrades3
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/recipe-upgrades3
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>

The reason why nearly all of the patches never made the list is that the 
send-pull-request script prompts for my smtp password for each 
individual email, and I fat-fingered my password for nearly all of them. 
Let me know if you want a re-send; otherwise just check out the above 
url for my commits.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

