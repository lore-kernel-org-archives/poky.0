Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2BF3F4C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 13:13:25 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2011 11:13:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="715814093"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by orsmga001.jf.intel.com with ESMTP; 03 Mar 2011 11:13:24 -0800
Message-ID: <4D6FE854.5020900@intel.com>
Date: Thu, 03 Mar 2011 11:13:24 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1298991086.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1298991086.git.nitin.a.kamble@intel.com>
Subject: Re: [PATCH 0/1] bugfix for bug#754
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
X-List-Received-Date: Thu, 03 Mar 2011 19:13:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2011 06:52 AM, Nitin A Kamble wrote:
> From: Nitin A Kamble<nitin.a.kamble@intel.com>
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
>    gcc: take out libiberty files from gcc packages
>
>   .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
>   .../gcc/gcc-cross-intermediate.inc                 |    3 ++-
>   .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
>   meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
>   .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
>   .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
>   meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
>   meta/recipes-devtools/gcc/gcc-package-cross.inc    |    4 ++++
>   meta/recipes-devtools/gcc/gcc-package-target.inc   |    4 ++++
>   meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
>   10 files changed, 17 insertions(+), 8 deletions(-)
>
Merged into Bernard, OE-Core and Master

Thanks
	Sau!

