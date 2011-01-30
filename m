Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 74F3B4C8006D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 15:06:58 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Jan 2011 13:06:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,401,1291622400"; d="scan'208";a="381873260"
Received: from unknown (HELO [10.255.14.130]) ([10.255.14.130])
	by azsmga001.ch.intel.com with ESMTP; 30 Jan 2011 13:06:56 -0800
Message-ID: <4D45D2EF.6050706@intel.com>
Date: Sun, 30 Jan 2011 13:06:55 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <cover.1296372804.git.jingdong.lu@windriver.com>	<c37a7d01caf39c6a67574be39932dbe54ce6581c.1296372804.git.jingdong.lu@windriver.com>
	<625BA99ED14B2D499DC4E29D8138F1504E6294E15B@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504E6294E15B@shsmsx502.ccr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/5] gcc: Add "--enable-clocale=gnu" option explicitly
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
X-List-Received-Date: Sun, 30 Jan 2011 21:06:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/30/2011 12:11 AM, Tian, Kevin wrote:
>> From: Jingdong Lu
>> Sent: Sunday, January 30, 2011 3:36 PM
>>
>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>
>> Add "--enable-clocale=gun" option for gcc configuration explicitly in order to
>> make sure C++ library can use correct locale module.
>>
>> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
>> ---
>>   meta/recipes-devtools/gcc/gcc-configure-common.inc |    2 +-
>>   1 files changed, 1 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta/recipes-devtools/gcc/gcc-configure-common.inc
>> b/meta/recipes-devtools/gcc/gcc-configure-common.inc
>> index 4393777..b212fdc 100644
>> --- a/meta/recipes-devtools/gcc/gcc-configure-common.inc
>> +++ b/meta/recipes-devtools/gcc/gcc-configure-common.inc
>> @@ -27,7 +27,7 @@ EXTRA_OECONF_INTERMEDIATE ?= ""
>>
>>   GCCMULTILIB = "--disable-multilib"
>>
>> -EXTRA_OECONF = "${@['--enable-clocale=generic',
>> ''][bb.data.getVar('USE_NLS', d, 1) != 'no']} \
>> +EXTRA_OECONF = "${@['--enable-clocale=generic', '
>> --enable-clocale=gnu'][bb.data.getVar('USE_NLS', d, 1) != 'no']} \
>>                   --with-gnu-ld \
>>                   --enable-shared \
>>                   --enable-languages=${LANGUAGES} \
>> --
>> 1.7.0.4
>>
>
> PR bump is expected for all gcc recipes affected by this change.
>
Yes, I agree with Kevin on this, also what is the impact to generated 
binaries?  Does this add any size to compiled binaries?

Sau!

> Thanks
> Kevin
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


