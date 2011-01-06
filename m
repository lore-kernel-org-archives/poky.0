Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 626234C81146
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 11:48:30 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jan 2011 09:47:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,284,1291622400"; d="scan'208";a="644154525"
Received: from unknown (HELO [10.255.14.7]) ([10.255.14.7])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2011 09:47:59 -0800
Message-ID: <4D26004F.4040305@linux.intel.com>
Date: Thu, 06 Jan 2011 09:47:59 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Dexuan Cui <dexuan.cui@intel.com>
References: <cover.1294285114.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294285114.git.dexuan.cui@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] fix fix LIC_FILES_CHKSUM for pixman, compositeproto, xproto, inputproto, libdmx
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
X-List-Received-Date: Thu, 06 Jan 2011 17:48:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2011 07:43 PM, Dexuan Cui wrote:
> I double checked the 10 recipes I upgraded last night and found the 5 ones'
> LIC_FILES_CHKSUM should be fixed.
> Previously I carelessly neglected the warning messages as that didn't cause build failure. Sorry!
>
> Hi Saul, you might want to rebase the 5 commits and merge them into the previous ones.
>
> Thanks,
> - Dexuan
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dcui/master
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master
>
> Thanks,
>      Dexuan Cui<dexuan.cui@intel.com>
> ---
>
>
> Dexuan Cui (5):
>    libdmx: fix LIC_FILES_CHKSUM
>    inputproto: fix LIC_FILES_CHKSUM
>    xproto: fix LIC_FILES_CHKSUM
>    compositeproto: fix LIC_FILES_CHKSUM
>    pixman: fix LIC_FILES_CHKSUM
>
>   meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb     |    4 ++--
>   meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb    |    2 +-
>   .../xorg-proto/compositeproto_0.4.2.bb             |    6 +++---
>   .../xorg-proto/inputproto_2.0.1.bb                 |    2 +-
>   meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb  |    2 +-
>   5 files changed, 8 insertions(+), 8 deletions(-)
>
Pulled into Master

Thanks

    Sau!



