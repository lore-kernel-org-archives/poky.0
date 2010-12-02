Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAEE54C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 12:06:06 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 10:06:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="579949401"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 10:06:06 -0800
Message-ID: <4CF7E00D.3030407@intel.com>
Date: Thu, 02 Dec 2010 10:06:05 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1290787706.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290787706.git.edwin.zhai@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 00/11] X apps/UX license checksum, Edwin
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
X-List-Received-Date: Thu, 02 Dec 2010 18:06:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/2010 08:08 AM, Zhai Edwin wrote:
> Saul,
> These are commits to add missing license checksum. I don't touch those recipes
> that will be upgraded soon. One exception is pointercal, where only one config
> file for each arch, so there is no consistent file for license checksum.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: gzhai/distro02
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/distro02
>
> Thanks,
>      Zhai Edwin<edwin.zhai@intel.com>
> ---
>
>
> Zhai Edwin (11):
>    gtk-doc: Add license checksum
>    gtk-theme-torturer: Add license check sum
>    libcanberra: Add license check sum
>    libgalago: Add license checksum
>    matchbox-wm-2: Add license checksum
>    metacity: Add license checksum
>    xvinfo: Add license checksum
>    libfakekey: Add license checksum
>    matchbox-session-sato: Add license checksum
>    matchbox-stroke: Add license checksum
>    qemu: Add license checksum
>
>   .../recipes-connectivity/galago/libgalago_0.5.2.bb |    5 ++++-
>   meta/recipes-devtools/qemu/qemu.inc                |    2 +-
>   meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    3 +++
>   meta/recipes-gnome/gnome/metacity_2.22.0.bb        |    5 ++++-
>   meta/recipes-gnome/gtk-doc/gtk-doc.bb              |    2 ++
>   .../gtk-theme-torturer/gtk-theme-torturer_git.bb   |    1 +
>   meta/recipes-graphics/libfakekey/libfakekey_svn.bb |    1 +
>   .../matchbox-wm-2/matchbox-wm-2_svn.bb             |    4 +++-
>   meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb     |    1 +
>   .../matchbox-sato/matchbox-session-sato_0.1.bb     |    1 +
>   .../matchbox-stroke/matchbox-stroke_svn.bb         |    1 +
>   meta/recipes-tbd/pulseaudio/libcanberra_0.10.bb    |    5 ++++-
>   12 files changed, 26 insertions(+), 5 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
    Sau!



