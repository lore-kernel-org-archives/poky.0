Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 05CD54C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 14:03:34 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0JK3T5Q023563;
	Wed, 19 Jan 2011 12:03:29 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 12:03:29 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 12:03:29 -0800
Message-ID: <4D374390.5040500@windriver.com>
Date: Wed, 19 Jan 2011 14:03:28 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>
	<20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>
In-Reply-To: <20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>
X-OriginalArrivalTime: 19 Jan 2011 20:03:29.0282 (UTC)
	FILETIME=[F0BA4620:01CBB813]
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
X-List-Received-Date: Wed, 19 Jan 2011 20:03:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 1/19/11 1:51 PM, Koen Kooi wrote:
> Tangent: have you considered switching to util-linux-ng?
> 
> Op 19 jan 2011, om 17:55 heeft Paul Eggleton het volgende geschreven:
> 
>> Split libuuid and libblkid from util-linux into separate runtime packages.
>> Slightly reduces the overall footprint of other packages that depend on these 
>> libraries.

The util-linux-ng components are licensed GPLv3, so they could be alternatives,
but we need a GPLv2 version of the components for some systems.

--Mark

>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>  Branch: paule/util-linux-libsplit
>>  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/util-linux-libsplit
>>
>> Thanks,
>>    Paul Eggleton <paul.eggleton@linux.intel.com>
>> ---
>>
>>
>> Paul Eggleton (3):
>>  util-linux: split out libuuid and libblkid into separate packages
>>  gst-plugins-base: add util-linux to DEPENDS
>>  Bump PR on recipes that depend on util-linux
>>
>> .../nfs-utils/nfs-utils_1.2.3.bb                   |    2 +-
>> meta/recipes-core/util-linux/util-linux.inc        |    6 ++++--
>> meta/recipes-core/util-linux/util-linux_2.17.2.bb  |    2 +-
>> .../e2fsprogs/e2fsprogs_1.41.12.bb                 |    2 +-
>> meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb       |    2 +-
>> meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb      |    2 +-
>> .../gstreamer/gst-plugins-base_0.10.31.bb          |    4 ++--
>> 7 files changed, 11 insertions(+), 9 deletions(-)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


