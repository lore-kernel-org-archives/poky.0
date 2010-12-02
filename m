Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 238D04C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 12:04:34 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Dec 2010 10:04:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="863672195"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2010 10:04:33 -0800
Message-ID: <4CF7DFB1.5040405@intel.com>
Date: Thu, 02 Dec 2010 10:04:33 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mei Lei <lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 00/14]Update 14 recipes license files MD5sum	information
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
X-List-Received-Date: Thu, 02 Dec 2010 18:04:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/2010 07:31 AM, Mei Lei wrote:
> This includes 14 recipes update
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: lmei3/chksum3
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/chksum3
>
> Thanks,
>      Mei Lei<lei.mei@intel.com>
> ---
>
>
> Mei Lei (14):
>    quicky:Add license checksum to bb file
>    modutils-collateral:Add license checksum to bb file
>    opkg-config-base:Add license checksum to bb file
>    opkg-collateral:Add license checksum to bb file
>    poky-feed-config-opkg:Add license checksum to bb file
>    consolekit:Add license checksum to bb file
>    gobject-introspection:Add license checksum to bb file
>    console-tools:Add license checksum and update the GPL information
>    libxml-parser-perl:Add license checksum to bb file
>    libtimedate-perl:Add license checksum and update the GPL information
>    libconvert-ans1-perl:Add license checksum and update the GPL
>      information
>    gnu-config:Add license checksum and update the GPL information
>    gdb:Add license checksum and update the GPL information
>    gcc:Add license checksum and update the GPL information
>
>   meta/classes/insane.bbclass                        |    2 +-
>   meta/conf/bitbake.conf                             |    2 +-
>   .../console-tools/console-tools_0.3.2.bb           |    3 ++-
>   .../feed-config/poky-feed-config-opkg_1.0.bb       |    3 ++-
>   meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    7 ++++++-
>   meta/recipes-devtools/gdb/gdb_7.2.bb               |    6 +++++-
>   .../gnu-config/gnu-config_20080123.bb              |    3 ++-
>   meta/recipes-devtools/opkg/opkg-collateral.bb      |    3 ++-
>   meta/recipes-devtools/opkg/opkg-config-base_1.0.bb |    3 ++-
>   .../perl/libxml-parser-perl_2.36.bb                |    1 +
>   .../perl/libconvert-asn1-perl_0.21.bb              |    3 ++-
>   .../recipes-extended/perl/libtimedate-perl_1.20.bb |    3 ++-
>   .../gnome/gobject-introspection_git.bb             |    3 ++-
>   .../recipes-kernel/modutils/modutils-collateral.bb |    5 +++--
>   meta/recipes-qt/qt-apps/quicky_0.4.bb              |    1 +
>   .../recipes-support/consolekit/consolekit_0.3.0.bb |    1 +
>   16 files changed, 35 insertions(+), 14 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pull into Master

Thanks
    Sau!


