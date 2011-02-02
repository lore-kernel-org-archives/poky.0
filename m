Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F36304C800AA
	for <poky@lists.pokylinux.org>; Wed,  2 Feb 2011 11:42:17 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Feb 2011 09:42:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,414,1291622400"; d="scan'208";a="883684184"
Received: from unknown (HELO [10.255.14.170]) ([10.255.14.170])
	by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2011 09:42:03 -0800
Message-ID: <4D49976E.5030800@linux.intel.com>
Date: Wed, 02 Feb 2011 09:42:06 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D499346.4050800@mlbassoc.com>
In-Reply-To: <4D499346.4050800@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Poky & armv5te
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
X-List-Received-Date: Wed, 02 Feb 2011 17:42:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2011 09:24 AM, Gary Thomas wrote:
> I'd like to use Poky with my OMAP-L138 which is armv5te
> Sadly today, this just isn't a go because of GCC issues.
> I've tried all the combinations which are in the trees
> (main & contrib) with no luck:
> * 4.3.3 - fails to build GCC
> * 4.5.1 - everything builds but kernel crashes
> * 4.5.2 - fails to build GCC
>
> Am I totally out of luck?

What are you running into? I've recently backported  some changes in 
support of the Beagleboard (armv7-a) which were necessary to build with 
4.5.1 and our 2.21 binutils.



-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

