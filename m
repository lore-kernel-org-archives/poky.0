Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C70E44C8108C
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 18:50:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Jan 2011 16:50:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,297,1291622400"; d="scan'208";a="645059917"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by fmsmga002.fm.intel.com with ESMTP; 09 Jan 2011 16:50:48 -0800
Message-ID: <4D2A57D5.9010404@intel.com>
Date: Mon, 10 Jan 2011 08:50:29 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1294148490.git.edwin.zhai@intel.com>	<377902145104994aab4b69c1239a6a907f946c7c.1294148490.git.edwin.zhai@intel.com>	<4D237B27.6040701@linux.intel.com>
	<4D266450.8010407@intel.com>	<4D26E6C9.70606@intel.com>
	<1294397926.17519.26779.camel@rex>
In-Reply-To: <1294397926.17519.26779.camel@rex>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/7] apr: Update to 1.4.2
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
X-List-Received-Date: Mon, 10 Jan 2011 00:50:50 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



Richard Purdie wrote:
> On Fri, 2011-01-07 at 18:11 +0800, Zhai, Edwin wrote:
>   
>> I have compared the autoconf process between apr-1.3 and 1.4, but found 
>> no clue of why build/libtool.m4 got overwritten only on apr-1.4.
>> Attached log files, and hope some autotools expert can help.
>>
>> Following only occur in 1.4 log
>> libtoolize: copying file `build/libtool.m4'
>> libtoolize: copying file `build/ltoptions.m4'
>>     
>
> This is what happens when libtool decides the version of libtool.m4
> isn't right and replaces it with the system shared copy of that m4 file.
> It usually does this when it finds the system copy is newer if I recally
> correctly so this is the opposite way around to what I'd expect :/.
>   

RP,
Thanks for your info. If it's opposite, we have to change it back in 
configure_append, right?
Is there any other cases like this? One preparing script changes 
libtool.m4, then autoconf replaces it again.

Thanks,
edwin



> Cheers,
>
> Richard
>
>   

