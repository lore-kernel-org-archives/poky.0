Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7418B4C80BEF
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 21:39:41 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0I3deig005183;
	Mon, 17 Jan 2011 19:39:40 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 19:39:39 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 19:39:38 -0800
Message-ID: <4D350B71.2010306@windriver.com>
Date: Mon, 17 Jan 2011 21:39:29 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Nitin A Kamble <nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
	<77d22ac6e219167f0611a2136326979a96f634c4.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <77d22ac6e219167f0611a2136326979a96f634c4.1295304080.git.nitin.a.kamble@intel.com>
X-OriginalArrivalTime: 18 Jan 2011 03:39:39.0692 (UTC)
	FILETIME=[55EFE6C0:01CBB6C1]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 10/12] dates: fix build issue with gcc dso linking change
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
X-List-Received-Date: Tue, 18 Jan 2011 03:39:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 1/17/11 4:45 PM, Nitin A Kamble wrote:
> All the libraries needs to be specified explicitely with the new gcc dso
> linking change patch. This was causing build errors for this
> recipe. Specifying the libm and libpango-1.0 libraries explicitely for
> linking to work without errors.
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>

...

> +Nitin A Kamble <nitin.a.kamble@intel.com>
> +Date: 2011/01/11
> +
> +Index: git/src/Makefile.am
> +===================================================================
> +--- git.orig/src/Makefile.am
> ++++ git/src/Makefile.am
> +@@ -34,6 +34,6 @@ dates_SOURCES = $(platform) 	\
> + 	gconf-bridge.h		\
> + 	gconf-bridge.c
> + 
> +-dates_LDADD = $(DATES_LIBS) $(OWL_LIBS) libgtkdatesview.la
> ++dates_LDADD = $(DATES_LIBS) $(OWL_LIBS) libgtkdatesview.la -lm -lpango-1.0

Only concern I have with this patch is that, at first glance it looks like there
might be a problem with the libgtkdatesview.la or one of the existing $(...)
items causing the missing dependency.

I'd like to make sure that the .la files have been inspected and verify they do
not require libm or libpango.  Assuming they do not, could you add a comment to
the patch indicating that's been checked so when the next person looks they
won't be confused by whats going on.

--Mark

> + 
> + MAINTAINERCLEANFILES = config.h.in Makefile.in
> diff --git a/meta/recipes-sato/pimlico/dates_git.bb b/meta/recipes-sato/pimlico/dates_git.bb
> index bceeec6..973c42d 100644
> --- a/meta/recipes-sato/pimlico/dates_git.bb
> +++ b/meta/recipes-sato/pimlico/dates_git.bb
> @@ -6,9 +6,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
>                      file://src/gconf-bridge.c;endline=22;md5=ad7626c6daf4aec590474a243f4912fa"
>  
>  PV = "0.4.11+git${SRCPV}"
> -PR = "r2"
> +PR = "r3"
>  
>  S = "${WORKDIR}/git"
>  
>  SRC_URI = "git://git.gnome.org/${PN};protocol=git \
> -	   file://make-382.patch"
> +	   file://make-382.patch \
> +	   file://dso_linking_change_build_fix.patch"


