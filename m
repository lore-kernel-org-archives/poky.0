Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D366E00BCA;
	Fri, 28 Mar 2014 12:00:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2SIxupj025612
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Mar 2014 11:59:56 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 28 Mar 2014 11:59:56 -0700
Message-ID: <5335C6AA.6020308@windriver.com>
Date: Fri, 28 Mar 2014 14:59:54 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: "Hart, Darren" <darren.hart@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
References: <1396031047.14790.24.camel@ted> <5335BF1C.9030902@windriver.com>
	<5335BF6A.8080404@windriver.com> <1396031644.14790.26.camel@ted>
	<5335C1AF.5080904@windriver.com>
	<CF5B1473.7DC1D%darren.hart@intel.com>
In-Reply-To: <CF5B1473.7DC1D%darren.hart@intel.com>
Cc: yocto-builds <yocto-builds@yoctoproject.org>,
	Denys Dmytriyenko <denys@ti.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>, "WOLD,
	SAUL" <saul.wold@intel.com>
Subject: Re: meta-yocto-bsp changes and 3.14
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
X-List-Received-Date: Fri, 28 Mar 2014 19:00:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-03-28 02:57 PM, Hart, Darren wrote:
> On 3/28/14, 11:38, "Bruce Ashfield" <bruce.ashfield@windriver.com> wrote:
>
>> On 14-03-28 02:34 PM, Richard Purdie wrote:
>>>
>>>
>>> With regard to beagleboard, whilst the kernel may have support for it,
>>> I'd like to remove it from meta-yocto-bsp.
>>
>> ok. I had planned to just leave the compatible machine as 3.10 and leave
>> the support there, since there are a few people who contact me regularly
>> and poke with the support.
>>
>> Is there a place we can put them as a "retirement" home ? versus asking
>> people to locally restore the support.
>
> The retirement home would be the 1.5 stable releases. Yes?

Nope. That's my point, I have 3.10 changes for the Xm in linux-yocto
3.10 that lives in 1.6. We can make it less visible, but I'd like the
configs to follow the latest versions of the tree.

Bruce

>
> --
> Darren Hart
> Yocto Project - Linux Kernel
> Intel Open Source Technology Center
>
>
>


