Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C8424C81250
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:35:26 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:35:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597178858"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.154]) ([10.7.201.154])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 15:35:26 -0800
Message-ID: <4D4201B3.5040007@intel.com>
Date: Thu, 27 Jan 2011 15:37:23 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Lightning/1.0b1
	Thunderbird/3.0.11 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4D41FE3A.7080407@linux.intel.com>
	<599CB0CC-7971-4DA6-813B-58B05B48968B@dominion.thruhere.net>
In-Reply-To: <599CB0CC-7971-4DA6-813B-58B05B48968B@dominion.thruhere.net>
Subject: Re: quilt-native failing with clean master
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
X-List-Received-Date: Thu, 27 Jan 2011 23:35:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 01/27/2011 03:32 PM, Koen Kooi wrote:
> Op 28 jan 2011, om 00:22 heeft Darren Hart het volgende geschreven:
> 
>> Trying to build poky-image-sato-live for atom-pc out of current master:
>>
>> 	021cf7dabf891316a1e909d3972a5232ca53ec80
>>
>> Results in the following for me:
>>
>> ERROR: Error executing a python function in /home/dvhart/source/poky.git/meta/recipes-devtools/quilt/quilt-native_0.48.bb:
>> NameError: global name 'f' is not defined
>>
>> Is anyone seeing something similar? I've just replaced the memory in this machine after discovering it was bad, I suppose it's possible I have a corrupted python interpreter or something like that.
> 
> could it be this one: http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=bb7a42ee4e348724060ec3010ad1a904c17d2d25 ?

This was fixed @ 754047b6ec01df5f3159cce93b17b8493d0af5e1

-b

