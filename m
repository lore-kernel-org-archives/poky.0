Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9E534C81065
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 14:25:45 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2011 12:25:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,340,1291622400"; d="scan'208";a="648360111"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2011 12:25:44 -0800
Message-ID: <4D35F748.4010002@linux.intel.com>
Date: Tue, 18 Jan 2011 12:25:44 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1295282922.git.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 0/8] Add meta-toolchain-qte from OE
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
X-List-Received-Date: Tue, 18 Jan 2011 20:25:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/17/2011 08:54 AM, Paul Eggleton wrote:
> These patches make the necessary changes to add meta-toolchain-qte from
> OpenEmbedded (and make it build successfully). Amongst other things this
> required some tweaking of avahi to avoid dependency of avahi-dev /
> avahi-utils on gtk+, which in turn required the addition of a flag to
> control automatic RRECOMMENDS_ generation in package.bbclass.
>

Paul,

Over all this patch set looks good.

One minor nit, for some of the new packages you did not include the 
SRC_URI checksum information for md5 and sha256, can you please add 
these and re-submit.

Thanks
    Sau!

> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: paule/qt-fixes2
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/qt-fixes2
>
> Thanks,
>      Paul Eggleton<paul.eggleton@linux.intel.com>
> ---
>
>
> Paul Eggleton (8):
>    Add directfb 1.4.6 from OpenEmbedded
>    qt4: add qt4-embedded 4.6.3 from OpenEmbedded
>    glib-2.0: extend to nativesdk
>    dbus: extend to nativesdk
>    Add qt4-tools-nativesdk 4.6.3 based on qt4-tools-sdk from
>      OpenEmbedded
>    package.bbclass: add nodeprrecs flag to RRECOMMENDS_pkgname
>    avahi: prevent unnecessary runtime dependency on gtk+
>    Add meta-toolchain-qte and dependent tasks from OpenEmbedded
>
>   meta/classes/package.bbclass                       |    2 +
>   meta/classes/qt4e.bbclass                          |   17 +++
>   meta/recipes-connectivity/avahi/avahi.inc          |    9 ++-
>   meta/recipes-connectivity/avahi/avahi_0.6.28.bb    |    2 +-
>   meta/recipes-core/dbus/dbus.inc                    |    3 +-
>   meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb      |    2 +-
>   meta/recipes-core/glib-2.0/glib.inc                |    1 +
>   .../directfb/directfb-1.4.6/mkdfiff.patch          |   24 ++++
>   meta/recipes-graphics/directfb/directfb.inc        |   71 ++++++++++++
>   meta/recipes-graphics/directfb/directfb_1.4.6.bb   |   29 +++++
>   .../directfb-1.2.x-fix-pkgconfig-cflags.patch      |   47 ++++++++
>   .../directfb/files/dont-use-linux-config.patch     |   12 ++
>   meta/recipes-qt/meta/meta-toolchain-qte.bb         |   32 ++++++
>   .../recipes-qt/qt4/files/compile.test-lflags.patch |   13 +++
>   meta/recipes-qt/qt4/files/configure-lflags.patch   |   13 +++
>   meta/recipes-qt/qt4/files/configure-paths.patch    |   21 ++++
>   meta/recipes-qt/qt4/files/qmake-exists-check.patch |   18 +++
>   .../qt4/files/qthelp-lib-qtclucene.patch           |   86 +++++++++++++++
>   meta/recipes-qt/qt4/qt4-embedded-4.6.3/qte.sh      |    7 ++
>   meta/recipes-qt/qt4/qt4-embedded.inc               |   53 +++++++++
>   meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb          |    6 +
>   meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb   |  112 ++++++++++++++++++++
>   meta/recipes-qt/tasks/task-qte-toolchain-host.bb   |    7 ++
>   meta/recipes-qt/tasks/task-qte-toolchain-target.bb |   39 +++++++
>   24 files changed, 622 insertions(+), 4 deletions(-)
>   create mode 100644 meta/classes/qt4e.bbclass
>   create mode 100644 meta/recipes-graphics/directfb/directfb-1.4.6/mkdfiff.patch
>   create mode 100644 meta/recipes-graphics/directfb/directfb.inc
>   create mode 100644 meta/recipes-graphics/directfb/directfb_1.4.6.bb
>   create mode 100644 meta/recipes-graphics/directfb/files/directfb-1.2.x-fix-pkgconfig-cflags.patch
>   create mode 100644 meta/recipes-graphics/directfb/files/dont-use-linux-config.patch
>   create mode 100644 meta/recipes-qt/meta/meta-toolchain-qte.bb
>   create mode 100644 meta/recipes-qt/qt4/files/compile.test-lflags.patch
>   create mode 100644 meta/recipes-qt/qt4/files/configure-lflags.patch
>   create mode 100644 meta/recipes-qt/qt4/files/configure-paths.patch
>   create mode 100644 meta/recipes-qt/qt4/files/qmake-exists-check.patch
>   create mode 100644 meta/recipes-qt/qt4/files/qthelp-lib-qtclucene.patch
>   create mode 100644 meta/recipes-qt/qt4/qt4-embedded-4.6.3/qte.sh
>   create mode 100644 meta/recipes-qt/qt4/qt4-embedded.inc
>   create mode 100644 meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb
>   create mode 100644 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb
>   create mode 100644 meta/recipes-qt/tasks/task-qte-toolchain-host.bb
>   create mode 100644 meta/recipes-qt/tasks/task-qte-toolchain-target.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


