Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8069C4C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 19:22:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Jan 2011 17:22:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="649463832"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2011 17:22:06 -0800
Message-ID: <4D38DFB5.3000907@intel.com>
Date: Fri, 21 Jan 2011 09:21:57 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: "Wold, Saul" <saul.wold@intel.com>
References: <cover.1295397702.git.edwin.zhai@intel.com>
	<4D38BC0B.7080501@intel.com>
In-Reply-To: <4D38BC0B.7080501@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 21 Jan 2011 01:22:07 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

I am always challenged by the version checking system that why not 
upgrade to latest version:(
See my comments below for these packages...

Wold, Saul wrote:
> On 01/18/2011 04:46 PM, Zhai Edwin wrote:
>   
>> Saul,
>> This is the 2nd pull request for gtk+,gdk-pixbuf,apr. Also added webkit-gtk.
>> Qemu upgrade is under test across all platforms, and will be out soon.
>>
>>     
>
>
> Edwin,
>
> It was noticed that you updated a little too aggressively!  For the 
> gtk+, webkit, eds-dbus and glib, you moved to the development versions.
>
> In some open source project even releases are stable and odd releases 
> are unstable, so in this case we want to go to the following:
>
> gtk+: 2.22.1
>   

There is also 2.90.X there. And I treated it as development branch, and 
stick to lower version.
I have compared between 2.22.1 and 2.23.2, and found no much difference. 
One case is 2.23.2 support libtool 2.4, but 2.22.1 doesn't, so we may 
have some autoconf issue there. Anyway, if you want to stick with stable 
version， I can downgrade it to 2.22.1.

> glib: 2.26.1
>   

Dongxiao owned this?
> eds-dbus: 2.32
>   


My previous upgrade is 2.32.1. But with added nss/nspr, it's rejected. 
Working is in progress.

> webkit-gtk 1.2.6
>   

Our poky seems never has stable release, and always use development 
branch. Maybe we want some new feature? RP can comment. Another benefit 
is development branch is under svn, so we can selectively pick some 
modules instead of big whole repo. Given development branch, there is no 
even/odd difference.

I have a plan to change it to stable release with the cost of long 
download & compile time, but I'm afraid can't make it in this release cycle.
> This is something we will need to review more carefully to know for sure 
> which packages are even/odd stable/dev(or unstable) versioning.
>
> I will remind the whole team about this as well.
>
> Sau!
>
>
>   
>> Thanks,
>> edwin
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: gzhai/upgrade01
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade01
>>
>> Thanks,
>>      Zhai Edwin<edwin.zhai@intel.com>
>> ---
>>
>>
>> Zhai Edwin (6):
>>    gtk+: Update to 2.23.2
>>    gdk-pixbuf: Add 2.22.1 as new recipe
>>    eds-dbus: Do not disable old API after upgrading gtk+
>>    apr: Update to 1.4.2
>>    apr-util: Update to 1.3.10
>>    webkit-gtk: upgrade to 1.3.7
>>
>>   meta/classes/gtk-icon-cache.bbclass                |    2 +-
>>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>>   .../gdk-pixbuf-2.22.1/configure_fix.patch          |   19 +
>>   .../gdk-pixbuf-2.22.1}/hardcoded_libtool.patch     |   20 +-
>>   .../gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb         |   13 +
>>   meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc       |   30 +
>>   meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb |   35 +
>>   meta/recipes-gnome/gnome/metacity_2.30.3.bb        |    2 +-
>>   .../gtk+/gdk-pixbuf-csource-native_2.12.7.bb       |   37 -
>>   .../gdk-pixbuf-csource/reduce-dependencies.patch   |  221 -------
>>   .../gtk+-2.20.1/disable-gio-png-sniff-test.diff    |   97 ---
>>   meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch |   10 -
>>   ...Duplicate-the-exec-string-returned-by-gtk.patch |    0
>>   .../cellrenderer-cairo.patch                       |    0
>>   .../configurefix.patch                             |    0
>>   .../{gtk+-2.20.1 =>  gtk+-2.23.2}/entry-cairo.patch |    0
>>   .../hardcoded_libtool.patch                        |   22 +-
>>   meta/recipes-gnome/gtk+/gtk+-2.23.2/no-demos.patch |   13 +
>>   .../run-iconcache.patch                            |    0
>>   .../{gtk+-2.20.1 =>  gtk+-2.23.2}/toggle-font.diff  |    0
>>   .../{gtk+-2.20.1 =>  gtk+-2.23.2}/xsettings.patch   |    0
>>   meta/recipes-gnome/gtk+/gtk+.inc                   |   16 +-
>>   .../gtk+/{gtk+_2.20.1.bb =>  gtk+_2.23.2.bb}        |   18 +-
>>   meta/recipes-gnome/librsvg/librsvg_2.32.1.bb       |    2 +-
>>   meta/recipes-graphics/mutter/mutter.inc            |    2 +-
>>   meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch   |   17 +
>>   meta/recipes-sato/eds/eds-dbus_git.bb              |    1 +
>>   meta/recipes-sato/webkit/files/GNUmakefile.am      |  692 ++------------------
>>   meta/recipes-sato/webkit/files/Makefile            |    2 +-
>>   meta/recipes-sato/webkit/files/autogen.sh          |    2 +-
>>   meta/recipes-sato/webkit/files/configure.ac        |  164 ++++--
>>   meta/recipes-sato/webkit/webkit-gtk_svn.bb         |    7 +-
>>   .../apr/{apr-util_1.3.4.bb =>  apr-util_1.3.10.bb}  |   12 +-
>>   meta/recipes-support/apr/apr/buildconf_fix.patch   |   25 +
>>   meta/recipes-support/apr/apr/cleanup.patch         |    9 +-
>>   .../apr/{apr_1.3.3.bb =>  apr_1.4.2.bb}             |   23 +-
>>   36 files changed, 383 insertions(+), 1132 deletions(-)
>>   create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-2.22.1/configure_fix.patch
>>   copy meta/recipes-gnome/{gtk+/gtk+-2.20.1 =>  gdk-pixbuf/gdk-pixbuf-2.22.1}/hardcoded_libtool.patch (68%)
>>   create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb
>>   create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc
>>   create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb
>>   delete mode 100644 meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb
>>   delete mode 100644 meta/recipes-gnome/gtk+/gdk-pixbuf-csource/reduce-dependencies.patch
>>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.20.1/disable-gio-png-sniff-test.diff
>>   delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch
>>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch (100%)
>>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/cellrenderer-cairo.patch (100%)
>>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/configurefix.patch (100%)
>>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/entry-cairo.patch (100%)
>>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/hardcoded_libtool.patch (66%)
>>   create mode 100644 meta/recipes-gnome/gtk+/gtk+-2.23.2/no-demos.patch
>>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/run-iconcache.patch (100%)
>>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/toggle-font.diff (100%)
>>   rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 =>  gtk+-2.23.2}/xsettings.patch (100%)
>>   rename meta/recipes-gnome/gtk+/{gtk+_2.20.1.bb =>  gtk+_2.23.2.bb} (74%)
>>   create mode 100644 meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch
>>   rename meta/recipes-support/apr/{apr-util_1.3.4.bb =>  apr-util_1.3.10.bb} (72%)
>>   create mode 100644 meta/recipes-support/apr/apr/buildconf_fix.patch
>>   rename meta/recipes-support/apr/{apr_1.3.3.bb =>  apr_1.4.2.bb} (60%)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>>     
>
>   

