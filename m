Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B0A3D4C80594
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 15:29:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Jan 2011 13:29:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,382,1291622400"; d="scan'208";a="881295758"
Received: from unknown (HELO [10.255.14.182]) ([10.255.14.182])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2011 13:29:03 -0800
Message-ID: <4D409213.1080703@linux.intel.com>
Date: Wed, 26 Jan 2011 13:28:51 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504DB5BB7093@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504DB5BB7093@shsmsx502.ccr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: question about the sender of this mailing list
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
X-List-Received-Date: Wed, 26 Jan 2011 21:29:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 04:20 PM, Tian, Kevin wrote:
> Hi, all,
>
> I just found one weird change today.
>
> Normally I received mails from this list by:
> 	Poky-bounces@yoctoproject.org on behalf of someone
>
> That way in my inbox I can sort the mails by the sender names, which is also the most typical way I see in most projects
>
> However today I also saw some plain senders:
> 	Poky-bounces@yoctoproject.org
> (from Josh, Edwin, Scott...)
>
> Does anyone know what may be the cause for this?

Sorry about that, it was from my previous commit to avoid sending 
patches as the git commit author. I have sent the fix to this list, 
pending merge.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

