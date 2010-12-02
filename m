Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D29464C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 16:12:38 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 14:12:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="580028958"
Received: from unknown (HELO [10.255.13.208]) ([10.255.13.208])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 14:12:38 -0800
Message-ID: <4CF819D1.30108@linux.intel.com>
Date: Thu, 02 Dec 2010 14:12:33 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Adrian Alonso <aalonso@secretlab.ca>
References: <1291257381-21280-1-git-send-email-aalonso@secretlab.ca>
In-Reply-To: <1291257381-21280-1-git-send-email-aalonso@secretlab.ca>
Cc: poky@yoctoproject.org, Saul Wold <sgw@linux.intel.com>
Subject: Re: [PATCH 1/2] librsvg: fix gdk-pixbuf-query-loaders not found	in path
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
X-List-Received-Date: Thu, 02 Dec 2010 22:12:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/01/2010 06:36 PM, Adrian Alonso wrote:
> * Fix configure: error: gdk-pixbuf-query-loaders not found in path
> * Bump PR
>
 > Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>

With the exception of the inconsistent whitespace in 
do_configure_prepend, it looks good. At least it fixes the same error 
for me.

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>   meta/recipes-gnome/librsvg/librsvg_2.32.0.bb |    3 ++-
>   1 files changed, 2 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
> index a421b68..2f257fc 100644
> --- a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
> +++ b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
> @@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
>
>   SECTION = "x11/utils"
>   DEPENDS = "gtk+ libcroco cairo libxml2 popt"
> -PR = "r1"
> +PR = "r2"
>
>   inherit autotools pkgconfig gnome
>
> @@ -17,6 +17,7 @@ EXTRA_OECONF = "--disable-mozilla-plugin --without-svgz --without-croco --disabl
>   SRC_URI += "file://doc_Makefile.patch"
>
>   do_configure_prepend () {
> +    export GDK_PIXBUF_QUERYLOADERS="${libdir}/gtk-2.0/version/loaders"
>   	echo "CLEANFILES=">  gtk-doc.make
>   }
>


-- 
Darren Hart
Yocto Linux Kernel

