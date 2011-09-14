Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC44CE006F7
	for <poky@yoctoproject.org>; Wed, 14 Sep 2011 08:16:28 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 14 Sep 2011 08:16:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,380,1312182000"; d="scan'208";a="17051192"
Received: from unknown (HELO envy.home) ([10.255.14.152])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Sep 2011 08:16:27 -0700
Message-ID: <4E70C54B.4070506@linux.intel.com>
Date: Wed, 14 Sep 2011 08:16:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1315327540.git.dvhart@linux.intel.com>
	<201109141133.13235.paul.eggleton@linux.intel.com>
In-Reply-To: <201109141133.13235.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] meta-yocto: linux-yocto: remove emenlow from bbappend
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 09/14/2011 03:33 AM, Paul Eggleton wrote:
> On Tuesday 06 September 2011 17:46:42 Darren Hart wrote:
>>   linux-yocto: remove emenlow from meta-yocto bbappend
> 
> I notice there's still a similar line in linux-yocto_2.6.37.bbappend, should 
> this stay or also be removed?'

It should also be removed.

> 
> Cheers,
> Paul 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

