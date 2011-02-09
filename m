Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id DEA574C80053
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 11:42:13 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 6420316602A2; Wed,  9 Feb 2011 10:42:13 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 75A011660137;
	Wed,  9 Feb 2011 10:42:12 -0700 (MST)
Message-ID: <4D52D1F4.5060606@mlbassoc.com>
Date: Wed, 09 Feb 2011 10:42:12 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>	<1297196798-23779-2-git-send-email-yanok@emcraft.com>
	<4D52D11C.50904@linux.intel.com>
In-Reply-To: <4D52D11C.50904@linux.intel.com>
Cc: poky@pokylinux.org, Ilya Yanok <yanok@emcraft.com>
Subject: Re: [PATCH 2/3] u-boot: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Wed, 09 Feb 2011 17:42:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2011 10:38 AM, Darren Hart wrote:
> On 02/08/2011 12:26 PM, Ilya Yanok wrote:
>> Signed-off-by: Ilya Yanok<yanok@emcraft.com>
>> ---
>> meta/recipes-bsp/uboot/u-boot.inc | 2 ++
>> 1 files changed, 2 insertions(+), 0 deletions(-)
>>
>> diff --git a/meta/recipes-bsp/uboot/u-boot.inc b/meta/recipes-bsp/uboot/u-boot.inc
>> index 889f621..6492016 100644
>> --- a/meta/recipes-bsp/uboot/u-boot.inc
>> +++ b/meta/recipes-bsp/uboot/u-boot.inc
>> @@ -5,6 +5,8 @@ PRIORITY = "optional"
>> LICENSE = "GPL"
>> PROVIDES = "virtual/bootloader"
>>
>> +LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb"
>> +
>
>  From what I can tell u-boot.inc is only used by u-boot_git.bb which already defines LIC_FILES_CHKSUM and the appropriate GPLv2+ LICENSE variable.
>
> It seems to me the LICENSE and LIC_FILES_CHKSUM should be defined in the same recipe as the SRC_URI. In this case, u-boot_git.bb. Is there a motivating reason to add it to .inc? If
> so, we should also remove it from u-boot_git.bb to avoid unnecessary duplication which leads to confusion down the road.
>

I agree - what if you have multiple .bb files sharing a single
.inc and the license and/or license data are different?  It
seems to me that this data should live where the actual sources
are being introduced, e.g. the .bb file.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

