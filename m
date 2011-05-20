Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 16CBE4C800B0
	for <poky@yoctoproject.org>; Thu, 19 May 2011 19:45:52 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 May 2011 17:45:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,239,1304319600"; d="scan'208";a="439425822"
Received: from unknown (HELO [10.255.12.39]) ([10.255.12.39])
	by azsmga001.ch.intel.com with ESMTP; 19 May 2011 17:45:51 -0700
Message-ID: <4DD5B9BF.8000201@linux.intel.com>
Date: Thu, 19 May 2011 17:45:51 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Robert Yang <liezhi.yang@windriver.com>
References: <cover.1305612543.git.liezhi.yang@windriver.com>
In-Reply-To: <cover.1305612543.git.liezhi.yang@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org
Subject: Re: V4 [PATCH 0/4] Add meta-skeleton and a skeleton for init scripts
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
X-List-Received-Date: Fri, 20 May 2011 00:45:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/16/2011 11:17 PM, Robert Yang wrote:
> Changes of V4:
> * Fix the indent in ${sysconfdir}/init.d/functions
> * Fix the coding style in skeleton_test.c
>
> Thanks for Darren's detailed review, and he is happy now.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: robert/init_scripts
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/init_scripts
>
> Thanks,
>      Robert Yang<liezhi.yang@windriver.com>
> ---
>
>
> Robert Yang (4):
>    Add the layer meta-skeleton
>    Cleanup the whitespace in functions
>    Add pidofproc to ${sysconfdir}/init.d/functions
>    Add a skeleton for init scripts
>
>   meta-skeleton/conf/layer.conf                      |   10 +
>   .../recipes-skeleton/service/service/COPYRIGHT     |   15 ++
>   .../recipes-skeleton/service/service/skeleton      |  193 ++++++++++++++++++++
>   .../service/service/skeleton_test.c                |   12 ++
>   .../recipes-skeleton/service/service_0.1.bb        |   32 ++++
>   .../initscripts/initscripts-1.0/functions          |   39 ++++-
>   6 files changed, 296 insertions(+), 5 deletions(-)
>   create mode 100644 meta-skeleton/conf/layer.conf
>   create mode 100644 meta-skeleton/recipes-skeleton/service/service/COPYRIGHT
>   create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton
>   create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton_test.c
>   create mode 100644 meta-skeleton/recipes-skeleton/service/service_0.1.bb
>

Merged into oe-core and master

Thanks for your work on this effort.

Sau!

