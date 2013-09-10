Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B2B9E0153B
	for <poky@yoctoproject.org>; Tue, 10 Sep 2013 01:22:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r8A8Mrng007610
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Sep 2013 01:22:53 -0700 (PDT)
Received: from [128.224.22.41] (128.224.22.41) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Tue, 10 Sep 2013 01:22:53 -0700
Message-ID: <522ED6D8.204@windriver.com>
Date: Tue, 10 Sep 2013 04:22:48 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <cover.1378500902.git.bruce.ashfield@windriver.com>
	<373355466ed7a2c31efd16f1b07c0d089c9d38d5.1378500902.git.bruce.ashfield@windriver.com>
	<20130910080836.GA5871@ad.chargestorm.se>
	<522ED553.1080202@windriver.com>
In-Reply-To: <522ED553.1080202@windriver.com>
Subject: Re: [PATCH 3/4] beagleboard: upgrade the kernel to 3.10.x
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
X-List-Received-Date: Tue, 10 Sep 2013 08:22:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-09-10 04:16 AM, Bruce Ashfield wrote:
> On 13-09-10 04:08 AM, Anders Darander wrote:
>> * Bruce Ashfield <bruce.ashfield@windriver.com> [130906 22:59]:
>>> From: Liming Wang <liming.wang@windriver.com>
>>
>>> In 3.10.x linux kernel, uImage can't be compiled by default. But zImage
>>> has been supported by the latest u-boot, so use zImage as the default
>>> kernel
>>> image file. In u-boot command, use "bootz", instead of "bootm", to
>>> boot the kernel.
>>
>> NAK. (At least based on the info given above regarding the uImage to
>> zImage transfer).
>>
>> I missed this patch earlier...
>>
>> What's the issue with uImage on 3.10.x?
>> I'm running a kernel.org 3.10.x using linux-yocto-custom just fine here
>> (although for another board).
>>
>> I suspect the issue (that I guess Liming had), is due to the powerpc
>> being mixed into his build. (Bruce replied on the oe-core list to a
>> path which corrected the path to the DTS).
>
> No, that wasn't the issue. uImage requires a LOADADDR in many cases and
> that isn't currently encoded in the machine configs.

I forgot to add that if QA shows issues with this change, then obviously,
I'll revisit the image format default.

Bruce

>
> zImage works fine, want to expand our coverage with the reference boards,
> so no, there's no NAK of this. It's fine as is.
>
> Other layers and BSPs are free to use uImage, just as this reference
> is free to use the zImage.
>
> Bruce
>
>>
>> Cheers,
>> Anders
>>
>>> And add device tree files to support dtb in latest kernel.
>>
>>> Signed-off-by: Liming Wang <liming.wang@windriver.com>
>>> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>>> ---
>>>   meta-yocto-bsp/conf/machine/beagleboard.conf |    5 +++--
>>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>>> diff --git a/meta-yocto-bsp/conf/machine/beagleboard.conf
>>> b/meta-yocto-bsp/conf/machine/beagleboard.conf
>>> index 5f4c55a..dd0c222 100644
>>> --- a/meta-yocto-bsp/conf/machine/beagleboard.conf
>>> +++ b/meta-yocto-bsp/conf/machine/beagleboard.conf
>>> @@ -29,9 +29,10 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
>>>   SERIAL_CONSOLE = "115200 ttyO2"
>>
>>>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>> -PREFERRED_VERSION_linux-yocto ?= "3.4%"
>>> +PREFERRED_VERSION_linux-yocto ?= "3.10%"
>>
>>> -KERNEL_IMAGETYPE = "uImage"
>>> +KERNEL_IMAGETYPE = "zImage"
>>> +KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/omap3-beagle.dts
>>> ${S}/arch/powerpc/boot/dts/omap3-beagle-xm.dts"
>>
>>>   SPL_BINARY = "MLO"
>>>   UBOOT_SUFFIX = "img"
>


