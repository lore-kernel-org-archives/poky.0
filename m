Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 18B754C800C0
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 10:01:22 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Feb 2011 08:01:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="392349824"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by azsmga001.ch.intel.com with ESMTP; 22 Feb 2011 08:01:22 -0800
Message-ID: <4D63DDD1.3090503@intel.com>
Date: Tue, 22 Feb 2011 08:01:21 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Nitin A Kamble <nitin.a.kamble@intel.com>
References: <cover.1297919871.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1297919871.git.nitin.a.kamble@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] perl-native parallel build issue fix
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
X-List-Received-Date: Tue, 22 Feb 2011 16:01:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/16/2011 09:21 PM, Nitin A Kamble wrote:
> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>
> Richard,
>
> This patch is found to be fixing the parallel build issue found today on 40 way system. Need more testing to confirm fixing. Darren is running a build to
> verify.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: nitin/misc
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc
>
> Thanks,
>      Nitin A Kamble<nitin.a.kamble@intel.com>
> ---
>
>
> Nitin A Kamble (1):
>    perl-native: fix parallel build
>
>   .../perl/perl-5.12.2/parallel_build_fix.patch      |   18 ++++++++++++++++++
>   meta/recipes-devtools/perl/perl-native_5.12.2.bb   |    3 ++-
>   meta/recipes-devtools/perl/perl_5.12.2.bb          |    3 ++-
>   3 files changed, 22 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix.patch
>
Merged into Master

	Thanks
		Sau!


