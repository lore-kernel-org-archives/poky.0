Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B4674C812AC
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 10:59:31 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 2960C12EC1CD
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 11:40:37 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <17a26b55ed1004cc28d4e2d39da5ca09ee868939.1296171289.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
	<17a26b55ed1004cc28d4e2d39da5ca09ee868939.1296171289.git.dexuan.cui@intel.com>
Date: Fri, 28 Jan 2011 16:59:23 +0000
Message-ID: <1296233963.2704.31.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [Dexuan: Jan 28: PULL 13/16] xkeyboard-config: upgrade from 2.0 to 2.1
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
X-List-Received-Date: Fri, 28 Jan 2011 16:59:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-28 at 07:40 +0800, Dexuan Cui wrote:
> From: Dexuan Cui <dexuan.cui@intel.com>
> 
> Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
> ---
>  ...board-config_2.0.bb => xkeyboard-config_2.1.bb} |    6 ++----
>  1 files changed, 2 insertions(+), 4 deletions(-)
>  rename meta/recipes-graphics/xorg-lib/{xkeyboard-config_2.0.bb => xkeyboard-config_2.1.bb} (76%)
> 
> diff --git a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
> similarity index 76%
> rename from meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb
> rename to meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
> index 358bf84..637f880 100644
> --- a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb
> +++ b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
> @@ -7,10 +7,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0e7f21ca7db975c63467d2e7624a12f9"
>  
>  SRC_URI = "http://people.freedesktop.org/~svu/xkeyboard-config-${PV}.tar.bz2"
>  
> -SRC_URI[md5sum] = "bb8a98ee61cdc4bd835fdfd2b5cee3e6"
> -SRC_URI[sha256sum] = "175f275f5a041edda41fe0f27e59061d1d9c6615959475e4d68ad773b6a2e376"
> -SECTION = "x11/libs"
> -DEPENDS = "intltool xkbcomp-native glib-2.0"

I assume you didn't mean to delete the DEPENDS and SECTION lines here?

> +SRC_URI[md5sum] = "6ce65480445fb2d9c071ad1f002a7675"
> +SRC_URI[sha256sum] = "e293aa4b0dd259dbb4f0e7f56fdd95db5047d052c7b3b80922fe5663923a805d"
>  
>  PR = "r0"
>  
Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


