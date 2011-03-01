Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C45394C80A7E
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 10:23:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Mar 2011 08:23:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,248,1297065600"; d="scan'208";a="714748840"
Received: from unknown (HELO [10.255.12.138]) ([10.255.12.138])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2011 08:23:53 -0800
Message-ID: <4D6D1D97.1050205@linux.intel.com>
Date: Tue, 01 Mar 2011 08:23:51 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: v sailaja <vsailub4u@gmail.com>
References: <AANLkTin34iXW7Zy7Z4NJfa3Fmv3LSt8y1eYH4UoNWcac@mail.gmail.com>	<4D6BECBD.8060501@linux.intel.com>
	<AANLkTikYLw+bcsV=RWCqg5ufz1rKZbUxKS0wGuNwruXT@mail.gmail.com>
In-Reply-To: <AANLkTikYLw+bcsV=RWCqg5ufz1rKZbUxKS0wGuNwruXT@mail.gmail.com>
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
X-List-Received-Date: Tue, 01 Mar 2011 16:23:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2011 02:33 AM, v sailaja wrote:
>
> Hi Darren,
>
>
> I  am using the Linux OS and  I installed all the pre-requisites. Still
> I am facing the same problem.
>
> *OS               ---   LINUX


The specific version is what I was after. Ubutnu 9.04, 9.10, 10.04, 
10.10 ? Fedora 13, 14?

32 bit or 64 bit?

Thanks,

Darren

>              MACHINE  ---  atom-pc*
>
> _*error:*_
> *
> I added the following packages to poky-image-minimal.bb
> <http://poky-image-minimal.bb>
>
>
>       *alsa-lib* *
>        alsa-tools
>        alsa-utils*
>
> But i am getting the error like* *
>
> *./configure: line 4246:syntax error near unexpected token `1.0.0'* *
> ./configure: line 4246: `AM_PATH_ALSA(1.0.0)'*
>
> please help me  in finding the solution.* *
> Any help would be greatly appreciated.*
>
>
>
> Thanks & Regards,
> SAI
>
>
>
>
>
>
>
>     Hi Sai,
>
>     I just noticed there hasn't been a reply to your message. Are you
>     still experiencing problems? If so, can you let us know which OS you
>     are building on and which MACHINE target you are building for?
>
>     Also, did you ensure you have installed the pre-requisites on your
>     host per the instructions in the Yocto Quick Start guide? See
>     http://www.yoctoproject.org -> Documentation -> Quick Start Guide.
>
>     --
>     Darren
>
>
>
>         *I am trying to build the poky image    --
>         *poky-image-minimal-live.*
>         I added the packages  to poky-image-minimal.bb
>         <http://poky-image-minimal.bb>
>         *
>         *<http://poky-image-minimal.bb>*
>         *
>
>         *alsa-lib* *
>               alsa-tools
>               alsa-utils*
>
>         But i am getting the error like* *
>
>         *./configure: line 4246:syntax error near unexpected token
>         `1.0.0'* *
>         ./configure: line 4246: `AM_PATH_ALSA(1.0.0)'*
>
>         please help me someone in finding the solution.* *
>         appeciated if anyone helps me.
>         *
>
>
>     Hi Sai
>
>
>         Thanks,
>         sai
>
>
>
>         _______________________________________________
>         poky mailing list
>         poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>         https://lists.yoctoproject.org/listinfo/poky
>
>
>
>     --
>     Darren Hart
>     Intel Open Source Technology Center
>     Yocto Project - Linux Kernel
>
>
>


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

