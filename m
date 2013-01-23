Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F606E002AB
	for <poky@yoctoproject.org>; Wed, 23 Jan 2013 09:01:52 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Jan 2013 09:01:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,523,1355126400"; d="scan'208";a="281281381"
Received: from unknown (HELO [10.255.15.89]) ([10.255.15.89])
	by fmsmga002.fm.intel.com with ESMTP; 23 Jan 2013 09:01:51 -0800
Message-ID: <5100177F.7000002@linux.intel.com>
Date: Wed, 23 Jan 2013 09:01:51 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>, 
	"Burton, Ross" <ross.burton@intel.com>
References: <1358868589-2359-1-git-send-email-radu.moisan@intel.com>
	<1358874090.6356.10.camel@ted>
	<50FF1B49.5020205@linux.intel.com> <50FF9B6C.4030301@intel.com>
	<51000E54.8010300@linux.intel.com>
In-Reply-To: <51000E54.8010300@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] local.conf.sample: Add DISTRO_FEATURES_INITMAN
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
X-List-Received-Date: Wed, 23 Jan 2013 17:01:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/23/2013 08:22 AM, Darren Hart wrote:
>
>
> On 01/23/2013 12:12 AM, Radu Moisan wrote:
>>
>> On 01/23/2013 01:05 AM, Darren Hart wrote:
>>>
>>> On 01/22/2013 09:01 AM, Richard Purdie wrote:
>>>> On Tue, 2013-01-22 at 17:29 +0200, Radu Moisan wrote:
>>>>> Default option is sysvinit
>>>>>
>>>>> Signed-off-by: Radu Moisan <radu.moisan@intel.com>
>>>>> ---
>>>>>    meta-yocto/conf/local.conf.sample |    3 +++
>>>>>    1 file changed, 3 insertions(+)
>>>>>
>>>>> diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
>>>>> index 200b4af..273e0eb 100644
>>>>> --- a/meta-yocto/conf/local.conf.sample
>>>>> +++ b/meta-yocto/conf/local.conf.sample
>>>>> @@ -243,3 +243,6 @@ BB_DISKMON_DIRS = "\
>>>>>    # track the version of this file when it was generated. This can safely be ignored if
>>>>>    # this doesn't mean anything to you.
>>>>>    CONF_VERSION = "1"
>>>>> +
>>>>> +# set default init manager: sysvinit or systemd
>>>>> +DISTRO_FEATURES_INITMAN ?= "sysvinit"
>>> Is tiny-init also an appropriate value here?
>>
>> No it is not. We could consider it though.
>>
>>>
>>> How does this differ from VIRTUAL_RUNTIME_init_manager?
>>>
>>
>> It's just a naming style issue, I used VIRTUAL_RUNTIME_init_manager when
>> I started and eventually Richard suggested the new variant.
>
> Is VIRTUAL_RUNTIME_init_manager deprecated? Does it need to be replaced
> in all the distro configs?
>
I will have a poky-tiny patch set here soon as it's more that just this, 
also poky-tiny will simply over ride this with a direct setting of 
DISTRO_FEATURE_INITMAN.

It looks like VIRTUAL_RUNTIME_init_manager gets set from 
DISTRO_FEATURE_INITMAN, so it might be duplication, not sure if RP 
intended that or if there is another round of cleanup that needs to 
happen here.

Sau!


