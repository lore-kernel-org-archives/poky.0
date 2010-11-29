Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A2484C810B1
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 16:47:25 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Nov 2010 14:47:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,277,1288594800"; d="scan'208";a="682135940"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by orsmga001.jf.intel.com with ESMTP; 29 Nov 2010 14:47:24 -0800
Message-ID: <4CF42D7C.7000802@intel.com>
Date: Mon, 29 Nov 2010 14:47:24 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
Subject: Re: [PATCH 00/25]galago-daemon gccmakedep...(25 recipes) license checksum
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
X-List-Received-Date: Mon, 29 Nov 2010 22:47:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/23/2010 02:01 AM, Mei Lei wrote:
> This includes 25 recipes license file checksum update.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: lmei3/chksum
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/chksum
>
> Thanks,
>      Mei Lei<lei.mei@intel.com>
> ---
>
>
> Mei Lei (25):
>    galago-daemon: Add license file checksum and update GPL information
>    gccmakedep: Add license checksum to bb file
>    gnome-doc-utils:Add LGPL file and GPL file checksum to bb file
>    libart-lgpl:Add license file checksum and update the GPL information
>    liberation-fonts:Add license file checksum to bb file
>    libunique:Add license file checksum to bb file
>    libxpm: Add license file checksum to bb file
>    libxprintapputil:Add license checksum to bb file
>    libxprintutil:Add license checksum to bb file
>    ttf-bitstream-vera:Add license file checksum to bb file
>    libxtrap:Add license file checksum to bb file
>    lttng:Add license file checksum and update the GPL information
>    dpkg:Add license file checksum to bb file
>    minicom: Add license file checksum and update the GPL information to
>      bb file
>    acpid: Add license checksum to bb file
>    apr:Add license checksum to bb file
>    apr-util:Add license checksum to bb file
>    apt:Add license checksum to bb file
>    beecrypt:Add license checksum and update the GPL to bb file
>    chrpath:Add license checksum and update the GPL to bb file
>    dosfstools:Add license checksum and update the GPL information
>    expat:Add license checksum to bb file
>    gssdp:Add license checksum and update the GPL information
>    insserv:Add license checksum and update the GPL information
>    libacpi:Add license checksum to bb file
>
>   meta/recipes-bsp/acpid/acpid_1.0.6.bb              |    2 +-
>   meta/recipes-bsp/libacpi/libacpi_0.2.bb            |    1 +
>   .../galago/galago-daemon_0.5.1.bb                  |    3 ++-
>   meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb     |    3 ++-
>   meta/recipes-core/expat/expat_2.0.1.bb             |    2 +-
>   meta/recipes-devtools/apt/apt_0.7.14.bb            |    2 +-
>   meta/recipes-devtools/chrpath/chrpath_0.13.bb      |    3 ++-
>   .../recipes-devtools/dosfstools/dosfstools_2.10.bb |    4 ++--
>   .../recipes-devtools/dosfstools/dosfstools_2.11.bb |    4 ++--
>   meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb        |    1 +
>   meta/recipes-devtools/insserv/insserv_1.11.0.bb    |    3 ++-
>   meta/recipes-extended/minicom/minicom_2.3.bb       |    3 ++-
>   meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb |    3 ++-
>   meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb     |    3 ++-
>   .../ttf-fonts/liberation-fonts_1.04.bb             |    1 +
>   .../ttf-fonts/ttf-bitstream-vera_1.10.bb           |    1 +
>   meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb     |    1 +
>   .../xorg-lib/libxprintapputil_1.0.1.bb             |    1 +
>   .../xorg-lib/libxprintutil_1.0.1.bb                |    1 +
>   meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb   |    2 +-
>   .../recipes-graphics/xorg-util/gccmakedep_1.0.2.bb |    2 +-
>   meta/recipes-kernel/lttng/lttng-control_0.87.bb    |    4 ++--
>   meta/recipes-support/apr/apr-util_1.3.4.bb         |    2 +-
>   meta/recipes-support/apr/apr_1.3.3.bb              |    2 +-
>   meta/recipes-support/beecrypt/beecrypt_4.1.2.bb    |    4 +++-
>   meta/recipes-tbd/libunique/libunique_1.1.6.bb      |    2 +-
>   26 files changed, 38 insertions(+), 22 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Pulled into Master

Thanks
    Sau!

