Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABE214C80FA4
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 18:17:04 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 31 Jan 2011 16:17:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,406,1291622400"; d="scan'208";a="882961854"
Received: from unknown (HELO [10.255.14.125]) ([10.255.14.125])
	by fmsmga001.fm.intel.com with ESMTP; 31 Jan 2011 16:16:41 -0800
Message-ID: <4D4750E8.9090405@linux.intel.com>
Date: Mon, 31 Jan 2011 16:16:40 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1296000749.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1296000749.git.edwin.zhai@intel.com>
Subject: Re: [PATCH 0/4] [UX] gtk+, webkit-gtk upgrade, edwin, Jan 16, 2011
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
X-List-Received-Date: Tue, 01 Feb 2011 00:17:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 04:14 PM, poky-bounces@yoctoproject.org wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
>
> Saul,
> Upgrade gtk+ to stable version 2.22.1. Also upgrade webkit-gtk. Pls. have a look.
>
> Thanks,
> edwin
>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: gzhai/upgrade03
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade03
>
> Thanks,
>      Zhai Edwin<edwin.zhai@intel.com>
> ---
>
>
> Zhai Edwin (4):
>    gtk+: Update to 2.22.1
>    gtk+: clean up old version after upgrading gtk+
>    eds-dbus: Do not disable old API after upgrading gtk+
>    webkit-gtk: upgrade to 1.3.7
>
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   .../gtk+/gtk+-2.12.7/cellrenderer-cairo.patch      |   32 -
>   .../gtk+/gtk+-2.12.7/combo-arrow-size.patch        |   67 -
>   .../gtk+/gtk+-2.12.7/disable-print.patch           |   26 -
>   .../gtk+/gtk+-2.12.7/filechooser-default.patch     | 9521 --------------------
>   .../gtk+/gtk+-2.12.7/filechooser-props.patch       |   57 -
>   .../gtk+/gtk+-2.12.7/filechooser-sizefix.patch     |   35 -
>   .../gtk+/gtk+-2.12.7/filesystem-volumes.patch      |  198 -
>   .../gtk+/gtk+-2.12.7/gtklabel-resize-patch         |   10 -
>   .../gtk+/gtk+-2.12.7/hardcoded_libtool.patch       |   29 -
>   .../gtk+/gtk+-2.12.7/menu-deactivate.patch         |   51 -
>   meta/recipes-gnome/gtk+/gtk+-2.12.7/no-demos.patch |   10 -
>   .../gtk+/gtk+-2.12.7/pangoxft2.10.6.diff           | 2456 -----
>   .../gtk+/gtk+-2.12.7/range-no-redraw.patch         |  127 -
>   .../gtk+/gtk+-2.12.7/run-iconcache.patch           |   19 -
>   .../gtk+/gtk+-2.12.7/scrolled-placement.patch      |   22 -
>   .../gtk+/gtk+-2.12.7/toggle-font.diff              |  100 -
>   .../recipes-gnome/gtk+/gtk+-2.12.7/xsettings.patch |   16 -
>   ...Duplicate-the-exec-string-returned-by-gtk.patch |   31 -
>   .../gtk+/gtk+-2.16.6/cellrenderer-cairo.patch      |   32 -
>   .../gtk+-2.16.6/disable-gio-png-sniff-test.diff    |   97 -
>   .../gtk+/gtk+-2.16.6/entry-cairo.patch             |  103 -
>   .../gtk+/gtk+-2.16.6/hardcoded_libtool.patch       |   31 -
>   meta/recipes-gnome/gtk+/gtk+-2.16.6/no-demos.patch |   10 -
>   .../gtk+/gtk+-2.16.6/run-iconcache.patch           |   19 -
>   .../gtk+/gtk+-2.16.6/toggle-font.diff              |  100 -
>   .../recipes-gnome/gtk+/gtk+-2.16.6/xsettings.patch |   16 -
>   .../gtk+-2.20.1/disable-gio-png-sniff-test.diff    |   97 -
>   .../gtk+/gtk+-2.20.1/entry-cairo.patch             |  103 -
>   meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch |   10 -
>   ...Duplicate-the-exec-string-returned-by-gtk.patch |    0
>   .../cellrenderer-cairo.patch                       |    0
>   .../configurefix.patch                             |    0
>   .../{gtk+-2.12.7 =>  gtk+-2.22.1}/entry-cairo.patch |    0
>   .../hardcoded_libtool.patch                        |   22 +-
>   meta/recipes-gnome/gtk+/gtk+-2.22.1/no-demos.patch |   13 +
>   .../run-iconcache.patch                            |    0
>   .../{gtk+-2.20.1 =>  gtk+-2.22.1}/toggle-font.diff  |    0
>   .../{gtk+-2.20.1 =>  gtk+-2.22.1}/xsettings.patch   |    0
>   meta/recipes-gnome/gtk+/gtk+.inc                   |   16 +-
>   meta/recipes-gnome/gtk+/gtk+_2.12.7.bb             |   50 -
>   meta/recipes-gnome/gtk+/gtk+_2.16.6.bb             |   49 -
>   .../gtk+/{gtk+_2.20.1.bb =>  gtk+_2.22.1.bb}        |   18 +-
>   meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch   |   17 +
>   meta/recipes-sato/eds/eds-dbus_git.bb              |    1 +
>   meta/recipes-sato/webkit/files/GNUmakefile.am      |  692 +--
>   meta/recipes-sato/webkit/files/Makefile            |    2 +-
>   meta/recipes-sato/webkit/files/autogen.sh          |    2 +-
>   meta/recipes-sato/webkit/files/configure.ac        |  164 +-
>   meta/recipes-sato/webkit/files/nodolt.patch        |   16 +
>   meta/recipes-sato/webkit/webkit-gtk_svn.bb         |    8 +-
>   51 files changed, 234 insertions(+), 14263 deletions(-)
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/cellrenderer-cairo.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/combo-arrow-size.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/disable-print.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/filechooser-default.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/filechooser-props.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/filechooser-sizefix.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/filesystem-volumes.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/gtklabel-resize-patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/hardcoded_libtool.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/menu-deactivate.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/no-demos.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/pangoxft2.10.6.diff
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/range-no-redraw.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/run-iconcache.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/scrolled-placement.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/toggle-font.diff
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/xsettings.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/cellrenderer-cairo.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/disable-gio-png-sniff-test.diff
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/entry-cairo.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/hardcoded_libtool.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/no-demos.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/run-iconcache.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/toggle-font.diff
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/xsettings.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.20.1/disable-gio-png-sniff-test.diff
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.20.1/entry-cairo.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.22.1}/0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.22.1}/cellrenderer-cairo.patch (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.22.1}/configurefix.patch (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.12.7 =>  gtk+-2.22.1}/entry-cairo.patch (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.22.1}/hardcoded_libtool.patch (66%)
>   create mode 100644 meta/recipes-gnome/gtk+/gtk+-2.22.1/no-demos.patch
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.22.1}/run-iconcache.patch (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.22.1}/toggle-font.diff (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.22.1}/xsettings.patch (100%)
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+_2.12.7.bb
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+_2.16.6.bb
>   rename meta/recipes-gnome/gtk+/{gtk+_2.20.1.bb =>  gtk+_2.22.1.bb} (74%)
>   create mode 100644 meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch
>   create mode 100644 meta/recipes-sato/webkit/files/nodolt.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!


