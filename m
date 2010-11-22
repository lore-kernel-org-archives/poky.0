Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 43DFF4C81065
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 11:49:16 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2010 09:49:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,237,1288594800"; d="scan'208";a="860240216"
Received: from unknown (HELO [10.255.13.171]) ([10.255.13.171])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2010 09:49:15 -0800
Message-ID: <4CEAAD1B.7010200@intel.com>
Date: Mon, 22 Nov 2010 09:49:15 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1290097804.git.ke.yu@intel.com>
In-Reply-To: <cover.1290097804.git.ke.yu@intel.com>
Subject: Re: [PATCH 0/5] upgrade xserver v2
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
X-List-Received-Date: Mon, 22 Nov 2010 17:49:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/18/2010 08:30 AM, Yu Ke wrote:
> accodring to Saul's comments, V2 patch has the following changes
> - add clear explanation on the commit message.
> - correct the license check sum and  test it
>    against latest poky/master
> - add SRI_URI checksum
> - mesa/cairo related recpies(mesa, talloc, libxml2,cairo) are still hold,
>    as one time build failure are observed. Although the failure
>    disappers after build again, it is better to find out the reason
>    before submitting it.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kyu3/upgrade-11-18
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/upgrade-11-18
>
> Thanks,
>      Yu Ke<ke.yu@intel.com>
> ---
>
>
> Yu Ke (5):
>    libdrm: upgrade from 2.4.21 to 2.4.22
>    xf86-video-intel: upgrade from 2.12.0 to 2.13.0
>    xserver-xf86-dri-lite: upgrade from 1.9.0 rc4 to 1.9.2
>    xrandr: upgrade from 1.3.2 to 1.3.4
>    pixman: upgrade from 0.18.2 to 0.20.0
>
>   .../distro/include/preferred-xorg-versions.inc     |   10 +++---
>   .../installtests.patch                             |    0
>   meta/recipes-graphics/drm/libdrm_2.4.21.bb         |    4 --
>   meta/recipes-graphics/drm/libdrm_2.4.22.bb         |    7 ++++
>   .../xorg-app/xrandr/resolve_symbol_clash.patch     |   33 --------------------
>   .../xorg-app/{xrandr_1.3.2.bb =>  xrandr_1.3.4.bb}  |    3 +-
>   ...-intel_2.12.0.bb =>  xf86-video-intel_2.13.0.bb} |    3 ++
>   .../{pixman_0.18.2.bb =>  pixman_0.20.0.bb}         |    3 ++
>   ....8.99.904.bb =>  xserver-xf86-dri-lite_1.9.2.bb} |    5 ++-
>   9 files changed, 24 insertions(+), 44 deletions(-)
>   rename meta/recipes-graphics/drm/{libdrm-2.4.21 =>  libdrm-2.4.22}/installtests.patch (100%)
>   delete mode 100644 meta/recipes-graphics/drm/libdrm_2.4.21.bb
>   create mode 100644 meta/recipes-graphics/drm/libdrm_2.4.22.bb
>   delete mode 100644 meta/recipes-graphics/xorg-app/xrandr/resolve_symbol_clash.patch
>   rename meta/recipes-graphics/xorg-app/{xrandr_1.3.2.bb =>  xrandr_1.3.4.bb} (61%)
>   rename meta/recipes-graphics/xorg-driver/{xf86-video-intel_2.12.0.bb =>  xf86-video-intel_2.13.0.bb} (67%)
>   rename meta/recipes-graphics/xorg-lib/{pixman_0.18.2.bb =>  pixman_0.20.0.bb} (80%)
>   rename meta/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.8.99.904.bb =>  xserver-xf86-dri-lite_1.9.2.bb} (76%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
    Sau!



