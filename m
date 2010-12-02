Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 959644C80039
	for <poky@pokylinux.org>; Thu,  2 Dec 2010 12:22:36 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 10:22:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="683282772"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2010 10:22:36 -0800
Message-ID: <4CF7E3EB.8030301@intel.com>
Date: Thu, 02 Dec 2010 10:22:35 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kevin Tian <kevin.tian@intel.com>
References: <0d30dc$ka7cou@orsmga001.jf.intel.com>
In-Reply-To: <0d30dc$ka7cou@orsmga001.jf.intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 1/4] librsvg: append SRC_URI after inherit
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
X-List-Received-Date: Thu, 02 Dec 2010 18:22:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/28/2010 06:20 PM, Kevin Tian wrote:
> or else gnome.bbclass overrides SRC_URI and the patch is not applied at all.
>
> Signed-off-by: Kevin Tian<kevin.tian@intel.com>
> ---
>   meta/recipes-gnome/librsvg/librsvg_2.32.0.bb |    6 +++---
>   1 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
> index 0228798..a421b68 100644
> --- a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
> +++ b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
> @@ -8,13 +8,13 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
>
>   SECTION = "x11/utils"
>   DEPENDS = "gtk+ libcroco cairo libxml2 popt"
> -PR = "r0"
> +PR = "r1"
>
> -SRC_URI += "file://doc_Makefile.patch"
> +inherit autotools pkgconfig gnome
>
>   EXTRA_OECONF = "--disable-mozilla-plugin --without-svgz --without-croco --disable-gnome-vfs"
>
> -inherit autotools pkgconfig gnome
> +SRC_URI += "file://doc_Makefile.patch"
>
>   do_configure_prepend () {
>   	echo "CLEANFILES=">  gtk-doc.make
Pulled into Master

Thanks

   Sau!


