Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 758BF4C80BD4
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 10:19:09 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Dec 2010 08:19:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,245,1291622400"; d="scan'208";a="367710557"
Received: from unknown (HELO [10.255.13.220]) ([10.255.13.220])
	by azsmga001.ch.intel.com with ESMTP; 29 Dec 2010 08:19:08 -0800
Message-ID: <4D1B5F7E.8070907@linux.intel.com>
Date: Wed, 29 Dec 2010 08:19:10 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <4D1A8103.2030501@linux.intel.com>
	<A1C71709-8C15-4B14-941E-965112512C5A@dominion.thruhere.net>
In-Reply-To: <A1C71709-8C15-4B14-941E-965112512C5A@dominion.thruhere.net>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Library paths for Makefile based recipes
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
X-List-Received-Date: Wed, 29 Dec 2010 16:19:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/29/2010 01:18 AM, Koen Kooi wrote:
>
> Op 29 dec 2010, om 01:29 heeft Darren Hart het volgende geschreven:
>
>> I'm working on packaging kernelshark ("make gui" for the trace-cmd recipe
>> basically). It fails trying to link to -lgtk-x11-2.0. I have added gtk+
>> as a DEPENDS and the library does exist in the sysroots. I have also added
>> "inherit pkgconfig" as the project Makefile uses it extensively.
>
> 'inherit pkgconfig' only does DEPENDS_prepend = "pkgconfig-native "

Right, but omitting it could result in the package being built using the 
host pkg-config, which shouldn't be a build dependency.


-- 
Darren Hart
Yocto Linux Kernel

