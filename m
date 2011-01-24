Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D6A14C810E3
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 23:04:55 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Jan 2011 21:04:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,368,1291622400"; d="scan'208";a="595788623"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by orsmga002.jf.intel.com with ESMTP; 23 Jan 2011 21:04:54 -0800
Message-ID: <4D3D0876.6020800@intel.com>
Date: Sun, 23 Jan 2011 21:04:54 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1295397702.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1295397702.git.edwin.zhai@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/6] 2nd pull request: UX, gtk+/apr, Edwin, Jan19, 2011
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
X-List-Received-Date: Mon, 24 Jan 2011 05:04:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/18/2011 04:46 PM, Zhai Edwin wrote:
> Saul,
> This is the 2nd pull request for gtk+,gdk-pixbuf,apr. Also added webkit-gtk.
> Qemu upgrade is under test across all platforms, and will be out soon.
>
> Thanks,
> edwin
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: gzhai/upgrade01
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade01
>
> Thanks,
>      Zhai Edwin<edwin.zhai@intel.com>
> ---
>
>
> Zhai Edwin (6):
>    gtk+: Update to 2.23.2
>    gdk-pixbuf: Add 2.22.1 as new recipe
>    eds-dbus: Do not disable old API after upgrading gtk+
>    apr: Update to 1.4.2
>    apr-util: Update to 1.3.10
>    webkit-gtk: upgrade to 1.3.7
>
Partial pull, as already stated, we do not want to update to the 
development releases of gtk+ and eds-dbus.

I have pulled the gdk-pixbug and apr* changes.

Thanks
    Sau!

>   meta/classes/gtk-icon-cache.bbclass                |    2 +-
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   .../gdk-pixbuf-2.22.1/configure_fix.patch          |   19 +
>   .../gdk-pixbuf-2.22.1}/hardcoded_libtool.patch     |   20 +-
>   .../gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb         |   13 +
>   meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc       |   30 +
>   meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb |   35 +
>   meta/recipes-gnome/gnome/metacity_2.30.3.bb        |    2 +-
>   .../gtk+/gdk-pixbuf-csource-native_2.12.7.bb       |   37 -
>   .../gdk-pixbuf-csource/reduce-dependencies.patch   |  221 -------
>   .../gtk+-2.20.1/disable-gio-png-sniff-test.diff    |   97 ---
>   meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch |   10 -
>   ...Duplicate-the-exec-string-returned-by-gtk.patch |    0
>   .../cellrenderer-cairo.patch                       |    0
>   .../configurefix.patch                             |    0
>   .../{gtk+-2.20.1 =>  gtk+-2.23.2}/entry-cairo.patch |    0
>   .../hardcoded_libtool.patch                        |   22 +-
>   meta/recipes-gnome/gtk+/gtk+-2.23.2/no-demos.patch |   13 +
>   .../run-iconcache.patch                            |    0
>   .../{gtk+-2.20.1 =>  gtk+-2.23.2}/toggle-font.diff  |    0
>   .../{gtk+-2.20.1 =>  gtk+-2.23.2}/xsettings.patch   |    0
>   meta/recipes-gnome/gtk+/gtk+.inc                   |   16 +-
>   .../gtk+/{gtk+_2.20.1.bb =>  gtk+_2.23.2.bb}        |   18 +-
>   meta/recipes-gnome/librsvg/librsvg_2.32.1.bb       |    2 +-
>   meta/recipes-graphics/mutter/mutter.inc            |    2 +-
>   meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch   |   17 +
>   meta/recipes-sato/eds/eds-dbus_git.bb              |    1 +
>   meta/recipes-sato/webkit/files/GNUmakefile.am      |  692 ++------------------
>   meta/recipes-sato/webkit/files/Makefile            |    2 +-
>   meta/recipes-sato/webkit/files/autogen.sh          |    2 +-
>   meta/recipes-sato/webkit/files/configure.ac        |  164 ++++--
>   meta/recipes-sato/webkit/webkit-gtk_svn.bb         |    7 +-
>   .../apr/{apr-util_1.3.4.bb =>  apr-util_1.3.10.bb}  |   12 +-
>   meta/recipes-support/apr/apr/buildconf_fix.patch   |   25 +
>   meta/recipes-support/apr/apr/cleanup.patch         |    9 +-
>   .../apr/{apr_1.3.3.bb =>  apr_1.4.2.bb}             |   23 +-
>   36 files changed, 383 insertions(+), 1132 deletions(-)
>   create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-2.22.1/configure_fix.patch
>   copy meta/recipes-gnome/{gtk+/gtk+-2.20.1 =>  gdk-pixbuf/gdk-pixbuf-2.22.1}/hardcoded_libtool.patch (68%)
>   create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb
>   create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc
>   create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb
>   delete mode 100644 meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb
>   delete mode 100644 meta/recipes-gnome/gtk+/gdk-pixbuf-csource/reduce-dependencies.patch
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.20.1/disable-gio-png-sniff-test.diff
>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/cellrenderer-cairo.patch (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/configurefix.patch (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/entry-cairo.patch (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/hardcoded_libtool.patch (66%)
>   create mode 100644 meta/recipes-gnome/gtk+/gtk+-2.23.2/no-demos.patch
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/run-iconcache.patch (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/toggle-font.diff (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/xsettings.patch (100%)
>   rename meta/recipes-gnome/gtk+/{gtk+_2.20.1.bb =>  gtk+_2.23.2.bb} (74%)
>   create mode 100644 meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch
>   rename meta/recipes-support/apr/{apr-util_1.3.4.bb =>  apr-util_1.3.10.bb} (72%)
>   create mode 100644 meta/recipes-support/apr/apr/buildconf_fix.patch
>   rename meta/recipes-support/apr/{apr_1.3.3.bb =>  apr_1.4.2.bb} (60%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


