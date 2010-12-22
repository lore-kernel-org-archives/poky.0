Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A53C4C808B0
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 03:52:10 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBM9qADj022910;
	Wed, 22 Dec 2010 01:52:10 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 01:52:10 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 01:52:10 -0800
Message-ID: <4D11CAA8.1020106@windriver.com>
Date: Wed, 22 Dec 2010 17:53:44 +0800
From: Lu Jingdong <jingdong.lu@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1292925066.git.jingdong.lu@windriver.com>
	<4D11493C.6050207@linux.intel.com>
In-Reply-To: <4D11493C.6050207@linux.intel.com>
X-OriginalArrivalTime: 22 Dec 2010 09:52:10.0419 (UTC)
	FILETIME=[E6DAF030:01CBA1BD]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Fix failures of LSB.
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
X-List-Received-Date: Wed, 22 Dec 2010 09:52:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/2010 08:41 AM, Saul Wold wrote:
> On 12/21/2010 01:54 AM, Jingdong Lu wrote:
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: jingdonglu/distro
>>    Browse: 
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
>>
>> Thanks,
>>      Jingdong Lu<jingdong.lu@windriver.com>
>> ---
>>
>
> Jingdong,
>
>
>
> Why do you need the do_install?  Can the standard do_install not work 
> correctly for this recipe?
Because we need add some options to make install, eg, 
UCBINSTALL=install, I didn't use standard do_install.

>   meta/recipes-extended/mailx/mailx_12.4.bb          |   18 
> ++++++++++++++++++
> Can you please add a SUMMARY and SRC_URI checksums to the mailx recipe.
>
> Is the PREFIX=/usr correct?  I note in other there is a ${D} or 
> ${D}${prefix}, please make sure you have the correct location here.
Because the default value of PREFIX is /usr/local in Makefile, I change 
it into /usr and give this option.
>
> Please re-sumbit a v2 patch set.
I re-submit patch set.
Thank you!
>
>


-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


