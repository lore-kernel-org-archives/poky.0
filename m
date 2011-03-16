Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 970AD4C80A73
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 19:45:31 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Mar 2011 17:45:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="613457161"
Received: from unknown (HELO [10.255.12.136]) ([10.255.12.136])
	by orsmga002.jf.intel.com with ESMTP; 15 Mar 2011 17:45:30 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <a57a7d6f2e311b9025bf421074132594ef35d1b8.1300234408.git.dvhart@linux.intel.com>
References: <cover.1300234408.git.dvhart@linux.intel.com>
	<a57a7d6f2e311b9025bf421074132594ef35d1b8.1300234408.git.dvhart@linux.intel.com>
Date: Tue, 15 Mar 2011 19:45:27 -0500
Message-ID: <1300236327.809.22.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/2] n450: add xorg.conf to disable AutoAddDevices
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
X-List-Received-Date: Wed, 16 Mar 2011 00:45:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 17:19 -0700, Darren Hart wrote:
> From: Darren Hart <dvhart@linux.intel.com>
> 
> Fixes [YOCTO #869] (2 of 2)
> 
> The n450 needs:
> 
>     Option        "AutoAddDevices"  "False"
> 
> In the ServerFlags, or it will fail to detect the keyboard.

It looks like this patch does more than that, but anyway...

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  .../xserver-xf86-config/n450/xorg.conf             |   26 ++++++++++++++++++++
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 ++
>  2 files changed, 29 insertions(+), 0 deletions(-)
>  create mode 100644 meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config/n450/xorg.conf
>  create mode 100644 meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> 
> diff --git a/meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config/n450/xorg.conf b/meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config/n450/xorg.conf
> new file mode 100644
> index 0000000..e18b911
> --- /dev/null
> +++ b/meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config/n450/xorg.conf
> @@ -0,0 +1,26 @@
> +Section "Device"
> +    Identifier    "Intel Graphics Driver"
> +    Driver        "intel"
> +EndSection
> +
> +Section "Monitor"
> +    Identifier    "Generic Monitor"
> +    Option        "DPMS"
> +EndSection
> +
> +Section "Screen"
> +    Identifier    "Default Screen"
> +    Device        "Intel Graphics Driver"
> +    Monitor        "Generic Monitor"
> +    DefaultDepth    24
> +EndSection
> +
> +Section "ServerLayout"
> +    Identifier    "Default Layout"
> +    Screen        "Default Screen"
> +EndSection
> +
> +Section "ServerFlags"
> +    Option        "DontZap"  "0"
> +    Option	  "AutoAddDevices" "False"
> +EndSection
> diff --git a/meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> new file mode 100644
> index 0000000..4b8d0e6
> --- /dev/null
> +++ b/meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -0,0 +1,3 @@
> +THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> +FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
> +



