Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6977E4C80B71
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 16:38:18 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 14:38:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,357,1288594800"; d="scan'208";a="637211422"
Received: from unknown (HELO [10.255.14.3]) ([10.255.14.3])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2010 14:38:09 -0800
Message-ID: <4D0A94D0.3050309@intel.com>
Date: Thu, 16 Dec 2010 14:38:08 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <cover.1292516982.git.josh@linux.intel.com>
	<0e7de81fa0e7fb3dc908c85796ca740b399959e5.1292516982.git.josh@linux.intel.com>
In-Reply-To: <0e7de81fa0e7fb3dc908c85796ca740b399959e5.1292516982.git.josh@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 7/8] gst-plugins: fix for make 3.82
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
X-List-Received-Date: Thu, 16 Dec 2010 22:38:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/14/2010 09:56 AM, Joshua Lock wrote:
> Signed-off-by: Joshua Lock<josh@linux.intel.com>
> ---
>   .../gstreamer/gst-plugins-bad_0.10.20.bb           |    2 +-
>   .../gstreamer/gst-plugins-base_0.10.30.bb          |    2 +-
>   .../gstreamer/gst-plugins-good_0.10.25.bb          |    2 +-
>   .../gstreamer/gst-plugins-ugly_0.10.16.bb          |    2 +-
>   meta/recipes-multimedia/gstreamer/gst-plugins.inc  |    5 +++-
>   .../gstreamer/gst-plugins/make-382.patch           |   25 ++++++++++++++++++++
This patch is required for the current versions of the plugins.  Most 
have this already fixed, can you please verify your patch and build.

I just built this and got manual patching, we may want to revert this one.

Thanks
    Sau!


>   6 files changed, 33 insertions(+), 5 deletions(-)
>   create mode 100644 meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch
>
> diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
> index 59e127c..7e1dbc6 100644
> --- a/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
> +++ b/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
> @@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
>
>   DEPENDS += "gst-plugins-base libmusicbrainz tremor"
>
> -PR = "r0"
> +PR = "r1"
>
>   inherit gettext
>
> diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
> index 71d211a..7f36266 100644
> --- a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
> +++ b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
> @@ -15,7 +15,7 @@ SRC_URI += " file://gst-plugins-base-tremor.patch"
>   SRC_URI[md5sum] = "3ad90152b58563e1314af26c263f3c4c"
>   SRC_URI[sha256sum] = "63938641380be9935c804ae8d55acdcfd93920ed2deb72dcf70f027a78b085d7"
>
> -PR = "r1"
> +PR = "r2"
>
>   inherit gettext
>
> diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb
> index 83b43b6..852995d 100644
> --- a/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb
> +++ b/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb
> @@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343 \
>
>   DEPENDS += "gst-plugins-base gconf cairo jpeg libpng gtk+ zlib libid3tag flac \
>   	    speex"
> -PR = "r0"
> +PR = "r1"
>
>   inherit gettext
>
> diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb
> index 7dda685..aa0ef9f 100644
> --- a/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb
> +++ b/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb
> @@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343 \
>                       file://gst/mpegstream/gstmpegparse.h;beginline=1;endline=18;md5=ff65467b0c53cdfa98d0684c1bc240a9"
>
>   DEPENDS += "gst-plugins-base libid3tag libmad mpeg2dec liba52 lame"
> -PR = "r0"
> +PR = "r1"
>
>   inherit gettext
>
> diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins.inc b/meta/recipes-multimedia/gstreamer/gst-plugins.inc
> index cd3e0a0..644a78e 100644
> --- a/meta/recipes-multimedia/gstreamer/gst-plugins.inc
> +++ b/meta/recipes-multimedia/gstreamer/gst-plugins.inc
> @@ -7,7 +7,10 @@ DEPENDS = "gstreamer"
>
>   inherit autotools pkgconfig
>
> -SRC_URI = "http://gstreamer.freedesktop.org/src/${PN}/${PN}-${PV}.tar.bz2"
> +FILESPATH =. "${FILE_DIRNAME}/gst-plugins:"
> +
> +SRC_URI = "http://gstreamer.freedesktop.org/src/${PN}/${PN}-${PV}.tar.bz2 \
> +	   file://make-382.patch"
>
I am not sure if you build against the -19 version and then uprev'ed to 
-20, but this patch does not work against the latest 
gst-plugins-bad-0.10.20.


>   EXTRA_OECONF = "--disable-valgrind --disable-debug --disable-examples "
>
> diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch b/meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch
> new file mode 100644
> index 0000000..28caf07
> --- /dev/null
> +++ b/meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch
> @@ -0,0 +1,25 @@
> +Index: gst-plugins-base-0.10.29/common/gtk-doc-plugins.mak
> +===================================================================
> +--- gst-plugins-base-0.10.29.orig/common/gtk-doc-plugins.mak
> ++++ gst-plugins-base-0.10.29/common/gtk-doc-plugins.mak
> +@@ -352,7 +352,7 @@ dist-hook: dist-check-gtkdoc dist-hook-l
> + 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
> + 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
> + 	cd $(distdir)&&  rm -f $(DISTCLEANFILES)
> +-        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
> ++	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
> +
> + .PHONY : dist-hook-local docs
> +
> +Index: gst-plugins-base-0.10.29/common/gtk-doc.mak
> +===================================================================
> +--- gst-plugins-base-0.10.29.orig/common/gtk-doc.mak
> ++++ gst-plugins-base-0.10.29/common/gtk-doc.mak
> +@@ -232,6 +232,6 @@ dist-hook: dist-check-gtkdoc dist-hook-l
> + 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
> + 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
> + 	cd $(distdir)&&  rm -f $(DISTCLEANFILES)
> +-        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
> ++	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
> +
> + .PHONY : dist-hook-local docs


