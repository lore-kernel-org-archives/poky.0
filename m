Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9BB5C4C8009A
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 11:01:21 -0600 (CST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1Pq7EH-0005ww-0l from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Thu, 17 Feb 2011 09:01:21 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	svr-orw-fem-01.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Thu, 17 Feb 2011 09:01:20 -0800
Received: from [172.30.80.148] ([172.30.80.148]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Thu, 17 Feb 2011 10:01:19 -0700
Message-ID: <4D5D545B.70400@mentor.com>
Date: Thu, 17 Feb 2011 10:01:15 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1297930635.git.qing.he@intel.com>
In-Reply-To: <cover.1297930635.git.qing.he@intel.com>
X-OriginalArrivalTime: 17 Feb 2011 17:01:19.0969 (UTC)
	FILETIME=[4C543510:01CBCEC4]
Subject: Re: [PATCH 0/1] Fix parallel make for openssl
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
X-List-Received-Date: Thu, 17 Feb 2011 17:01:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2011 01:18 AM, Qing He wrote:
> From: Qing He<qing.he@intel.com>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix
>
> Thanks,
>      Qing He<qing.he@intel.com>
> ---
>
>
> Qing He (1):
>    openssl: fix parallel make
>
>   .../openssl/openssl-0.9.8p/parallel-make-fix.patch |   18 ++++++++++++++++++
>   meta/recipes-connectivity/openssl/openssl.inc      |    6 +++---
>   .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    2 +-
>   3 files changed, 22 insertions(+), 4 deletions(-)
>   create mode 100644 meta/recipes-connectivity/openssl/openssl-0.9.8p/parallel-make-fix.patch

While in there, shouldn't we update to either 0.9.8r or 1.0.0d, for 
security fixes?

-- 
Tom Rini
Mentor Graphics Corporation

