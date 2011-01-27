Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B7414C8118C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 09:59:51 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 07:59:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,386,1291622400"; d="scan'208";a="701308717"
Received: from miles.jf.intel.com (HELO [10.7.199.72]) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 07:59:50 -0800
Message-ID: <4D419677.6080100@intel.com>
Date: Thu, 27 Jan 2011 07:59:51 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1296105920.git.edwin.zhai@intel.com>
	<600acc9d3bd9271836ab244de7c072ffe11caec2.1296105920.git.edwin.zhai@intel.com>
In-Reply-To: <600acc9d3bd9271836ab244de7c072ffe11caec2.1296105920.git.edwin.zhai@intel.com>
Subject: Re: [PATCH 2/4] libuser: Upgrade from 0.56.18 to 0.57.1
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
X-List-Received-Date: Thu, 27 Jan 2011 15:59:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2011 09:29 PM, poky-bounces@yoctoproject.org wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
>
> This can fix the vulnerable issue @ http://secunia.com/advisories/42891/

This isn't a big deal at the moment, but I'm thinking about establishing 
a best practice going forward to document security-related fixes. The 
CVE number is regarded as the universal identifier, so something like 
the following is preferred:

* Addresses CVE-2011-0002

The important thing is to include the CVE identifier(s) somewhere in the 
commit log - I may end up developing some tools for extracting that 
information from our commits in the future.

Just FYI for now - this isn't documented anywhere yet.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project
Intel Open Source Technology Center

