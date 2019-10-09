Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCA3BE00D9B; Wed,  9 Oct 2019 08:20:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4928AE00D1C
	for <poky@yoctoproject.org>; Wed,  9 Oct 2019 08:20:23 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Oct 2019 08:20:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="277450798"
Received: from unknown (HELO blackadder.local) ([10.252.56.237])
	by orsmga001.jf.intel.com with ESMTP; 09 Oct 2019 08:20:22 -0700
To: Adrian Bunk <bunk@stusta.de>
References: <20191009130328.28520-1-ross.burton@intel.com>
	<20191009133153.GA29168@localhost>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <984ca0e5-aa21-aed7-a208-1268760983a6@intel.com>
Date: Wed, 9 Oct 2019 16:20:21 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009133153.GA29168@localhost>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky: add Ubuntu 19.04 as a supported distribution
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
X-List-Received-Date: Wed, 09 Oct 2019 15:20:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 09/10/2019 14:31, Adrian Bunk wrote:
> On Wed, Oct 09, 2019 at 02:03:28PM +0100, Ross Burton wrote:
>> Signed-off-by: Ross Burton <ross.burton@intel.com>
>> ---
>>   meta-poky/conf/distro/poky.conf | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
>> index f999992c90a..e3df6be2ac5 100644
>> --- a/meta-poky/conf/distro/poky.conf
>> +++ b/meta-poky/conf/distro/poky.conf
>> @@ -54,6 +54,7 @@ SANITY_TESTED_DISTROS ?= " \
>>               poky-2.7 \n \
>>               ubuntu-16.04 \n \
>>               ubuntu-18.04 \n \
>> +            ubuntu-19.04 \n \
>> ...
> 
> I am not convinced that declaring (and testing?) support for
> non-LTS Ubuntu releases is a good idea.
 > Ubuntu 19.04 will be EOL in January, and 19.10 will be released in a 
week.

Ah, I wasn't aware it was EOL so soon.  Maybe we should stick with LTS 
for the officially supported list after all.

Ross

