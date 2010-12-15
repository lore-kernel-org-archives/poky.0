Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3EADF4C811B9
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 11:14:45 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Dec 2010 09:14:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,350,1288594800"; d="scan'208";a="362118403"
Received: from unknown (HELO [10.255.14.1]) ([10.255.14.1])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 09:14:44 -0800
Message-ID: <4D08F784.8020908@intel.com>
Date: Wed, 15 Dec 2010 09:14:44 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Dexuan Cui <dexuan.cui@intel.com>
References: <cover.1292312335.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1292312335.git.dexuan.cui@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] fix gnome-desktop build failure
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
X-List-Received-Date: Wed, 15 Dec 2010 17:14:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/13/2010 11:38 PM, Dexuan Cui wrote:
> This is used to fix Bug 587 - gnome-desktop: do_compile failed.
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
> Dexuan Cui (1):
>    gnome-desktop: add --disable-desktop-docs
>
>   meta/recipes-gnome/gnome/gnome-desktop.inc |    7 +++++--
>   1 files changed, 5 insertions(+), 2 deletions(-)
>
Thanks for the fast turn, this is pulled into M2 and Master

Sau!


