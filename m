Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 759A94C8055B
	for <poky@pokylinux.org>; Tue, 10 May 2011 13:25:33 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 May 2011 11:25:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,347,1301900400"; d="scan'208";a="640787588"
Received: from unknown (HELO [10.255.12.75]) ([10.255.12.75])
	by orsmga002.jf.intel.com with ESMTP; 10 May 2011 11:25:32 -0700
Message-ID: <4DC9831B.8030108@intel.com>
Date: Tue, 10 May 2011 11:25:31 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Ilya Yanok <yanok@emcraft.com>
References: <1304975575-5189-1-git-send-email-yanok@emcraft.com>
In-Reply-To: <1304975575-5189-1-git-send-email-yanok@emcraft.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH] toolchain-qte: include cross-compiler and fix env	script
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
X-List-Received-Date: Tue, 10 May 2011 18:25:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/09/2011 02:12 PM, Ilya Yanok wrote:
> This patch fixes the meta-toolchain-qte recipe:
>   1. cross-compiler added to the TOOLCHAIN_HOST_TASK.
>   2. Corrected paths in the environment script.
>   3. TOOLCHAIN_OUTPUTNAME used instead of SDK_SUFFIX.
>
> Signed-off-by: Ilya Yanok<yanok@emcraft.com>
> ---
>   meta/recipes-qt/meta/meta-toolchain-qte.bb |   33 ++++++++++++++-------------
>   1 files changed, 17 insertions(+), 16 deletions(-)
>
> diff --git a/meta/recipes-qt/meta/meta-toolchain-qte.bb b/meta/recipes-qt/meta/meta-toolchain-qte.bb
> index da0dda7..72fa702 100644
> --- a/meta/recipes-qt/meta/meta-toolchain-qte.bb
> +++ b/meta/recipes-qt/meta/meta-toolchain-qte.bb
> @@ -1,26 +1,27 @@
>   # Qt Embedded toolchain
>   PR = "r5"
> -TOOLCHAIN_HOST_TASK = "task-qte-toolchain-host"
> +TOOLCHAIN_HOST_TASK = "task-qte-toolchain-host task-cross-canadian-${TRANSLATED_TARGET_ARCH}"
>   TOOLCHAIN_TARGET_TASK = "task-qte-toolchain-target"
> +TOOLCHAIN_OUTPUTNAME = "${SDK_NAME}-toolchain-qte-${DISTRO_VERSION}"
>
>   require recipes-core/meta/meta-toolchain.bb
> -SDK_SUFFIX = "toolchain-qte"
>
>   QT_DIR_NAME = "qtopia"
> +QT_TOOLS_PREFIX = "${SDKPATHNATIVE}${bindir_nativesdk}"
>
>   toolchain_create_sdk_env_script_append() {
> -    echo 'export OE_QMAKE_CC=${TARGET_SYS}-gcc'>>  $script
> -    echo 'export OE_QMAKE_CXX=${TARGET_SYS}-g++'>>  $script
> -    echo 'export OE_QMAKE_LINK=${TARGET_SYS}-g++'>>  $script
> -    echo 'export OE_QMAKE_AR=${TARGET_SYS}-ar'>>  $script
> -    echo 'export OE_QMAKE_LIBDIR_QT=${SDKPATH}/${TARGET_SYS}/${libdir}'>>  $script
> -    echo 'export OE_QMAKE_INCDIR_QT=${SDKPATH}/${TARGET_SYS}/${includedir}/${QT_DIR_NAME}'>>  $script
> -    echo 'export OE_QMAKE_MOC=${SDKPATH}/bin/moc4'>>  $script
> -    echo 'export OE_QMAKE_UIC=${SDKPATH}/bin/uic4'>>  $script
> -    echo 'export OE_QMAKE_UIC3=${SDKPATH}/bin/uic34'>>  $script
> -    echo 'export OE_QMAKE_RCC=${SDKPATH}/bin/rcc4'>>  $script
> -    echo 'export OE_QMAKE_QDBUSCPP2XML=${SDKPATH}/bin/qdbuscpp2xml4'>>  $script
> -    echo 'export OE_QMAKE_QDBUSXML2CPP=${SDKPATH}/bin/qdbusxml2cpp4'>>  $script
> -    echo 'export OE_QMAKE_QT_CONFIG=${SDKPATH}/${TARGET_SYS}/${datadir}/${QT_DIR_NAME}/mkspecs/qconfig.pri'>>  $script
> -    echo 'export QMAKESPEC=${SDKPATH}/${TARGET_SYS}/${datadir}/${QT_DIR_NAME}/mkspecs/linux-g++'>>  $script
> +    echo 'export OE_QMAKE_CC=${TARGET_PREFIX}gcc'>>  $script
> +    echo 'export OE_QMAKE_CXX=${TARGET_PREFIX}g++'>>  $script
> +    echo 'export OE_QMAKE_LINK=${TARGET_PREFIX}g++'>>  $script
> +    echo 'export OE_QMAKE_AR=${TARGET_PREFIX}ar'>>  $script
> +    echo 'export OE_QMAKE_LIBDIR_QT=${SDKTARGETSYSROOT}/${libdir}'>>  $script
> +    echo 'export OE_QMAKE_INCDIR_QT=${SDKTARGETSYSROOT}/${includedir}/${QT_DIR_NAME}'>>  $script
> +    echo 'export OE_QMAKE_MOC=${QT_TOOLS_PREFIX}/moc4'>>  $script
> +    echo 'export OE_QMAKE_UIC=${QT_TOOLS_PREFIX}/uic4'>>  $script
> +    echo 'export OE_QMAKE_UIC3=${QT_TOOLS_PREFIX}/uic34'>>  $script
> +    echo 'export OE_QMAKE_RCC=${QT_TOOLS_PREFIX}/rcc4'>>  $script
> +    echo 'export OE_QMAKE_QDBUSCPP2XML=${QT_TOOLS_PREFIX}/qdbuscpp2xml4'>>  $script
> +    echo 'export OE_QMAKE_QDBUSXML2CPP=${QT_TOOLS_PREFIX}/qdbusxml2cpp4'>>  $script
> +    echo 'export OE_QMAKE_QT_CONFIG=${SDKTARGETSYSROOT}/${datadir}/${QT_DIR_NAME}/mkspecs/qconfig.pri'>>  $script
> +    echo 'export QMAKESPEC=${SDKTARGETSYSROOT}/${datadir}/${QT_DIR_NAME}/mkspecs/linux-g++'>>  $script
>   }
Pulled into oe-core and poky/master

Thanks
	Sau!

