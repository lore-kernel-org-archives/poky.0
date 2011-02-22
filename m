Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 60DF84C8006D
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 16:29:50 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Feb 2011 14:29:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,208,1297065600"; d="scan'208";a="711955200"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2011 14:29:49 -0800
Message-ID: <4D6438DD.7040902@intel.com>
Date: Tue, 22 Feb 2011 14:29:49 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Dongxiao Xu <dongxiao.xu@intel.com>
References: <cover.1297734607.git.dongxiao.xu@intel.com>
	<a8dadd08c2f17053a69ded74d6f158b622a195cd.1297734607.git.dongxiao.xu@intel.com>
In-Reply-To: <a8dadd08c2f17053a69ded74d6f158b622a195cd.1297734607.git.dongxiao.xu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] connman-gnome: Remove the applet and properties desktop icons
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
X-List-Received-Date: Tue, 22 Feb 2011 22:29:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/14/2011 05:53 PM, Dongxiao Xu wrote:
> From: Dongxiao Xu<dongxiao.xu@intel.com>
>
> Remove the applet and properties desktop icons, since the
> connman-properties program should be invoked by tool bar,
> while connman-applet is launched by autostart.
>
> This fixes [BUGID #683] for laverne build, which is similar as
> Bug 506.
>
> Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
> ---
>   .../connman/connman-gnome/connman-applet.desktop   |   10 -----
>   .../remove-connman-property-desktop-file.patch     |   42 ++++++++++++++++++++
>   .../connman/connman-gnome_0.5.bb                   |    9 +---
>   3 files changed, 44 insertions(+), 17 deletions(-)
>   delete mode 100644 meta/recipes-connectivity/connman/connman-gnome/connman-applet.desktop
>   create mode 100644 meta/recipes-connectivity/connman/connman-gnome/remove-connman-property-desktop-file.patch
>
> diff --git a/meta/recipes-connectivity/connman/connman-gnome/connman-applet.desktop b/meta/recipes-connectivity/connman/connman-gnome/connman-applet.desktop
> deleted file mode 100644
> index 83d96ee..0000000
> --- a/meta/recipes-connectivity/connman/connman-gnome/connman-applet.desktop
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -[Desktop Entry]
> -Encoding=UTF-8
> -Name=Connection Manager
> -Comment=Connection Manager applet
> -Icon=stock_internet
> -Exec=connman-applet
> -Terminal=false
> -Type=Application
> -Categories=Network;GTK;
> -
> diff --git a/meta/recipes-connectivity/connman/connman-gnome/remove-connman-property-desktop-file.patch b/meta/recipes-connectivity/connman/connman-gnome/remove-connman-property-desktop-file.patch
> new file mode 100644
> index 0000000..2a8cff3
> --- /dev/null
> +++ b/meta/recipes-connectivity/connman/connman-gnome/remove-connman-property-desktop-file.patch
> @@ -0,0 +1,42 @@
> +diff -ruN connman-gnome-0.5-orig/po/POTFILES.in connman-gnome-0.5/po/POTFILES.in
> +--- connman-gnome-0.5-orig/po/POTFILES.in	2010-12-16 16:03:29.000000000 +0800
> ++++ connman-gnome-0.5/po/POTFILES.in	2010-12-17 10:27:17.000000000 +0800
> +@@ -4,4 +4,3 @@
> + properties/advanced.c
> + properties/ethernet.c
> + properties/wifi.c
> +-properties/connman-properties.desktop.in
> +diff -ruN connman-gnome-0.5-orig/properties/Makefile.am connman-gnome-0.5/properties/Makefile.am
> +--- connman-gnome-0.5-orig/properties/Makefile.am	2010-12-16 16:03:29.000000000 +0800
> ++++ connman-gnome-0.5/properties/Makefile.am	2010-12-17 10:27:09.000000000 +0800
> +@@ -17,16 +17,6 @@
> +
> + INCLUDES = -I$(top_srcdir)/common
> +
> +-desktopdir = $(datadir)/applications
> +-
> +-desktop_in_files = connman-properties.desktop.in
> +-
> +-desktop_DATA = $(desktop_in_files:.desktop.in=.desktop)
> +-
> + @INTLTOOL_DESKTOP_RULE@
> +
> +-CLEANFILES = $(desktop_DATA)
> +-
> +-EXTRA_DIST = $(desktop_in_files)
> +-
> + MAINTAINERCLEANFILES = Makefile.in
> +diff -ruN connman-gnome-0.5-orig/properties/connman-properties.desktop.in connman-gnome-0.5/properties/connman-properties.desktop.in
> +--- connman-gnome-0.5-orig/properties/connman-properties.desktop.in	2010-12-16 16:03:29.000000000 +0800
> ++++ connman-gnome-0.5/properties/connman-properties.desktop.in	1970-01-01 08:00:00.000000000 +0800
> +@@ -1,10 +0,0 @@
> +-[Desktop Entry]
> +-Encoding=UTF-8
> +-_Name=Connection Management
> +-_Comment=Configure connection management
> +-Icon=stock_internet
> +-Exec=connman-properties
> +-Terminal=false
> +-Type=Application
> +-Categories=Settings;
> +-OnlyShowIn=GNOME;
> diff --git a/meta/recipes-connectivity/connman/connman-gnome_0.5.bb b/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
> index 7660048..fd6b5e8 100644
> --- a/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
> +++ b/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
> @@ -6,17 +6,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \
>                       file://properties/main.c;beginline=1;endline=20;md5=50c77c81871308b033ab7a1504626afb \
>                       file://common/connman-dbus.c;beginline=1;endline=20;md5=de6b485c0e717a0236402d220187717a"
>   DEPENDS = "gtk+ dbus"
> -PR = "r1"
> +PR = "r2"
>
>   RRECOMMENDS_${PN} = "python python-dbus connman connman-plugin-ethernet connman-plugin-loopback connman-plugin-udhcp connman-plugin-wifi connman-plugin-fake connman-plugin-bluetooth connman-plugin-dnsproxy"
>
>   SRC_URI = "http://www.kernel.org/pub/linux/network/connman/connman-gnome-${PV}.tar.gz \
>              file://connman-gnome.patch \
> -           file://connman-applet.desktop"
> +           file://remove-connman-property-desktop-file.patch"
>
>   inherit autotools gtk-icon-cache
> -
> -do_install_append() {
> -	install -d ${D}${datadir}/applications/
> -	install ${WORKDIR}/connman-applet.desktop ${D}${datadir}/applications/
> -}
Merged into Laverne

Thanks
	Sau!


