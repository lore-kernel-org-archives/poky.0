Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 981AD4C80B71;
	Thu, 16 Dec 2010 15:56:33 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 13:56:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,357,1288594800"; d="scan'208";a="637196369"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2010 13:56:33 -0800
Received: from [10.255.14.24] (10.255.14.24) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 16 Dec 2010 14:56:32 -0700
Message-ID: <4D0A8B0F.8000208@intel.com>
Date: Thu, 16 Dec 2010 13:56:31 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <4D096431.2000107@linux.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F4093D7@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F4093D7@shsmsx502.ccr.corp.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Recipe Updating Status and call to action
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
X-List-Received-Date: Thu, 16 Dec 2010 21:56:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/15/2010 06:40 PM, Tian, Kevin wrote:
> On the other hand, along with this I realize that there's one area we need further
> discuss. How often should we upgrade packages in a given release cycle? MeeGo
> only does once. For Yocto we want to keep our recipes in cutting-edge which is
> why we schedule two upgrade windows in M2 and M3 this time.

I'd like to question this. Is the goal for Poky/Yocto to track the 
bleeding-edge releases of software, or is the goal to be a well-tested 
and stable foundation for embedded software applications?

Upgrading a recipe within a couple of weeks of its release may end up 
using more of our resources if/when we encounter new bugs that were 
introduced in the new release. Or worse, if we don't encounter them 
during distro builds and then our users take our release and discover 
them for themselves.

I'm not saying we need to be as conservative as long-term-support 
enterprise Linux distros, but IMHO I think racing to always upgrade our 
recipes to versions released a handful of weeks ago can be 
counterproductive in many situations.

A policy I might put forward for consideration is this: recipe upgrades 
are done once per release cycle, and upstream versions that have come 
out within the last 30 days should not be upgraded unless we have a 
really good reason for doing so.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

