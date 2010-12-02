Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3CB084C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 11:54:03 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 09:53:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="579943806"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 09:53:59 -0800
Message-ID: <4CF7DD36.4020107@intel.com>
Date: Thu, 02 Dec 2010 09:53:58 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1290689785.git.ke.yu@intel.com>
In-Reply-To: <cover.1290689785.git.ke.yu@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/8] add license checksum
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
X-List-Received-Date: Thu, 02 Dec 2010 17:54:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/25/2010 04:56 AM, Yu Ke wrote:
> add license checksum for:
> - fotowall
> - iputils
> - libdrm
> - qemugl
> - xf86-video-vesa
> - xf86-input-synaptics
> - xf86-video-intel
> - xf86-video-omapfb
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kyu3/license
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/license
>
> Thanks,
>      Yu Ke<ke.yu@intel.com>
> ---
>
>
> Yu Ke (8):
>    fotowall: add license checksum
>    iputils: add license checksum
>    libdrm: add license checksum
>    qemugl: add license checksum
>    xf86-video-vesa: add license checksum
>    xf86-input-synaptics: add license checksum
>    xf86-video-intel: add license checksum
>    xf86-video-omapfb: add license checksum
>
>   meta/recipes-extended/iputils/iputils_s20100418.bb |    5 +++++
>   meta/recipes-graphics/drm/libdrm_2.4.22.bb         |    2 ++
>   meta/recipes-graphics/mesa/qemugl_git.bb           |    4 +++-
>   .../xorg-driver/xf86-input-synaptics_1.2.1.bb      |    2 ++
>   .../xorg-driver/xf86-video-intel_2.13.0.bb         |    2 ++
>   .../xorg-driver/xf86-video-omapfb_git.bb           |    2 ++
>   .../xorg-driver/xf86-video-vesa_2.3.0.bb           |    2 ++
>   meta/recipes-qt/qt-apps/fotowall_0.9.bb            |    2 ++
>   8 files changed, 20 insertions(+), 1 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pull into Master

Thanks
    Sau!


