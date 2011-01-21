Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C236D4C80BD4
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 02:35:28 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2011 00:35:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,357,1291622400"; d="scan'208";a="699105571"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2011 00:35:27 -0800
Message-ID: <4D394592.1030504@intel.com>
Date: Fri, 21 Jan 2011 16:36:34 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <cover.1295397702.git.edwin.zhai@intel.com>	<4D38BC0B.7080501@intel.com>
	<4D38DFB5.3000907@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D9F1089AB@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D9F1089AB@shsmsx502.ccr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 0/6] 2nd pull request: UX, gtk+/apr, Edwin, Jan19, 2011
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
X-List-Received-Date: Fri, 21 Jan 2011 08:35:29 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



Tian, Kevin wrote:
>>> webkit-gtk 1.2.6
>>>
>>>       
>> Our poky seems never has stable release, and always use development
>> branch. Maybe we want some new feature? RP can comment. Another benefit
>> is development branch is under svn, so we can selectively pick some
>> modules instead of big whole repo. Given development branch, there is no
>> even/odd difference.
>>
>> I have a plan to change it to stable release with the cost of long
>> download & compile time, but I'm afraid can't make it in this release cycle.
>>     
>
> Is it feasible to use development branch but only fetch the tag matching the stable
> release? This way you get the benefit of svn while still sits in stable version.
>   

Stable release also has its own git tree. My understanding is all the 
valuable fix and feature should be selectively backported to stable 
tree. So there is no 1:1 relationship between stable and development tree:(

> Thanks
> Kevin
>   

