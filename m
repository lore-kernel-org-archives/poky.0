Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BCD8C4C800BB
	for <poky@yoctoproject.org>; Thu, 12 May 2011 15:31:15 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 May 2011 13:31:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,360,1301900400"; d="scan'208";a="641942380"
Received: from doubt.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga002.jf.intel.com with ESMTP; 12 May 2011 13:31:15 -0700
Message-ID: <4DCC43A6.6050300@linux.intel.com>
Date: Thu, 12 May 2011 13:31:34 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1305120861.git.liezhi.yang@windriver.com>
	<8b4e9efcd34ac73babf6928cb2909ce88c4df69d.1305120861.git.liezhi.yang@windriver.com>
	<4DCACDDE.1090205@linux.intel.com>
	<4DCC1762.4040604@linux.intel.com>
In-Reply-To: <4DCC1762.4040604@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] Add a skeleton for init scripts
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
X-List-Received-Date: Thu, 12 May 2011 20:31:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/12/2011 10:22 AM, Saul Wold wrote:

>>>    - Fix start-stop-daemon to get an one line output when start a
>>>      already runing program?
>>
>>
>> I wouldn't bother. I don't see anything wrong with two lines.
>>
> Darren are you being consistent here?  I thought you wanted it on 1 line?

Always take the last statement as the current one ;-) After reading
through I understand why it's two lines and don't feel it is worth the
complexity of changing it to one. It also accurately represents that
this is a two step process.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

