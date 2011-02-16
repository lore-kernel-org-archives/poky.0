Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71EB34C80093
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 16:20:05 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1GMK4h4015512
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 14:20:05 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 16 Feb 2011 14:20:04 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 16 Feb 2011 14:20:04 -0800
Message-ID: <4D5C4D94.4070607@windriver.com>
Date: Wed, 16 Feb 2011 16:20:04 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1297848777.git.dexuan.cui@intel.com>
	<4D5C4278.3090409@mentor.com>
In-Reply-To: <4D5C4278.3090409@mentor.com>
X-OriginalArrivalTime: 16 Feb 2011 22:20:04.0802 (UTC)
	FILETIME=[A9346220:01CBCE27]
Subject: Re: [PATCH 0/1] fix the build of mklibs-native on Ubuntu 9.04
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
X-List-Received-Date: Wed, 16 Feb 2011 22:20:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2/16/11 3:32 PM, Tom Rini wrote:
> On 02/16/2011 02:35 AM, Dexuan Cui wrote:
>> From: Dexuan Cui<dexuan.cui@intel.com>
>>
>> libc6-dev in Ubuntu 9.04 is so old that the elf.h doesn't define
>> STT_GNU_IFUNC, so we have to define it ourselves.
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: dcui/master
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master
> 
> Is this also an issue on 8.04?  9.04 isn't supported anymore (9.10, 
> 10.04, 10.10 are the top 3) but 8.04 is still under LTS in various 
> configurations.
> 

9.04 may not be supported by Ubuntu anymore, but I've got lots of commercial
customers still using 9.04.. :(   (I suspect it is also a problem w/ 8.04)

