Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F3CE4C800C0
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 09:57:51 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Feb 2011 07:57:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="392347230"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by azsmga001.ch.intel.com with ESMTP; 22 Feb 2011 07:57:50 -0800
Message-ID: <4D63DCFE.1090405@intel.com>
Date: Tue, 22 Feb 2011 07:57:50 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Dongxiao Xu <dongxiao.xu@intel.com>
References: <cover.1297927348.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1297927348.git.dongxiao.xu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1][PULL] Fix BUG 472
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
X-List-Received-Date: Tue, 22 Feb 2011 15:57:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/16/2011 11:25 PM, Dongxiao Xu wrote:
> From: Dongxiao Xu<dongxiao.xu@intel.com>
>
> This pull request fixes [BUGID #472], please help to review and pull.
>
> User may still need to configure network even if all the services are not available currently, for example, setting online/offline mode, etc.
>
> Enable the applet pop up menu even if the service status is unavailable.
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
> Dongxiao Xu (1):
>    connman-gnome: Enable config menu popup even services are not
>      available
>
>   .../connman-gnome/applet_menu_popup_fix.patch      |   19 +++++++++++++++++++
>   .../connman/connman-gnome_0.5.bb                   |    5 +++--
>   2 files changed, 22 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-connectivity/connman/connman-gnome/applet_menu_popup_fix.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Master

Thanks
	Sau!


