Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C8BB4C800AC
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:33:00 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Mar 2011 09:32:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,276,1299484800"; d="scan'208";a="411792672"
Received: from doubt.jf.intel.com (HELO [10.24.0.166]) ([10.24.0.166])
	by azsmga001.ch.intel.com with ESMTP; 31 Mar 2011 09:32:58 -0700
Message-ID: <4D94ACBA.90409@linux.intel.com>
Date: Thu, 31 Mar 2011 09:32:58 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <cover.1301578942.git.paul.eggleton@linux.intel.com>	<41ae31ba057b63d3c518e2edf217109c59b64603.1301578942.git.paul.eggleton@linux.intel.com>
	<20110331141920.3B1C5F03208@gemini.denx.de>
In-Reply-To: <20110331141920.3B1C5F03208@gemini.denx.de>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 1/1] README.hardware: remove u-boot flashing	instructions for mpc8315e-rdb
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
X-List-Received-Date: Thu, 31 Mar 2011 16:33:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/31/2011 07:19 AM, Wolfgang Denk wrote:
> Dear Paul Eggleton,
>
> In message<41ae31ba057b63d3c518e2edf217109c59b64603.1301578942.git.paul.eggleton@linux.intel.com>  you wrote:
>> From: Paul Eggleton<paul.eggleton@linux.intel.com>
>>
>> Upgrading u-boot is apparently not necessary with current board revisions,
>> and these instructions may not work properly anyway (our toolchain seems not
>> to be able to compile u-boot in the way described), and given that they are
>> potentially risky they should be removed.
>
> The instructions you delete appear to be pretty generic ones, and I
> see no reason why they would not work.
>

When I followed them I ended up with a dead mpc3815e-rdb. I suspect my 
u-boot image was bad in some way, but my concern was that others would 
end up in the same situation following the instructions. Since the 
existing u-boot version was able to boot the linux-yocto kernel recipe, 
there appears to be no need to reflash u-boot.

> If the Poky too chain has issues with this, then there is a problem
> with that tool chain, and you should enter a bug report.
>
> What exactly would that problem be?

Absolutely, this wasn't intended as a final "solution". The issue 
appears to be related to the 4.5.1 version of gcc failing in various 
ways to build either u-boot master or v2010.09, or v2010.12. I will 
report this to the u-boot mailing list just as soon as I can get back to it.

--
Darren

>
> In any case, just papering over the problems seems not a good
> startegy to me.
>
> Best regards,
>
> Wolfgang Denk
>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

