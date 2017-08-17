Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5216CE00DA7; Thu, 17 Aug 2017 00:48:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	RCVD_IN_SORBS_SPAM,URIBL_SBL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [192.55.52.120 listed in dnsbl.sorbs.net]
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: yoctoproject.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D13E00D75
	for <poky@yoctoproject.org>; Thu, 17 Aug 2017 00:48:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Aug 2017 00:48:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,386,1498546800"; d="scan'208";a="1206670683"
Received: from lbandamx-mobl.amr.corp.intel.com (HELO [10.252.248.59])
	([10.252.248.59])
	by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2017 00:48:29 -0700
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
References: <20170817002540.27741-1-alejandro.hernandez@linux.intel.com>
	<1502955747.13978.184.camel@linuxfoundation.org>
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Message-ID: <7971a3f5-95a9-84fa-5a2c-c853e1a15714@linux.intel.com>
Date: Thu, 17 Aug 2017 02:48:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <1502955747.13978.184.camel@linuxfoundation.org>
Subject: Re: [PATCH] genericx86-common.inc: Stop autoloading uvesa module at boot
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 17 Aug 2017 07:48:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hey Richard,


On 08/17/2017 02:42 AM, Richard Purdie wrote:
> On Wed, 2017-08-16 at 17:25 -0700, Alejandro Hernandez wrote:
>> After commit e8b1c653946ef921b65d47e52aea0dc530ef4286, we started
>> seeing
>> errors like the following during boot:
>>
>> uvesafb: failed to execute /sbin/v86d
>> uvesafb: probe of uvesafb.0 failed with error -22
>> uvesafb: vbe_init() failed with -22
>> uvesafb: Getting VBE info block failed (eax=0x4f00, err=-2)
>>
>> These were caused because the uvesa module was being loaded during
>> boot.
>>
>> Since genericx86-common.inc includes qemuboot-x86, the module also
>> tries
>> to be loaded on genericx86 MACHINES, this patch removes it when this
>> is the
>> case, getting rid of the errors.
>>
>> [YOCTO #11879]
>>
>> Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.c
>> om>
>> ---
>>   meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 3 +++
>>   1 file changed, 3 insertions(+)
> No, we can't do this, sorry. I really dislike having any usage of
> remove in the core code. The reason is that its near impossible to undo
> a remove operation and if we need one, it suggests we really should
> restructure something instead.
>
> So please find a different way to fix this.
>
> This commit message also doesn't really tell me why we need to stop
> loading uvesa on genericx86.
Alright, I'll see if I can find another way, the reason being that it 
simply gets rid of the error,
I actually referenced the commit where we took uvesa out of generic but 
I deleted it last minute,
my bad.

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=6af89812e8a9931ffed63768ed85367519bf7aef

>
> Cheers,
>
> Richard


