Return-Path: <Paul.Gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC45EE00303
	for <poky@yoctoproject.org>; Tue, 31 Jan 2012 09:42:47 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0VHgkSx020016
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 31 Jan 2012 09:42:46 -0800 (PST)
Received: from [128.224.146.65] (128.224.146.65) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 31 Jan 2012 09:42:46 -0800
Message-ID: <4F282815.1070407@windriver.com>
Date: Tue, 31 Jan 2012 12:42:45 -0500
From: Paul Gortmaker <paul.gortmaker@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111109 Thunderbird/3.1.16
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
	<4F281CAC.5010304@linux.intel.com>
In-Reply-To: <4F281CAC.5010304@linux.intel.com>
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
X-List-Received-Date: Tue, 31 Jan 2012 17:42:48 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 12-01-31 11:54 AM, Saul Wold wrote:
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
> What about the u-boot-mkimage recipe, does that also need to be updated?

It could be, but it strictly doesn't have to be.  I'd say that
mkimage is a tool akin to something like tar -- i.e. you can build
whatever version you want, but its functionality isn't going
to really change often from one release to the next.

If you want it updated, I can send a follow on patch to do
that.  What do you guys usually do with the old recipes, leave
them laying around, or STONITH?

Thanks,
Paul.

> 
> Sau!

