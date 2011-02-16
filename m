Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 168414C800A3
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 15:32:44 -0600 (CST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1PpozM-0000D4-EM from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Wed, 16 Feb 2011 13:32:44 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	svr-orw-fem-01.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Wed, 16 Feb 2011 13:32:44 -0800
Received: from [172.30.80.148] ([172.30.80.148]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Wed, 16 Feb 2011 14:32:43 -0700
Message-ID: <4D5C4278.3090409@mentor.com>
Date: Wed, 16 Feb 2011 14:32:40 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1297848777.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1297848777.git.dexuan.cui@intel.com>
X-OriginalArrivalTime: 16 Feb 2011 21:32:43.0498 (UTC)
	FILETIME=[0BA7CCA0:01CBCE21]
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
X-List-Received-Date: Wed, 16 Feb 2011 21:32:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/16/2011 02:35 AM, Dexuan Cui wrote:
> From: Dexuan Cui<dexuan.cui@intel.com>
>
> libc6-dev in Ubuntu 9.04 is so old that the elf.h doesn't define
> STT_GNU_IFUNC, so we have to define it ourselves.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dcui/master
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Is this also an issue on 8.04?  9.04 isn't supported anymore (9.10, 
10.04, 10.10 are the top 3) but 8.04 is still under LTS in various 
configurations.

-- 
Tom Rini
Mentor Graphics Corporation

