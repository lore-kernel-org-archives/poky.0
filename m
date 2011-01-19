Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5708D4C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 15:33:35 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0JLXUH2009519;
	Wed, 19 Jan 2011 13:33:30 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 13:33:30 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 13:33:30 -0800
Message-ID: <4D3758A8.1010805@windriver.com>
Date: Wed, 19 Jan 2011 15:33:28 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>	
	<20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>	
	<4D374390.5040500@windriver.com> <1295472284.14388.23266.camel@rex>
In-Reply-To: <1295472284.14388.23266.camel@rex>
X-OriginalArrivalTime: 19 Jan 2011 21:33:30.0167 (UTC)
	FILETIME=[83E7EC70:01CBB820]
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 0/3] util-linux: split out libuuid and libblkid
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
X-List-Received-Date: Wed, 19 Jan 2011 21:33:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/19/11 3:24 PM, Richard Purdie wrote:
> On Wed, 2011-01-19 at 14:03 -0600, Mark Hatle wrote:
>> On 1/19/11 1:51 PM, Koen Kooi wrote:
>>> Tangent: have you considered switching to util-linux-ng?
>>>
>>> Op 19 jan 2011, om 17:55 heeft Paul Eggleton het volgende geschreven:
>>>
>>>> Split libuuid and libblkid from util-linux into separate runtime packages.
>>>> Slightly reduces the overall footprint of other packages that depend on these 
>>>> libraries.
>>
>> The util-linux-ng components are licensed GPLv3, so they could be alternatives,
>> but we need a GPLv2 version of the components for some systems.
> 
> According to the license headers, only lscpu is GPLv3 and since we
> package that separately from everything else and clearly identify its
> license, we are currently using util-linux-ng for this purpose as things
> stand.

Ok good then, for some reason I thought various utilities have been moved to
GPLv3 (other then lscpu).. I must have been mistaken.

(and yes I agree changing the name would be a good idea, matching upstream
naming makes it much less confusing.)

--Mark

> Cheers,
> 
> Richard
> 


