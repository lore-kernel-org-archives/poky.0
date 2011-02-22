Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 48DBF4C8006D
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 09:53:47 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Feb 2011 07:53:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="660277029"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2011 07:53:46 -0800
Message-ID: <4D63DC0A.7070802@intel.com>
Date: Tue, 22 Feb 2011 07:53:46 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Lianhao Lu <lianhao.lu@intel.com>
References: <cover.1297912022.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1297912022.git.lianhao.lu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] [Bug #728] corrected environment files content
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
X-List-Received-Date: Tue, 22 Feb 2011 15:53:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/16/2011 07:08 PM, Lianhao Lu wrote:
> From: Lianhao Lu<lianhao.lu@intel.com>
>
> 1. Added libtool sysroot related param value into environment files.
> 2. Moved common code between meta-environment.bb and populate_sdk.bbclass into toolchain-script.bbclass.
> 3. Set CONFIG_SITE to correct value for autoconf config site.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: llu/bug728
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug728
>
> Thanks,
>      Lianhao Lu<lianhao.lu@intel.com>
> ---
>
>
> Lianhao Lu (3):
>    toolchain-scripts.bbclass: Added libtool sysroot support.
>    toolchain-script/populate_sdk/meta-toolchain: moving common code.
>    recipe-core/meta/meta-toolchain.bb: Set correct value for
>      CONFIG_SITE.
>
>   meta/classes/populate_sdk.bbclass          |   13 +---------
>   meta/classes/toolchain-scripts.bbclass     |   34 +++++++++++++++++++++++-----
>   meta/recipes-core/meta/meta-environment.bb |   16 ++----------
>   meta/recipes-core/meta/meta-toolchain.bb   |    4 ++-
>   4 files changed, 36 insertions(+), 31 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
All merged into Master

Thanks
	Sau!


