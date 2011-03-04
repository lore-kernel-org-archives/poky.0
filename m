Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C3AB4C80A72
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 19:27:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2011 17:27:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,261,1297065600"; d="scan'208";a="715962534"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by orsmga001.jf.intel.com with ESMTP; 03 Mar 2011 17:27:39 -0800
Message-ID: <4D70400A.7060705@intel.com>
Date: Thu, 03 Mar 2011 17:27:38 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1299153379.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1299153379.git.edwin.zhai@intel.com>
Subject: Re: [PATCH 0/3] Bug fixes for 1.0 M4, Edwin, Mar 3, 2011
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
X-List-Received-Date: Fri, 04 Mar 2011 01:27:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2011 03:59 AM, Zhai Edwin wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
>
> Saul,
> These are bug fixes for 456,751,781. Pls. have a look and pull.
>
> Thanks,
> edwin
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: gzhai/fix2
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix2
>
> Thanks,
>      Zhai Edwin<edwin.zhai@intel.com>
> ---
>
>
> Zhai Edwin (3):
>    x11vnc: Fix the start failure
>    sato-icon-theme: Explictly use "Sato" as gtk icon theme
>    gstreamer: install the sound card driver of es1370
>
>   .../x11vnc/files/starting-fix.patch                |   18 ++++++++++++++++++
>   meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb      |    3 ++-
>   .../gstreamer/gstreamer_0.10.31.bb                 |    3 +++
>   .../sato-icon-theme/sato-icon-theme.inc            |    3 +++
>   4 files changed, 26 insertions(+), 1 deletions(-)
>   create mode 100644 meta/recipes-graphics/x11vnc/files/starting-fix.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged these into OE-Core and Bernard

Thanks
	Sau!


