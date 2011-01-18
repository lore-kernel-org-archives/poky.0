Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3B33F4C80FA4
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 21:40:53 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0I3eqt6005450;
	Mon, 17 Jan 2011 19:40:52 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 19:40:51 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 19:40:51 -0800
Message-ID: <4D350BC3.7030409@windriver.com>
Date: Mon, 17 Jan 2011 21:40:51 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Nitin A Kamble <nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
	<9e69f662636b4cd4f9c21b9e5cddf3054d9a65a0.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <9e69f662636b4cd4f9c21b9e5cddf3054d9a65a0.1295304080.git.nitin.a.kamble@intel.com>
X-OriginalArrivalTime: 18 Jan 2011 03:40:52.0069 (UTC)
	FILETIME=[8113C150:01CBB6C1]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 12/12] screenshot: fix build issue with gcc dso linking change
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
X-List-Received-Date: Tue, 18 Jan 2011 03:40:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 1/17/11 4:45 PM, Nitin A Kamble wrote:
> All the libraries needs to be specified explicitely with the new gcc dso
> linking change patch. This was causing build errors for this
> recipe. Specifying the libX11 libgdk-x11-2.0 and libgdk_pixbuf-2.0 libraries
> explicitely for linking to work without errors.
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---

...

> +Index: screenshot/Makefile.am
> +===================================================================
> +--- screenshot.orig/Makefile.am
> ++++ screenshot/Makefile.am
> +@@ -23,4 +23,4 @@ endif
> + # A standalone tool for running from a terminal and scripts
> + bin_PROGRAMS = screenshot
> + screenshot_SOURCES = main.c
> +-screenshot_LDADD = $(GTK_LIBS) libshot.la
> ++screenshot_LDADD = $(GTK_LIBS) libshot.la -lgdk-x11-2.0 -lgdk_pixbuf-2.0 -lX11

Similar to the last one.  On first look, the GTK_LIBS or libshot.la might be
incorrect causing this failure.  If it's been verified that both GTK_LIBS values
and the libshot.la match the contents of the library.... and these things are
application specific the change is fine.. I'd just like a comment explaining that.

--Mark

> diff --git a/meta/recipes-sato/screenshot/screenshot_svn.bb b/meta/recipes-sato/screenshot/screenshot_svn.bb
> index 35f3422..ff2b7c8 100644
> --- a/meta/recipes-sato/screenshot/screenshot_svn.bb
> +++ b/meta/recipes-sato/screenshot/screenshot_svn.bb
> @@ -10,8 +10,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
>  PRIORITY = "optional"
>  DEPENDS = "matchbox-panel-2"
>  PV = "0.0+svnr${SRCPV}"
> +PR = "r1"
>  
> -SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=${PN};proto=http"
> +SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=${PN};proto=http\
> +	file://dso_linking_change_build_fix.patch"
>  
>  S = ${WORKDIR}/${PN}
>  


