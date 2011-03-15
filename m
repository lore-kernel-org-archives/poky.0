Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C561B4C803D6
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 02:30:21 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Mar 2011 00:30:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; d="scan'208";a="613062711"
Received: from unknown (HELO [10.255.12.146]) ([10.255.12.146])
	by orsmga002.jf.intel.com with ESMTP; 15 Mar 2011 00:30:10 -0700
Message-ID: <4D7F1582.2010107@linux.intel.com>
Date: Tue, 15 Mar 2011 00:30:10 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1300146920.git.dvhart@linux.intel.com>	<cc3e525fdb480d6b86637afa7b4c8d947d32304b.1300146920.git.dvhart@linux.intel.com>
	<1300152074.30423.953.camel@rex>
In-Reply-To: <1300152074.30423.953.camel@rex>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] qemux86-64: Enable latencytop and profiling (temporary)
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
X-List-Received-Date: Tue, 15 Mar 2011 07:30:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/14/2011 06:21 PM, Richard Purdie wrote:
> On Mon, 2011-03-14 at 16:54 -0700, Darren Hart wrote:
>> From: Darren Hart<dvhart@linux.intel.com>
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: dvhart/kernel
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/kernel
>>
>> Thanks,
>>      Darren Hart<dvhart@linux.intel.com>
>> ---
>>
>>
>> Darren Hart (1):
>>    qemux86-64: Enable latencytop and profiling (temporary)
>>
>>   meta/recipes-kernel/linux/linux-yocto_git.bb |    4 ++++
>>   1 files changed, 4 insertions(+), 0 deletions(-)
>
> Merged into OECore and Poky master.

Gah, my note in response to my post was bounced (wrong email address). I 
said that this patch should only go to bernard and master would get the 
update from Bruce to linux-yocto naturally. It's fine though, we can 
revert this patch later.

--
Darren

>
> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

