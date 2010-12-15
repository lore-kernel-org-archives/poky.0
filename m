Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E81254C80048
	for <poky@lists.pokylinux.org>; Wed, 15 Dec 2010 11:12:11 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Dec 2010 09:12:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="362116827"
Received: from unknown (HELO [10.255.14.1]) ([10.255.14.1])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 09:12:09 -0800
Message-ID: <4D08F6E9.3050109@intel.com>
Date: Wed, 15 Dec 2010 09:12:09 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <4D01EE60.7080700@windriver.com>
In-Reply-To: <4D01EE60.7080700@windriver.com>
Cc: poky@lists.pokylinux.org
Subject: Re: [PULL]: Two scripts for lsb test
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
X-List-Received-Date: Wed, 15 Dec 2010 17:12:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/10/2010 01:09 AM, Xiaofeng Yan wrote:
> Hi Saul & Mark,
>
> I push two scripts to poky and other people can solve bugs from lsb.
> they may ensure whether the bugs modified by them is right or not with
> this script. I want to write a user manual about how to make a test on
> wiki web "https://wiki.pokylinux.org/wiki/", if you permit me. I can't
> integrate them to auto-test function from Jiajun Xu because of some
> problems form rpm database on target platform.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
> Branch: xiaofeng/distro
> Browse:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/distro
>
> Thanks,
> Xiaofeng Yan <xiaofeng.yan@windriver.com>
> ---
>
>
> Xiaofeng Yan (2):
> creat-lsb-image: download lsb test suite and creat a image with lsb
> test suite
> lsbsetup: Set up lsb test environment on target platform
>
> meta/recipes-extended/lsbsetup/lsb/LSB_Setup.sh | 197
> +++++++++++++++++++++++
> meta/recipes-extended/lsbsetup/lsbsetup_0.9.bb | 32 ++++
> scripts/creat-lsb-image | 170 +++++++++++++++++++
> 3 files changed, 399 insertions(+), 0 deletions(-)
> create mode 100644 meta/recipes-extended/lsbsetup/lsb/LSB_Setup.sh
> create mode 100644 meta/recipes-extended/lsbsetup/lsbsetup_0.9.bb
> create mode 100755 scripts/creat-lsb-image
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
I have pulled this into Master (for M2), I did move the lsbsetup recipe 
into lsb as it seemed that they are appropriate to share the same space.

Thanks

Sau!


