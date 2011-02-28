Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69A074C800A4
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 12:43:10 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Feb 2011 10:43:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,241,1297065600"; d="scan'208";a="662246810"
Received: from unknown (HELO [10.255.12.138]) ([10.255.12.138])
	by fmsmga002.fm.intel.com with ESMTP; 28 Feb 2011 10:43:09 -0800
Message-ID: <4D6BECBD.8060501@linux.intel.com>
Date: Mon, 28 Feb 2011 10:43:09 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: v sailaja <vsailub4u@gmail.com>
References: <AANLkTin34iXW7Zy7Z4NJfa3Fmv3LSt8y1eYH4UoNWcac@mail.gmail.com>
In-Reply-To: <AANLkTin34iXW7Zy7Z4NJfa3Fmv3LSt8y1eYH4UoNWcac@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: errors while building the poky
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
X-List-Received-Date: Mon, 28 Feb 2011 18:43:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/22/2011 08:57 PM, v sailaja wrote:
> Hi,
>

Hi Sai,

I just noticed there hasn't been a reply to your message. Are you still 
experiencing problems? If so, can you let us know which OS you are 
building on and which MACHINE target you are building for?

Also, did you ensure you have installed the pre-requisites on your host 
per the instructions in the Yocto Quick Start guide? See 
http://www.yoctoproject.org -> Documentation -> Quick Start Guide.

--
Darren



> I am trying to build the poky image    -- *poky-image-minimal-live.*
> I added the packages  to poky-image-minimal.bb
> <http://poky-image-minimal.bb>
>
> *alsa-lib
>       alsa-tools
>       alsa-utils*
>
> But i am getting the error like
>
> *./configure: line 4246:syntax error near unexpected token `1.0.0'
> ./configure: line 4246: `AM_PATH_ALSA(1.0.0)'*
>
> please help me someone in finding the solution.
> appeciated if anyone helps me.

Hi Sai

>
> Thanks,
> sai
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

