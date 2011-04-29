Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E91EC4C800B6
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 17:28:09 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Apr 2011 15:28:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,290,1301900400"; d="scan'208";a="686171249"
Received: from unknown (HELO [10.255.13.18]) ([10.255.13.18])
	by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2011 15:28:09 -0700
Message-ID: <4DBB3B78.9050405@intel.com>
Date: Fri, 29 Apr 2011 15:28:08 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1304069545.git.qing.he@intel.com>
	<9e84c6f3387db8db8c79030740ea2d6800e02020.1304069545.git.qing.he@intel.com>
In-Reply-To: <9e84c6f3387db8db8c79030740ea2d6800e02020.1304069545.git.qing.he@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 09/10] lzo: upgrade to version 2.05
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
X-List-Received-Date: Fri, 29 Apr 2011 22:28:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/29/2011 02:35 AM, Qing He wrote:
> From: Qing He<qing.he@intel.com>
>
> from 2.04
what changed in the LICESNE Files, maybe just the date, but when I see 
that those files have changed it raises a flag for me, so please update 
the comment for this to indicate what changed.

Thanks
    Sau!


>
> Signed-off-by: Qing He<qing.he@intel.com>
> ---
>   .../lzo/{lzo-2.04 =>  lzo-2.05}/acinclude.m4        |    0
>   .../lzo/{lzo-2.04 =>  lzo-2.05}/autoconf.patch      |    4 +++-
>   .../lzo/{lzo_2.04.bb =>  lzo_2.05.bb}               |    8 ++++----
>   3 files changed, 7 insertions(+), 5 deletions(-)
>   rename meta/recipes-support/lzo/{lzo-2.04 =>  lzo-2.05}/acinclude.m4 (100%)
>   rename meta/recipes-support/lzo/{lzo-2.04 =>  lzo-2.05}/autoconf.patch (84%)
>   rename meta/recipes-support/lzo/{lzo_2.04.bb =>  lzo_2.05.bb} (59%)
>
> diff --git a/meta/recipes-support/lzo/lzo-2.04/acinclude.m4 b/meta/recipes-support/lzo/lzo-2.05/acinclude.m4
> similarity index 100%
> rename from meta/recipes-support/lzo/lzo-2.04/acinclude.m4
> rename to meta/recipes-support/lzo/lzo-2.05/acinclude.m4
> diff --git a/meta/recipes-support/lzo/lzo-2.04/autoconf.patch b/meta/recipes-support/lzo/lzo-2.05/autoconf.patch
> similarity index 84%
> rename from meta/recipes-support/lzo/lzo-2.04/autoconf.patch
> rename to meta/recipes-support/lzo/lzo-2.05/autoconf.patch
> index c342387..dbd2072 100644
> --- a/meta/recipes-support/lzo/lzo-2.04/autoconf.patch
> +++ b/meta/recipes-support/lzo/lzo-2.05/autoconf.patch
> @@ -2,6 +2,8 @@ Date: 12/31/2010
>   Didn't find 2.67 specific features, so lower the requirement
>   to pass build
>
> +Upstream-Status: Inappropriate [workaround]
> +
>   Signed-off-by: Qing He<qing.he@intel.com>
>   ---
>   diff --git a/configure.ac b/configure.ac
> @@ -14,6 +16,6 @@ index 650749a..2a78845 100644
>
>   -AC_PREREQ(2.67)
>   +AC_PREREQ(2.65)
> - AC_INIT([LZO],[2.04],[markus@oberhumer.com],[lzo],[http://www.oberhumer.com/opensource/lzo/])
> + AC_INIT([LZO],[2.05],[markus@oberhumer.com],[lzo],[http://www.oberhumer.com/opensource/lzo/])
>    AC_MSG_NOTICE([Configuring LZO $PACKAGE_VERSION])
>    AC_CONFIG_SRCDIR(src/lzo_init.c)
> diff --git a/meta/recipes-support/lzo/lzo_2.04.bb b/meta/recipes-support/lzo/lzo_2.05.bb
> similarity index 59%
> rename from meta/recipes-support/lzo/lzo_2.04.bb
> rename to meta/recipes-support/lzo/lzo_2.05.bb
> index f8c8aba..411b744 100644
> --- a/meta/recipes-support/lzo/lzo_2.04.bb
> +++ b/meta/recipes-support/lzo/lzo_2.05.bb
> @@ -3,8 +3,8 @@ HOMEPAGE = "http://www.oberhumer.com/opensource/lzo/"
>   SECTION = "libs"
>   PRIORITY = "optional"
>   LICENSE = "GPLv2+"
> -LIC_FILES_CHKSUM = "file://COPYING;md5=8cad52263e636e25377bc18420118101 \
> -                    file://src/lzo_init.c;beginline=5;endline=36;md5=454f781644dfe945e3634a9b699e91f3"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
> +                    file://src/lzo_init.c;beginline=23;endline=40;md5=924a0f71f5394f6d404be3b458474769"
>   PR = "r0"
>
>   SRC_URI = "http://www.oberhumer.com/opensource/lzo/download/lzo-${PV}.tar.gz \
> @@ -12,8 +12,8 @@ SRC_URI = "http://www.oberhumer.com/opensource/lzo/download/lzo-${PV}.tar.gz \
>              file://acinclude.m4 \
>              "
>
> -SRC_URI[md5sum] = "a383c7055a310e2a71b9ecd19cfea238"
> -SRC_URI[sha256sum] = "4ee3a040facf39561f13e4ef2ab99a886fd68251a35d612486ed0625cc6ab428"
> +SRC_URI[md5sum] = "c67cda5fa191bab761c7cb06fe091e36"
> +SRC_URI[sha256sum] = "449f98186d76ba252cd17ff1241ca2a96b7f62e0d3e4766f88730dab0ea5f333"
>
>   inherit autotools
>


