Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 749664C80A47
	for <poky@yoctoproject.org>; Wed, 11 May 2011 19:27:14 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D1E9B1660271; Wed, 11 May 2011 18:27:10 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 42E0F16603A3;
	Wed, 11 May 2011 18:26:38 -0600 (MDT)
Message-ID: <4DCB293E.6020007@mlbassoc.com>
Date: Wed, 11 May 2011 18:26:38 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <4DCB1F2F.1090701@mlbassoc.com> <1305158495.2133.5.camel@scimitar>
In-Reply-To: <1305158495.2133.5.camel@scimitar>
Cc: poky@yoctoproject.org
Subject: Re: Setting image size
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
X-List-Received-Date: Thu, 12 May 2011 00:27:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/11/2011 06:01 PM, Joshua Lock wrote:
> On Wed, 2011-05-11 at 17:43 -0600, Gary Thomas wrote:
>> I'm trying to increase the size of the pseudo disk used by Qemu.
>> The variable IMAGE_ROOTFS_SIZE sets this.  If I add
>>     IMAGE_ROOTFS_SIZE_ext3=512000
>> to conf/local.conf, I get what I want.
>>
>> So why doesn't this work (without any changes to local.conf)?
>>     IMAGE_ROOTFS_SIZE_ext3=512000 bitbake core-image-sato
>>
>
> The IMAGE_ROOTFS_SIZE variable is cleaned from the environment.
>
> Variables which can be set from the shell at invocation are defined in
> BB_ENV_WHITELIST and BB_ENV_EXTRAWHITE.
>
> Does something like:
>
> BB_ENV_EXTRAWHITE="IMAGE_ROOTFS_SIZE $BB_ENV_EXTRAWHITE"
> IMAGE_ROOTFS_SIZE_ext3=512000 bitbake core-image-sato
>
> do what you want?

Sadly, no.  I tried both
   IMAGE_ROOTFS_SIZE_ext3=512000 bitbake core-image-sato
and
   IMAGE_ROOTFS_SIZE=512000 bitbake core-image-sato
and I just get the default size image.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

