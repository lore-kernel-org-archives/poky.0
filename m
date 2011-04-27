Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A78B84C804FF
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 00:22:08 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Apr 2011 22:22:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,273,1301900400"; d="scan'208";a="684506140"
Received: from unknown (HELO [10.255.12.235]) ([10.255.12.235])
	by fmsmga002.fm.intel.com with ESMTP; 26 Apr 2011 22:22:08 -0700
Message-ID: <4DB7A7FC.4030304@linux.intel.com>
Date: Tue, 26 Apr 2011 22:22:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: tasks and oprofileui fail do_compile with undefined references to xml*
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
X-List-Received-Date: Wed, 27 Apr 2011 05:22:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Building core-image-poky-sato from master tonight:

$ bitbake core-image-sato-live
Loading cache: 100% |##################################################################################| ETA:  00:00:00
Loaded 985 entries from dependency cache.
WARNING: No bb files matched BBFILE_PATTERN_yocto '^/home/dvhart/source/poky.git/meta-yocto/'##########| ETA:  00:00:00
Parsing recipes: 100% |################################################################################| Time: 00:00:00
Parsing of 788 .bb files complete (775 cached, 13 parsed). 998 targets, 13 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.11.0"
METADATA_BRANCH   = "master"
METADATA_REVISION = "927d33c170f062c0a59d2a321679d5fe22e80a97"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "n450"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0+snapshot-20110427"
TARGET_FPU        = ""


Layers: meta, meta-yocto, meta-n450


I hit build failures for oprofileui and tasks that I couldn't get past by
cleanall and rm from sstate-cache. They fail with undefined references to
various xml* symbols. Anyone else seeing this? Time for a bug?

oprofileui:

make[2]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/oprofileui-0.0+git1+0c3c32fa754c1d0b70e65767ea7048914f776396-r4/git/server'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/oprofileui-0.0+git1+0c3c32fa754c1d0b70e65767ea7048914f776396-r4/git/server'
Making all in src
make[2]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/oprofileui-0.0+git1+0c3c32fa754c1d0b70e65767ea7048914f776396-r4/git/src'
i586-poky-linux-gcc -m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse --sysroot=/build/poky/n450/tmp/sysroots/n450 -Wall -g -std=gnu99 -DPKG_DATA_DIR=\""/usr/share/oprofileui"\"  -O2 -pipe -g -feliminate-unused-debug-types  -Wl,-O1  -Wl,--as-needed -o oprofile-viewer main.o client.o archive.o archive_window.o archive_save_window.o view.o report.o parser.o image.o symbol.o module.o symbol_instance.o module_instance.o callee_symbol_instance.o caller_symbol_instance.o state-util.o -pthread -lglade-2.0 -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lm -lcairo -lpng12 -lpango-1.0 -lfreetype -lfontconfig -lxml2 -lgnomevfs-2 -lgmodule-2.0 -lgconf-2 -ldbus-glib-1 -ldbus-1 -lpthread -lgobject-2.0 -lgthread-2.0 -lrt -lglib-2.0   -lm -pthread -lavahi-ui -lgtk-x11-2.0 -lavahi-common -lavahi-client -lavahi-glib -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lm -lcairo -lpng12 -lpango-1.0 -lfreetype 
-lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0   ../protocol/libop.a 
/build/poky/n450/tmp/sysroots/n450/usr/lib/libgnomevfs-2.so: undefined reference to `xmlFree@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libgnomevfs-2.so: undefined reference to `xmlTextReaderRead@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libgnomevfs-2.so: undefined reference to `xmlTextReaderConstName@LIBXML2_2.6.0'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libgnomevfs-2.so: undefined reference to `xmlTextReaderGetAttribute@LIBXML2_2.5.0'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libgnomevfs-2.so: undefined reference to `xmlTextReaderDepth@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libgnomevfs-2.so: undefined reference to `xmlTextReaderConstXmlLang@LIBXML2_2.6.0'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libgnomevfs-2.so: undefined reference to `xmlNewTextReaderFilename@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libgnomevfs-2.so: undefined reference to `xmlTextReaderNodeType@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libgnomevfs-2.so: undefined reference to `xmlFreeTextReader@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libgnomevfs-2.so: undefined reference to `xmlTextReaderConstValue@LIBXML2_2.6.0'
collect2: ld returned 1 exit status
make[2]: *** [oprofile-viewer] Error 1
make[2]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/oprofileui-0.0+git1+0c3c32fa754c1d0b70e65767ea7048914f776396-r4/git/src'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/oprofileui-0.0+git1+0c3c32fa754c1d0b70e65767ea7048914f776396-r4/git'
make: *** [all] Error 2
FATAL: oe_runmake failed
ERROR: Function 'do_compile' failed (see /build/poky/n450/tmp/work/c


tasks:


NOTE: make -j 24
Making all in data
make[1]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data'
Making all in icons
make[2]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons'
Making all in 16x16
make[3]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/16x16'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/16x16'
Making all in 22x22
make[3]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/22x22'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/22x22'
Making all in 24x24
make[3]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/24x24'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/24x24'
Making all in 26x26
make[3]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/26x26'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/26x26'
Making all in 32x32
make[3]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/32x32'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/32x32'
Making all in 48x48
make[3]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/48x48'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/48x48'
Making all in 64x64
make[3]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/64x64'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/64x64'
Making all in scalable
make[3]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/scalable'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons/scalable'
make[3]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons'
make[3]: Nothing to be done for `all-am'.
make[3]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons'
make[2]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data/icons'
make[2]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data'
make[2]: Nothing to be done for `all-am'.
make[2]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data'
make[1]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/data'
Making all in po
make[1]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/po'
make[1]: Nothing to be done for `all'.
make[1]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/po'
Making all in libkoto
make[1]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/libkoto'
make  all-am
make[2]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/libkoto'
make[2]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/libkoto'
make[1]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/libkoto'
Making all in src
make[1]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/src'
Making all in gtk
make[2]: Entering directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/src/gtk'
i586-poky-linux-gcc -m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse --sysroot=/build/poky/n450/tmp/sysroots/n450 -Wall -Wmissing-prototypes  -pthread -I/build/poky/n450/tmp/sysroots/n450/usr/include/glib-2.0 -I/build/poky/n450/tmp/sysroots/n450/usr/lib/glib-2.0/include -I/build/poky/n450/tmp/sysroots/n450/usr/include/gtk-2.0 -I/build/poky/n450/tmp/sysroots/n450/usr/lib/gtk-2.0/include -I/build/poky/n450/tmp/sysroots/n450/usr/include/atk-1.0 -I/build/poky/n450/tmp/sysroots/n450/usr/include/cairo -I/build/poky/n450/tmp/sysroots/n450/usr/include/gdk-pixbuf-2.0 -I/build/poky/n450/tmp/sysroots/n450/usr/include/pango-1.0 -I/build/poky/n450/tmp/sysroots/n450/usr/include/pixman-1 -I/build/poky/n450/tmp/sysroots/n450/usr/include/freetype2 -I/build/poky/n450/tmp/sysroots/n450/usr/include/libpng12   -pthread -I/build/poky/n450/tmp/sysroots/n450/usr/include/evolution-data-server-2.30 -I/build/poky/n450/tmp/sysroots/n450/usr/include/dbus-1.0 -I/build/poky/n450/tmp/sysroots/n450/usr/i
nclude/libxml2 -I/build/poky/n450/tmp/sysroots/n450/usr/include/glib-2.0 -I/build/poky/n450/tmp/sysroots/n450/usr/lib/glib-2.0/include -I/build/poky/n450/tmp/sysroots/n450/usr/include/gconf/2 -I/build/poky/n450/tmp/sysroots/n450/usr/include/libsoup-2.4 -I/build/poky/n450/tmp/sysroots/n450/usr/lib/dbus-1.0/include   -pthread -I/build/poky/n450/tmp/sysroots/n450/usr/include/libowl -I/build/poky/n450/tmp/sysroots/n450/usr/include/gtk-2.0 -I/build/poky/n450/tmp/sysroots/n450/usr/lib/gtk-2.0/include -I/build/poky/n450/tmp/sysroots/n450/usr/include/atk-1.0 -I/build/poky/n450/tmp/sysroots/n450/usr/include/cairo -I/build/poky/n450/tmp/sysroots/n450/usr/include/gdk-pixbuf-2.0 -I/build/poky/n450/tmp/sysroots/n450/usr/include/pango-1.0 -I/build/poky/n450/tmp/sysroots/n450/usr/include/glib-2.0 -I/build/poky/n450/tmp/sysroots/n450/usr/lib/glib-2.0/include -I/build/poky/n450/tmp/sysroots/n450/usr/include/pixman-1 -I/build/poky/n450/tmp/sysroots/n450/usr/include/freetype2 -I/build/poky/n450
/tmp/sysroots/n450/usr/include/libpng12    -O2 -pipe -g -feliminate-unused-debug-types  -Wl,-O1  -Wl,--as-needed -o tasks tasks-main.o tasks-window-util.o ../../libkoto/libkoto.a -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lm -lcairo -lpng12 -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0   -pthread -lecal-1.2 -lical -licalss -licalvcal -ledataserver-1.2 -lxml2 -lgconf-2 -lsoup-2.4 -ldbus-glib-1 -lgio-2.0 -lgmodule-2.0 -ldbus-1 -lpthread -lgobject-2.0 -lgthread-2.0 -lrt -lglib-2.0   -pthread -lowl -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lm -lcairo -lpng12 -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0    
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlDocSetRootElement@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlParseMemory@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlDocDumpFormatMemory@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlNewNode@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlFree@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlNodeGetContent@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlStrdup@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlGetProp@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlAddChild@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlNodeListGetString@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlFreeDoc@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlParseDoc@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlStrcmp@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlNewTextChild@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlDocGetRootElement@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlNewDoc@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlNewDocNode@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlNewProp@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlEncodeEntitiesReentrant@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlDocDumpMemory@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlNodeSetContent@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlSetProp@LIBXML2_2.4.30'
/build/poky/n450/tmp/sysroots/n450/usr/lib/libedataserver-1.2.so: undefined reference to `xmlNewChild@LIBXML2_2.4.30'
collect2: ld returned 1 exit status
make[2]: *** [tasks] Error 1
make[2]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/src/gtk'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/tasks-0.19/src'
make: *** [all-recursive] Error 1
FATAL: oe_runmake failed
ERROR: Function 'do_compile' failed (see /build/poky/n450/tmp/work/core2-poky-linux/tasks-0.19-r0/temp/log.do_compile.20998 for further information)

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

