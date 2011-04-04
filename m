Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id B2B764C80050
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 12:16:21 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Apr 2011 10:16:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,298,1299484800"; d="scan'208";a="413572297"
Received: from unknown (HELO [10.255.12.228]) ([10.255.12.228])
	by azsmga001.ch.intel.com with ESMTP; 04 Apr 2011 10:16:20 -0700
Message-ID: <4D99FCE4.6000209@intel.com>
Date: Mon, 04 Apr 2011 10:16:20 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <1bdc18$k2a46n@fmsmga002.fm.intel.com>
In-Reply-To: <1bdc18$k2a46n@fmsmga002.fm.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] meta-fishriver: new BSP
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
X-List-Received-Date: Mon, 04 Apr 2011 17:16:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/30/2011 05:41 PM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset implements a new BSP for Fish River Island (Z530/EG20T).
>
> The basic platorm support works e.g. network, sato desktop,
> USB keyboard/mouse, but it currently only supports vesa.
>
> Better graphics support and support for more of the Fish River Island
> devices will be added later.
>
> Please pull into meta-intel/master.
>
> Pull URL: git://git.pokylinux.org/meta-intel.git
>    Branch: tzanussi/meta-fishriver-initial-BSP
>    Browse: http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/meta-fishriver-initial-BSP
>
> Tom Zanussi (1):
>    meta-fishriver: new layer for Fish River Island (Z530/EG20T) systems
>
>   meta-fishriver/COPYING.MIT                         |   17 ++++
>   meta-fishriver/README                              |   94 ++++++++++++++++++++
>   meta-fishriver/conf/layer.conf                     |   10 ++
>   meta-fishriver/conf/machine/fishriver.conf         |   46 ++++++++++
>   .../formfactor/formfactor/fishriver/machconfig     |    3 +
>   .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
>   .../xserver-xf86-config/fishriver/xorg.conf        |   26 ++++++
>   .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
>   .../recipes-kernel/linux/linux-yocto_git.bbappend  |    4 +
>   9 files changed, 206 insertions(+), 0 deletions(-)
>   create mode 100644 meta-fishriver/COPYING.MIT
>   create mode 100644 meta-fishriver/README
>   create mode 100644 meta-fishriver/binary/.gitignore
>   create mode 100644 meta-fishriver/conf/layer.conf
>   create mode 100644 meta-fishriver/conf/machine/fishriver.conf
>   create mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig
>   create mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
>   create mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf
>   create mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>   create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pushed into meta-intel master

Thanks
	Sau!


