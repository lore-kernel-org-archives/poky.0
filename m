Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EACBF4C800A0
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 17:18:03 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 Mar 2011 15:18:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,278,1299484800"; d="scan'208";a="727667509"
Received: from doubt.jf.intel.com (HELO [10.7.199.90]) ([10.7.199.90])
	by orsmga001.jf.intel.com with ESMTP; 31 Mar 2011 15:18:03 -0700
Message-ID: <4D94FD9C.8090208@linux.intel.com>
Date: Thu, 31 Mar 2011 15:18:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <cover.1301578942.git.paul.eggleton@linux.intel.com>
	<41ae31ba057b63d3c518e2edf217109c59b64603.1301578942.git.paul.eggleton@linux.intel.com>
	<20110331141920.3B1C5F03208@gemini.denx.de>
	<4D94ACBA.90409@linux.intel.com>
	<20110331213127.70E96F03208@gemini.denx.de>
In-Reply-To: <20110331213127.70E96F03208@gemini.denx.de>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 1/1] README.hardware: remove u-boot flashing instructions for mpc8315e-rdb
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
X-List-Received-Date: Thu, 31 Mar 2011 22:18:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/31/2011 02:31 PM, Wolfgang Denk wrote:
> Dear Darren Hart,
>
> In message<4D94ACBA.90409@linux.intel.com>  you wrote:
>>
>> Absolutely, this wasn't intended as a final "solution". The issue
>> appears to be related to the 4.5.1 version of gcc failing in various
>> ways to build either u-boot master or v2010.09, or v2010.12. I will
>> report this to the u-boot mailing list just as soon as I can get back to it.
>
> Why did you not enter this as a bug in bugzilla, then?

Just hectic is all, was on my todo list for today.

http://bugzilla.pokylinux.org/show_bug.cgi?id=943

>
> Will we have a Yocto 1.0 releasse soon, with such known bugs?

Fortunately, the device in question appears to work fine with the stock 
u-boot. It doesn't seem prudent to delay the release with an adequate 
work-around for the problem.

Clearly this applies to all powerpc hardware, and it needs to be 
addressed. Per your request, I'll send a note to the u-boot list so we 
can discuss it in detail there.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

