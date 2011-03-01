Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A8D6B4C800A7
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 12:54:06 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Mar 2011 10:54:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,248,1297065600"; d="scan'208";a="395879816"
Received: from unknown (HELO [10.255.12.100]) ([10.255.12.100])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 10:54:05 -0800
Message-ID: <4D6D40CD.4000505@intel.com>
Date: Tue, 01 Mar 2011 10:54:05 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Dongxiao Xu <dongxiao.xu@intel.com>
References: <cover.1298882840.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1298882840.git.dongxiao.xu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2][PULL] Bug fix for 709 and 710
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
X-List-Received-Date: Tue, 01 Mar 2011 18:54:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/28/2011 12:50 AM, Dongxiao Xu wrote:
> From: Dongxiao Xu<dongxiao.xu@intel.com>
>
> Hi Richard and Saul,
>
> This pull request fixes [BUGID #709] and [BUGID #710], which are SRC_URI
> changes. Please help to review and pull.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dxu4/bugfix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix
>
> Thanks,
>      Dongxiao Xu<dongxiao.xu@intel.com>
> ---
>
>
> Dongxiao Xu (2):
>    attr: Change SRC_URI to a correct location
>    ncurses: Change ncurses patch SRC_URI location
>
>   meta/recipes-core/ncurses/ncurses_5.7.bb |    5 +++--
>   meta/recipes-support/attr/attr.inc       |    2 +-
>   meta/recipes-support/attr/attr_2.4.44.bb |    2 +-
>   3 files changed, 5 insertions(+), 4 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master and Bernard

Thanks
	Sau!


