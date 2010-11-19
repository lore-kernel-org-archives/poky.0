Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A57594C80BD4
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 12:26:25 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Nov 2010 10:26:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,224,1288594800"; d="scan'208";a="859476134"
Received: from unknown (HELO [10.255.13.99]) ([10.255.13.99])
	by fmsmga001.fm.intel.com with ESMTP; 19 Nov 2010 10:26:20 -0800
Message-ID: <4CE6C14B.8010301@intel.com>
Date: Fri, 19 Nov 2010 10:26:19 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1289868964.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289868964.git.dongxiao.xu@intel.com>
Subject: Re: [PATCH 0/8] Multimedia/Connectivity/Base, Dongxiao, 2010/11/16
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
X-List-Received-Date: Fri, 19 Nov 2010 18:26:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/15/2010 04:56 PM, Dongxiao Xu wrote:
> This pull request upgrades some recipes in multimedia/connectivity/base
> part, please help to review and pull.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dxu4/distro
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro
>
> Thanks,
>      Dongxiao Xu<dongxiao.xu@intel.com>
> ---
>
>
> Dongxiao Xu (8):
>    bluez4: Upgraded to version 4.79.
>    neon: Upgraded to version 0.29.5
>    libmusicbrainz: Upgraded to version 3.0.3
>    libogg: Upgrade to version 1.2.1
>    libvorbis: Upgraded to version 1.3.2
>    taglib: Upgraded to version 1.6.3
>    quota: Upgraded to version 4.00-pre1
>    distro_tracking: update distro tracking fileds for bluez4, neon, etc.
>
>   .../conf/distro/include/distro_tracking_fields.inc |   41 ++++++++++---------
>   .../{bluez4-4.66 =>  bluez4-4.79}/bluetooth.conf    |    0
>   .../fix-dfutool-usb-declaration-mismatch.patch     |    0
>   .../hid2hci_usb_init.patch                         |    0
>   .../{bluez4-4.66 =>  bluez4-4.79}/sbc-thumb.patch   |    0
>   .../bluez/{bluez4_4.66.bb =>  bluez4_4.79.bb}       |    0
>   .../quota/{quota_3.17.bb =>  quota_4.00-pre1.bb}    |    0
>   .../libogg/{libogg_1.2.0.bb =>  libogg_1.2.1.bb}    |    0
>   .../{libvorbis_1.3.1.bb =>  libvorbis_1.3.2.bb}     |    0
>   .../fix_build_issue_for_gcc_4.5.0.patch            |    0
>   ...usicbrainz_3.0.2.bb =>  libmusicbrainz_3.0.3.bb} |    2 +-
>   .../{neon-0.29.3 =>  neon-0.29.5}/pkgconfig.patch   |    0
>   .../neon/{neon_0.29.3.bb =>  neon_0.29.5.bb}        |    0
>   .../configuretweak.patch                           |    0
>   .../{taglib-1.6.1 =>  taglib-1.6.3}/nolibtool.patch |    0
>   .../taglib/{taglib_1.6.1.bb =>  taglib_1.6.3.bb}    |    2 +-
>   16 files changed, 24 insertions(+), 21 deletions(-)
>   rename meta/recipes-connectivity/bluez/{bluez4-4.66 =>  bluez4-4.79}/bluetooth.conf (100%)
>   rename meta/recipes-connectivity/bluez/{bluez4-4.66 =>  bluez4-4.79}/fix-dfutool-usb-declaration-mismatch.patch (100%)
>   rename meta/recipes-connectivity/bluez/{bluez4-4.66 =>  bluez4-4.79}/hid2hci_usb_init.patch (100%)
>   rename meta/recipes-connectivity/bluez/{bluez4-4.66 =>  bluez4-4.79}/sbc-thumb.patch (100%)
>   rename meta/recipes-connectivity/bluez/{bluez4_4.66.bb =>  bluez4_4.79.bb} (100%)
>   rename meta/recipes-extended/quota/{quota_3.17.bb =>  quota_4.00-pre1.bb} (100%)
>   rename meta/recipes-multimedia/libogg/{libogg_1.2.0.bb =>  libogg_1.2.1.bb} (100%)
>   rename meta/recipes-multimedia/libvorbis/{libvorbis_1.3.1.bb =>  libvorbis_1.3.2.bb} (100%)
>   rename meta/recipes-multimedia/musicbrainz/{libmusicbrainz =>  libmusicbrainz-3.0.3}/fix_build_issue_for_gcc_4.5.0.patch (100%)
>   rename meta/recipes-multimedia/musicbrainz/{libmusicbrainz_3.0.2.bb =>  libmusicbrainz_3.0.3.bb} (98%)
>   rename meta/recipes-support/neon/{neon-0.29.3 =>  neon-0.29.5}/pkgconfig.patch (100%)
>   rename meta/recipes-support/neon/{neon_0.29.3.bb =>  neon_0.29.5.bb} (100%)
>   rename meta/recipes-support/taglib/{taglib-1.6.1 =>  taglib-1.6.3}/configuretweak.patch (100%)
>   rename meta/recipes-support/taglib/{taglib-1.6.1 =>  taglib-1.6.3}/nolibtool.patch (100%)
>   rename meta/recipes-support/taglib/{taglib_1.6.1.bb =>  taglib_1.6.3.bb} (98%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
    Sau!

