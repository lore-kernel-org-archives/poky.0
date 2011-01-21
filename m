Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20A5F4C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 19:04:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Jan 2011 17:04:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="377697692"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 17:04:40 -0800
Message-ID: <4D38DBA8.2080400@intel.com>
Date: Thu, 20 Jan 2011 17:04:40 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1295428743.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295428743.git.jingdong.lu@windriver.com>
Subject: Re: [PATCH 0/2][PULL] Fix failures for python-runtime tests and	perl tests of LSB
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
X-List-Received-Date: Fri, 21 Jan 2011 01:04:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/19/2011 01:20 AM, Jingdong Lu wrote:
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: jingdonglu/distro
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
>
> Thanks,
>      Jingdong Lu<jingdong.lu@windriver.com>
> ---
>
>
> Jingdong Lu (2):
>    python: Fix failures of LSB python-runtime tests.
>    perl: Add GDBM module for perl
>
>   meta/recipes-devtools/perl/perl-5.12.2/config.sh |    4 ++--
>   meta/recipes-devtools/python/python.inc          |   10 ++++++++++
>   meta/recipes-devtools/python/python_2.6.6.bb     |   11 ++++++++---
>   3 files changed, 20 insertions(+), 5 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

	Thanks
		Sau!


