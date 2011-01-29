Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A7954C8006D
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 19:45:05 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Jan 2011 17:45:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,394,1291622400"; d="scan'208";a="701843214"
Received: from miles.jf.intel.com (HELO [10.7.199.79]) ([10.7.199.79])
	by orsmga001.jf.intel.com with ESMTP; 28 Jan 2011 17:45:04 -0800
Message-ID: <4D437120.2080304@intel.com>
Date: Fri, 28 Jan 2011 17:45:04 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1296167950.git.scott.a.garman@intel.com>
	<1296228422.2704.19.camel@scimitar>
In-Reply-To: <1296228422.2704.19.camel@scimitar>
Subject: Re: [PATCH 0/9] docbook-utils and related recipes
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
X-List-Received-Date: Sat, 29 Jan 2011 01:45:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/28/2011 07:27 AM, Joshua Lock wrote:
> On Thu, 2011-01-27 at 14:42 -0800, Scott Garman wrote:
>> From: Scott Garman<scott.a.garman@intel.com>
>>
>> Richard,
>>
>> This pull request includes several new recipes to allow us to build
>> documentation for other packages. The main one is docbook-utils, and
>> the other recipes are its dependencies. I've also re-enabled
>> documentation generation in the iputils script and verified it works
>> correctly.
>>
>> These recipes are from OpenEmbedded, and some of the source packges
>> haven't changed in a long time. As such a couple of the recipes I've
>> updated to use modern staging and BBCLASSEXTEND. Please look them over,
>> and if things look good I will also submit them back to OE.
>
> Any reason that we couldn't have the native recipes as target recipes
> with BBCLASSEXTEND? I can't see many targets wanting these recipes, but
> you never know...

I can update these recipes later to do this if it's something the team 
really wants. For now, I think it's most efficient to get something 
working into the tree now and iterate if needed. Is there really much of 
a use case for creating an embedded device that can build documentation?

Re-spinned pull request on its way in a few minutes...

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project
Intel Open Source Technology Center

