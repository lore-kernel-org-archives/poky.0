Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D8374C806DA
	for <poky@yoctoproject.org>; Tue, 12 Apr 2011 02:32:57 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Apr 2011 00:32:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,194,1301900400"; d="scan'208";a="627227103"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by orsmga002.jf.intel.com with ESMTP; 12 Apr 2011 00:32:55 -0700
Message-ID: <4DA40027.9040808@intel.com>
Date: Tue, 12 Apr 2011 15:32:55 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1302485033.git.ke.yu@intel.com> <4DA344C7.1050104@intel.com>
In-Reply-To: <4DA344C7.1050104@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/9] upgrade recipes
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
X-List-Received-Date: Tue, 12 Apr 2011 07:32:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

on 2011-4-12 2:13, Saul Wold wrote:
> On 04/10/2011 06:28 PM, Yu Ke wrote:
>> From: Yu Ke<ke.yu@intel.com>
>>
>> upgrade the following recipes to latest version:
>>
>> libdrm
>> xf86-input-synaptics
>> xf86-input-vmmouse
>> mesa
>> evieext
>> xf86-input-mouse
>> pango
>> xf86-input-keyboard
>> xkbcomp
>>
> I noticed a number of these recipes have patches, but I did not see any
> addition of the Upstream-Status: tag to those patches. Please, as we are
> doing recipe updating, add the Upstream-Status tag, if at a minimul with
> a status of pending.
>
> Sau!

I see. I will send a separate patch set to add those upstream status.

Regards
Ke

>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>> Branch: kyu3/upgrade-04-11
>> Browse:
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/upgrade-04-11
>>
>> Thanks,
>> Yu Ke<ke.yu@intel.com>
>> ---
>>
>>
>> Yu Ke (9):
>> libdrm: upgrade from 2.4.23 to 2.4.24
>> xf86-input-synaptics: upgrade from 1.3.0 to 1.4.0
>> xf86-input-vmmouse: upgrade from 12.6.10 to 12.7.0
>> mesa: upgrade to 7.10.2
>> evieext: upgrade from 1.1.0 to 1.1.1
>> xf86-input-mouse: upgrade from 1.6 to 1.7
>> pango: upgrade from 1.28.3 to 1.28.4
>> xf86-input-keyboard: upgrade from 1.5.0 to 1.6.0
>> xkbcomp: upgrade from 1.2.0 to 1.2.1
>>
>> .../distro/include/preferred-xorg-versions.inc | 12 +-
>> .../installtests.patch | 0
>> .../drm/{libdrm_2.4.23.bb => libdrm_2.4.24.bb} | 4 +-
>> .../mesa/files/talloc-removal.patch |15571 --------------------
>> .../mesa/{mesa-dri_7.10.bb => mesa-dri_7.10.2.bb} | 7 +-
>> .../{mesa-xlib_7.10.bb => mesa-xlib_7.10.2.bb} | 7 +-
>> .../{pango-1.28.3 => pango-1.28.4}/no-tests.patch | 0
>> .../pango/{pango_1.28.3.bb => pango_1.28.4.bb} | 4 +-
>> .../xorg-app/xkbcomp/cross-compile-fix.patch | 35 -
>> .../{xkbcomp_1.2.0.bb => xkbcomp_1.2.1.bb} | 5 +-
>> ...board_1.5.0.bb => xf86-input-keyboard_1.6.0.bb} | 4 +-
>> ...ut-mouse_1.6.0.bb => xf86-input-mouse_1.7.0.bb} | 4 +-
>> ...tics_1.3.0.bb => xf86-input-synaptics_1.4.0.bb} | 4 +-
>> ...use_12.6.10.bb => xf86-input-vmmouse_12.7.0.bb} | 4 +-
>> .../{evieext_1.1.0.bb => evieext_1.1.1.bb} | 8 +-
>> 15 files changed, 30 insertions(+), 15639 deletions(-)
>> rename meta/recipes-graphics/drm/{libdrm-2.4.23 =>
>> libdrm-2.4.24}/installtests.patch (100%)
>> rename meta/recipes-graphics/drm/{libdrm_2.4.23.bb =>
>> libdrm_2.4.24.bb} (54%)
>> delete mode 100644 meta/recipes-graphics/mesa/files/talloc-removal.patch
>> rename meta/recipes-graphics/mesa/{mesa-dri_7.10.bb =>
>> mesa-dri_7.10.2.bb} (85%)
>> rename meta/recipes-graphics/mesa/{mesa-xlib_7.10.bb =>
>> mesa-xlib_7.10.2.bb} (68%)
>> rename meta/recipes-graphics/pango/{pango-1.28.3 =>
>> pango-1.28.4}/no-tests.patch (100%)
>> rename meta/recipes-graphics/pango/{pango_1.28.3.bb =>
>> pango_1.28.4.bb} (50%)
>> delete mode 100644
>> meta/recipes-graphics/xorg-app/xkbcomp/cross-compile-fix.patch
>> rename meta/recipes-graphics/xorg-app/{xkbcomp_1.2.0.bb =>
>> xkbcomp_1.2.1.bb} (72%)
>> rename meta/recipes-graphics/xorg-driver/{xf86-input-keyboard_1.5.0.bb
>> => xf86-input-keyboard_1.6.0.bb} (74%)
>> rename meta/recipes-graphics/xorg-driver/{xf86-input-mouse_1.6.0.bb =>
>> xf86-input-mouse_1.7.0.bb} (76%)
>> rename
>> meta/recipes-graphics/xorg-driver/{xf86-input-synaptics_1.3.0.bb =>
>> xf86-input-synaptics_1.4.0.bb} (83%)
>> rename
>> meta/recipes-graphics/xorg-driver/{xf86-input-vmmouse_12.6.10.bb =>
>> xf86-input-vmmouse_12.7.0.bb} (64%)
>> rename meta/recipes-graphics/xorg-proto/{evieext_1.1.0.bb =>
>> evieext_1.1.1.bb} (54%)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


