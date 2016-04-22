Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E742BE00E42; Fri, 22 Apr 2016 15:00:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2BF8E0073D
	for <poky@yoctoproject.org>; Fri, 22 Apr 2016 15:00:21 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Apr 2016 15:00:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,518,1455004800"; d="scan'208";a="951042709"
Received: from unknown (HELO [10.219.27.85]) ([10.219.27.85])
	by fmsmga001.fm.intel.com with ESMTP; 22 Apr 2016 15:00:21 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1460587107-27927-1-git-send-email-alejandro.hernandez@linux.intel.com>
	<4581872.RtyZcNDIEC@peggleto-mobl.ger.corp.intel.com>
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Message-ID: <571A9F7D.1030705@linux.intel.com>
Date: Fri, 22 Apr 2016 17:02:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <4581872.RtyZcNDIEC@peggleto-mobl.ger.corp.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] maintainers: Became maintainer of upm and mraa
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
X-List-Received-Date: Fri, 22 Apr 2016 22:00:23 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Ooops, sorry!

Thanks Paul!

On 04/17/2016 11:29 PM, Paul Eggleton wrote:
> Hi Alejandro,
>
> On Wed, 13 Apr 2016 22:38:27 Alejandro Hernandez wrote:
>> Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
>> ---
>>   meta-poky/conf/distro/include/maintainers.inc | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/meta-poky/conf/distro/include/maintainers.inc
>> b/meta-poky/conf/distro/include/maintainers.inc index 62b1e48..913c3b3
>> 100644
>> --- a/meta-poky/conf/distro/include/maintainers.inc
>> +++ b/meta-poky/conf/distro/include/maintainers.inc
>> @@ -460,6 +460,7 @@ RECIPE_MAINTAINER_pn-mobile-broadband-provider-info =
>> "Alexander Kanavin <alexan RECIPE_MAINTAINER_pn-modutils-initscripts =
>> "Robert Yang <liezhi.yang@windriver.com>" RECIPE_MAINTAINER_pn-mpeg2dec =
>> "Alexander Kanavin <alexander.kanavin@intel.com>" RECIPE_MAINTAINER_pn-mpfr
>> = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>> +RECIPE_MAINTAINER_pn-mraa = "Alejandro Hernandez
>> <alejandro.hernandez@linux.intel.com>" RECIPE_MAINTAINER_pn-msmtp =
>> "Alexander Kanavin <alexander.kanavin@intel.com>"
>> RECIPE_MAINTAINER_pn-mtd-utils = "Alexander Kanavin
>> <alexander.kanavin@intel.com>" RECIPE_MAINTAINER_pn-mtdev = "Jussi Kukkonen
>> <jussi.kukkonen@intel.com>" @@ -665,6 +666,7 @@ RECIPE_MAINTAINER_pn-unfs3
>> = "Randy Witt <randy.e.witt@linux.intel.com>" RECIPE_MAINTAINER_pn-unifdef
>> = "Ross Burton <ross.burton@intel.com>" RECIPE_MAINTAINER_pn-unzip =
>> "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
>> RECIPE_MAINTAINER_pn-update-rc.d = "Ross Burton <ross.burton@intel.com>"
>> +RECIPE_MAINTAINER_pn-upm = "Alejandro Hernandez
>> <alejandro.hernandez@linux.intel.com>" RECIPE_MAINTAINER_pn-usbinit =
>> "Alexander Kanavin <alexander.kanavin@intel.com>"
>> RECIPE_MAINTAINER_pn-usbutils = "Alexander Kanavin
>> <alexander.kanavin@intel.com>" RECIPE_MAINTAINER_pn-util-linux = "Chen Qi
>> <Qi.Chen@windriver.com>"
> We don't carry these recipes in OE-Core and thus this wouldn't be the right
> place to track this.
>
> Cheers,
> Paul
>


