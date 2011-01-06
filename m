Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA8BE4C80BCF
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 10:59:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Jan 2011 08:59:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,284,1291622400"; d="scan'208";a="694244575"
Received: from unknown (HELO [10.255.14.7]) ([10.255.14.7])
	by orsmga001.jf.intel.com with ESMTP; 06 Jan 2011 08:59:38 -0800
Message-ID: <4D25F4FA.9060401@linux.intel.com>
Date: Thu, 06 Jan 2011 08:59:38 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Dexuan Cui <dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/12] upgrade for x11 libs
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
X-List-Received-Date: Thu, 06 Jan 2011 16:59:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2011 05:05 AM, Dexuan Cui wrote:
> I tested it (sato, sdk) on qemux86, qemumips with incremental and full builds.
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
> Dexuan Cui (12):
>    renderproto: upgrade from 0.11 to the latest version 0.11.1
>    inputproto: upgrade from 2.0 to 2.0.1
>    xproto: upgrade from 7.0.19 to 7.0.20
>    compositeproto: upgrade from 0.4 to 0.4.2
>    resourceproto: upgrade from 1.1.0 to 1.1.1
>    scrnsaverproto: upgrade from 1.2.0 to 1.2.1
>    pixman: upgrade from 0.20.0 to 0.21.2
>    libdmx: upgrade from 1.1.0 to 1.1.1
>    libxxf86misc: upgrade from 1.0.2 to 1.0.3
>    librsvg: upgrade from 2.32.0 to 2.32.1
>    preferred-xorg-versions.inc: updated for lastest package updates
>    distro_tracking_fields.inc: update for lastest package updates
>
>   .../conf/distro/include/distro_tracking_fields.inc |   96 +++++++++++---------
>   .../distro/include/preferred-xorg-versions.inc     |   28 +++---
>   .../doc_Makefile.patch                             |    0
>   .../{librsvg_2.32.0.bb =>  librsvg_2.32.1.bb}       |    7 +-
>   .../xorg-lib/{libdmx_1.1.0.bb =>  libdmx_1.1.1.bb}  |    8 +-
>   ...libxxf86misc_1.0.2.bb =>  libxxf86misc_1.0.3.bb} |    5 +-
>   .../{pixman_0.20.0.bb =>  pixman_0.21.2.bb}         |    7 +-
>   ...mpositeproto_0.4.bb =>  compositeproto_0.4.2.bb} |    7 +-
>   .../{inputproto_2.0.bb =>  inputproto_2.0.1.bb}     |    7 +-
>   .../{renderproto_0.11.bb =>  renderproto_0.11.1.bb} |    9 +-
>   ...sourceproto_1.1.0.bb =>  resourceproto_1.1.1.bb} |    8 +-
>   ...saverproto_1.2.0.bb =>  scrnsaverproto_1.2.1.bb} |    9 ++-
>   .../{xproto_7.0.19.bb =>  xproto_7.0.20.bb}         |    7 +-
>   13 files changed, 110 insertions(+), 88 deletions(-)
>   rename meta/recipes-gnome/librsvg/{librsvg-2.32.0 =>  librsvg-2.32.1}/doc_Makefile.patch (100%)
>   rename meta/recipes-gnome/librsvg/{librsvg_2.32.0.bb =>  librsvg_2.32.1.bb} (90%)
>   rename meta/recipes-graphics/xorg-lib/{libdmx_1.1.0.bb =>  libdmx_1.1.1.bb} (66%)
>   rename meta/recipes-graphics/xorg-lib/{libxxf86misc_1.0.2.bb =>  libxxf86misc_1.0.3.bb} (66%)
>   rename meta/recipes-graphics/xorg-lib/{pixman_0.20.0.bb =>  pixman_0.21.2.bb} (79%)
>   rename meta/recipes-graphics/xorg-proto/{compositeproto_0.4.bb =>  compositeproto_0.4.2.bb} (62%)
>   rename meta/recipes-graphics/xorg-proto/{inputproto_2.0.bb =>  inputproto_2.0.1.bb} (65%)
>   rename meta/recipes-graphics/xorg-proto/{renderproto_0.11.bb =>  renderproto_0.11.1.bb} (60%)
>   rename meta/recipes-graphics/xorg-proto/{resourceproto_1.1.0.bb =>  resourceproto_1.1.1.bb} (50%)
>   rename meta/recipes-graphics/xorg-proto/{scrnsaverproto_1.2.0.bb =>  scrnsaverproto_1.2.1.bb} (53%)
>   rename meta/recipes-graphics/xorg-proto/{xproto_7.0.19.bb =>  xproto_7.0.20.bb} (59%)
>
Pulled into Master

Thanks for these and fixing the LIC_FILES Issues

Sau!


