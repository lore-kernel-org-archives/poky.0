Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B88D14C800BA
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 22:28:37 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5H3SWmk006898
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Jun 2011 20:28:33 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.12) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 16 Jun 2011 20:28:32 -0700
Message-ID: <4DFAC9DE.1080901@windriver.com>
Date: Thu, 16 Jun 2011 23:28:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110613 Thunderbird/3.1.11
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <1308216069-25022-1-git-send-email-dongxiao.xu@intel.com>	<DD75A5DE-D7A8-435E-A20B-1F676F80DCA8@dominion.thruhere.net>	<BANLkTik-Dd6QeN4kdtjenxbg40=7T2C_7A@mail.gmail.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A12D6721B35@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A12D6721B35@shsmsx501.ccr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-fishriver/linux-yocto: Auto load cdc-acm and cdc-wdm modules
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
X-List-Received-Date: Fri, 17 Jun 2011 03:28:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-06-16 9:34 PM, Xu, Dongxiao wrote:
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
>> Sent: Thursday, June 16, 2011 8:53 PM
>> To: Koen Kooi
>> Cc: Xu, Dongxiao; poky@yoctoproject.org
>> Subject: Re: [poky] [PATCH] meta-fishriver/linux-yocto: Auto load cdc-acm and
>> cdc-wdm modules
>>
>> On Thu, Jun 16, 2011 at 5:48 AM, Koen Kooi<koen@dominion.thruhere.net>
>> wrote:
>>>
>>> Op 16 jun 2011, om 11:21 heeft Dongxiao Xu het volgende geschreven:
>>>
>>>> Automatically load cdc-acm.ko and cdc-wdm.ko to support 3G module.
>>>
>>> Is USB broken in that kernel that it doesn't load the correct driver when
>> plugging in the dongle?
>>
>> Should be working fine, or at least it works fine for the targets that I have near
>> me.
>>
>> Dongxiao: are you seeing anything in the kernel logs when the devices are
>> plugged in ? As part of the commit message, it would be useful to list the
>> reasons why a change is being made, it'll allow us to suggest alternatives, or
>> debug .. or do nothing.
>
> Hi Bruce and Koen,
>
> There is no such log you mentioned.
>
> My description for the commit may be not accurate. The above driver I mentioned is a generic driver which converts the USB device to be a virtual modem, and it is not the device enabling driver.
> Also I need to mention that, my 3G module device is not an external dongle, and it is directly plugged in mother board on pci-e mini slot.

Aha, so this falls into the category of 'do nothing'. Thanks
for the explanation. This sort of information is useful and
should be included with the commit (since it saves us wondering
'why' later and during submission).

Cheers,

Bruce

>
> Thanks,
> Dongxiao
>
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>>>
>>>> Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
>>>> ---
>>>> .../linux/linux-yocto_2.6.37.bbappend              |    3 +++
>>>> 1 files changed, 3 insertions(+), 0 deletions(-)
>>>>
>>>> diff --git
>>>> a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>>>> b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>>>> index b767109..5f8b8ca 100644
>>>> --- a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>>>> +++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>>>> @@ -4,3 +4,6 @@ KMACHINE_fishriver  = "yocto/standard/fishriver"
>>>>
>>>> SRCREV_machine_pn-linux-yocto_fishriver ?=
>> "697d84759be192403a8a87ab269196c67a0c2c88"
>>>> SRCREV_meta_pn-linux-yocto_fishriver ?=
>> "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
>>>> +
>>>> +module_autoload_cdc-acm = "cdc-acm"
>>>> +module_autoload_cdc-wdm = "cdc-wdm"
>>>> --
>>>> 1.7.0.4
>>>>
>>>> _______________________________________________
>>>> poky mailing list
>>>> poky@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await thee at
>> its end"
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky




