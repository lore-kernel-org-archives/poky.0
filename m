Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B0CF4C80FA8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 10:40:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Dec 2010 08:40:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,355,1288594800"; d="scan'208";a="584371931"
Received: from doubt.jf.intel.com (HELO [10.7.199.146]) ([10.7.199.146])
	by orsmga002.jf.intel.com with ESMTP; 16 Dec 2010 08:40:20 -0800
Message-ID: <4D0A40F9.3030404@linux.intel.com>
Date: Thu, 16 Dec 2010 08:40:25 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D095AB5.6060805@linux.intel.com>
	<1292514269.26558.4031.camel@rex>
In-Reply-To: <1292514269.26558.4031.camel@rex>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Yocto] RFC: README.hardware: Intel Atom device	documentation
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
X-List-Received-Date: Thu, 16 Dec 2010 16:40:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/16/2010 07:44 AM, Richard Purdie wrote:
> On Wed, 2010-12-15 at 16:17 -0800, Darren Hart wrote:
>> I ran across some issues working with USB keys while booting a couple
>> different Intel Atom based devices. I drafted the following documenting
>> what I learned from the process. I'd like to add this (or something
>> similar) to README.hardware.
>>
>> Thoughts/Comments?
>
> I think we should add it, please send it completed as a patch!
>
> Ultimately I'm not sure what we do with this file (would it be better on
> the wiki?) but having appropriate info there is certainly desirable.

Just had a brief discussion with Scott R about this. Our feeling is that 
README.hardware is a reasonable place for this information. It is too 
board specific for the reference manual, but a general description of 
the various image types with a reference to README.hardware would be 
appropriate for the reference manual.

As to wiki vs. README. One user commented earlier that they prefer to 
have this sort of information packaged with the source as there are lots 
of scenarios where they must work without internet access. Given this is 
step-by-step command-line level documentation, I suggest keeping it with 
the source.

Thanks,

-- 
Darren Hart
Yocto Linux Kernel

