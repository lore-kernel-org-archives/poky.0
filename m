Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E91F34C810AC
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 16:42:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Nov 2010 14:42:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,277,1288594800"; d="scan'208";a="354678953"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by azsmga001.ch.intel.com with ESMTP; 29 Nov 2010 14:42:20 -0800
Message-ID: <4CF42C4C.7000407@intel.com>
Date: Mon, 29 Nov 2010 14:42:20 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1290418904.git.lei.mei@intel.com>
In-Reply-To: <cover.1290418904.git.lei.mei@intel.com>
Subject: Re: [PATCH 0/1] update galago-daemon gccmakedep gnome-doc-utils libart-lgpl liberation-fonts
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
X-List-Received-Date: Mon, 29 Nov 2010 22:42:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/22/2010 01:41 AM, Mei Lei wrote:
>
> Add five recipes license checksum information.
>      galago-daemon: COPYING file checksum
>      gccmakedep: COPYING file checksum
>      gnome-doc-utils: LGPL file and GPL file checksum
>      libart-lgpl: COPYING file checksum
>      liberation-fonts:COPYING file checksum
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
> Mei Lei (1):
>    This patch contains five recipes license checksum information.
>
>   .../galago/galago-daemon_0.5.1.bb                  |    1 +
>   meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb |    3 ++-
>   meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb     |    1 +
>   .../ttf-fonts/liberation-fonts_1.04.bb             |    1 +
>   .../recipes-graphics/xorg-util/gccmakedep_1.0.2.bb |    2 +-
>   5 files changed, 6 insertions(+), 2 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


Pulled into Master

Thanks
    Sau!

