Return-Path: <Paul.Gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33596E0030B
	for <poky@yoctoproject.org>; Mon, 30 Jan 2012 12:48:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0UKmvE7022994
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 30 Jan 2012 12:48:57 -0800 (PST)
Received: from [128.224.146.65] (128.224.146.65) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 30 Jan 2012 12:48:57 -0800
Message-ID: <4F270237.7070406@windriver.com>
Date: Mon, 30 Jan 2012 15:48:55 -0500
From: Paul Gortmaker <paul.gortmaker@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111109 Thunderbird/3.1.16
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
	<4F26FC86.1090903@linux.intel.com>
In-Reply-To: <4F26FC86.1090903@linux.intel.com>
X-Originating-IP: [128.224.146.65]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] U-boot recipe for most recent stable release.
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
X-List-Received-Date: Mon, 30 Jan 2012 20:48:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 12-01-30 03:24 PM, Saul Wold wrote:
> On 01/27/2012 08:21 AM, Paul Gortmaker wrote:
>> This adds a recipe for U-Boot v2011.12.  In doing so, some of
>> non-shareable settings were moved out of u-boot.inc and others
>> moved in.
>>
>> The recipe was tested on an mpc8315 Yocto configuration.
>>
>> Paul Gortmaker (3):
>>    u-boot: Don't make the -Os removal part of global settings.
>>    u-boot: make FILESDIR a shared setting.
>>    u-boot: Add recipe for u-boot v2011.12
>>
>>   meta/recipes-bsp/u-boot/u-boot.inc        |    4 +---
>>   meta/recipes-bsp/u-boot/u-boot_2011.03.bb |    3 ++-
>>   meta/recipes-bsp/u-boot/u-boot_2011.06.bb |    3 ++-
>>   meta/recipes-bsp/u-boot/u-boot_2011.12.bb |   20 ++++++++++++++++++++
>>   4 files changed, 25 insertions(+), 5 deletions(-)
>>   create mode 100644 meta/recipes-bsp/u-boot/u-boot_2011.12.bb
>>
> 
> Who are the current usages of the older u-boot and should they really be 
> moved into the BSP layer?

I'm not really sure who is using the older version, hence my
reluctance to introduce any changes to what they had, or where
they might be moved to (I'm relatively new to yocto/oe).

> 
> Also, looking at this recipe, there might be more that can be shared in 
> the .inc file.

Meaning you want me to redo and resubmit, or are you OK with
applying the existing content and having follow on commits
to possibly relocate recipes and make more stuff shared?

Thanks,
Paul.

> 
> Sau!
> 

