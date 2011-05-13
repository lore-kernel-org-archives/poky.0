Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B5564C81217
	for <poky@pokylinux.org>; Fri, 13 May 2011 17:35:29 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 May 2011 15:35:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,366,1301900400"; 
   d="scan'208";a="1471509"
Received: from unknown (HELO [10.255.12.119]) ([10.255.12.119])
	by fmsmga002.fm.intel.com with ESMTP; 13 May 2011 15:35:29 -0700
Message-ID: <4DCDB231.7080000@linux.intel.com>
Date: Fri, 13 May 2011 15:35:29 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Ilya Yanok <yanok@emcraft.com>
References: <1305223897-12934-1-git-send-email-yanok@emcraft.com>
In-Reply-To: <1305223897-12934-1-git-send-email-yanok@emcraft.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH] qt4-tools-nativesdk: -arch is required for nativesdk build
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
X-List-Received-Date: Fri, 13 May 2011 22:35:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2011 11:11 AM, Ilya Yanok wrote:
> We need to pass correct -arch option to configure to fix building in
> case of SDK_ARCH != BUILD_ARCH.
>
> Signed-off-by: Ilya Yanok<yanok@emcraft.com>
> ---
>   meta/recipes-qt/qt4/qt4-tools-nativesdk.inc |    3 +++
>   1 files changed, 3 insertions(+), 0 deletions(-)
>
> diff --git a/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc b/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
> index f273c9f..5faf40c 100644
> --- a/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
> +++ b/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
> @@ -25,6 +25,8 @@ LIC_FILES_CHKSUM = "file://LICENSE.LGPL;md5=fbc093901857fcd118f065f900982c24 \
>                       file://LICENSE.GPL3;md5=babc5b6b77441da277f5c06b2e547720 \
>                       file://LGPL_EXCEPTION.txt;md5=411080a56ff917a5a1aa08c98acae354"
>
> +require qt4_arch.inc
> +
>   # FIXME: make it work with "${STAGING_BINDIR_NATIVE}/pkg-config --cflags dbus-1"
>   EXTRA_OECONF = "-prefix ${prefix} \
>                   -qt-libjpeg -qt-gif -system-zlib \
> @@ -37,6 +39,7 @@ EXTRA_OECONF = "-prefix ${prefix} \
>                   -verbose -release -fast -static \
>                   -platform ${TARGET_OS}-oe-g++ \
>                   -xplatform ${TARGET_OS}-oe-g++ \
> +                -arch ${@qt_arch(d)} \
>                   -embedded -no-freetype -no-glib -no-iconv \
>                   -qt3support \
>                   -I${STAGING_DIR_HOST}${SDKPATHNATIVE}/usr/include \

Merged to oe-core and poky/master.

In the future please send changes that are meta (oe-core) to the oe-core 
alias only, no need to cross-post.

Thanks
	Sau!

