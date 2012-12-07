Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86BF2E003DA
	for <poky@yoctoproject.org>; Thu,  6 Dec 2012 21:19:59 -0800 (PST)
Received: from mail-da0-f72.google.com ([209.85.210.72])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 06 Dec 2012 21:19:59 -0800
Received: by mail-da0-f72.google.com with SMTP id r28so163573daj.11
	for <poky@yoctoproject.org>; Thu, 06 Dec 2012 21:19:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=oGEwLj6DvrqGsDx0nwP1zz1bL0ZKhYG6yM2+NrT9L58=;
	b=IZpxeS2Ichj8bpdfqKyRUNWpkWVTTl2EvJYE9BiRv8SGmUrjQoBF3ZixzEj1H3wAJc
	Z6gOBH7dxIYIKEHHOZeZpuN76fVPyy04w/40HbUGSldoIafhJ8+j3AbON6WPabSnMWKJ
	BDn7I5cIinxdpeOPnZgZu0STYGjZMRmdDpiAvNO84KlBqpIl5LaYSIggds+gSUtqhNeh
	ihv9aBZLKDkaLD9/aaZUrR1x8K2+S41O18IVdsVmivbuAbq78IjgDsFBdswX89T8oj6b
	JGJYZE7lLochLFTzwsFuV3vIuaZ50ItVeHRoD4cFprEEhBrMjKjYTLF6D4W+r96MIMGp
	PeLQ==
Received: by 10.68.234.98 with SMTP id ud2mr12299736pbc.136.1354857598355;
	Thu, 06 Dec 2012 21:19:58 -0800 (PST)
Received: by 10.68.234.98 with SMTP id ud2mr12299724pbc.136.1354857598259;
	Thu, 06 Dec 2012 21:19:58 -0800 (PST)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id tm8sm6029775pbc.48.2012.12.06.21.19.57
	(version=SSLv3 cipher=OTHER); Thu, 06 Dec 2012 21:19:57 -0800 (PST)
Message-ID: <50C17C7C.5060505@intel.com>
Date: Thu, 06 Dec 2012 21:19:56 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1354856621.git.scott.a.garman@intel.com>
	<6003ea54d7087101d60a5cfd1aea5c5dad5a33a3.1354856621.git.scott.a.garman@intel.com>
In-Reply-To: <6003ea54d7087101d60a5cfd1aea5c5dad5a33a3.1354856621.git.scott.a.garman@intel.com>
X-Gm-Message-State: ALoCoQkPTD3+9m3VMpk4jbI3awZrbPSkvVamb63B1sJZnrNhzE0w1D8J+e3vFvdxW6XKR7CzqjAPvesQns6bQcvavNU7Y2IonhSg3/gML552QM22GJdPXucgN5nSRcm/f5L5zcR+9+iteMW/8MEXBxf0Nvhw9htVig==
Subject: Re: denzil pull request 4
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Dec 2012 05:20:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm not sure why my cover letter never made it through. Here it is again:

Hello,

This is a pull request for denzil, it includes a number of security
fixes and a few important bugfixes. The poky-based tree has been run
through the autobuilder as follows:

nightly-x86: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86/builds/824

nightly-x86-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86-lsb/builds/153

nightly-x86-64: Sanity test failure
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86-64/builds/747

Qemu apparently failed to shutdown cleanly. My impression is that this is
likely a sporadic error and does not appear to be reproducible.

nightly-x86-64-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86-64-lsb/builds/148

nightly-arm: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-arm/builds/753

nightly-arm-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-arm-lsb/builds/146

nightly-mips: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-mips/builds/724

nightly-mips-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-mips-lsb/builds/151

nightly-ppc: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-ppc/builds/704

nightly-ppc-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-ppc-lsb/builds/153

nightly-non-gpl3: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-non-gpl3/builds/382

nightly-multilib: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-multilib/builds/375

nightly-tiny: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-tiny/builds/359

build-appliance: Failed
http://autobuilder.yoctoproject.org:8010/builders/build-appliance/builds/156

Failure was due to the fact that I didn't set up a special additional commit
for things to build on the autobuilder.

eclipse-plugin: Green
http://autobuilder.yoctoproject.org:8010/builders/eclipse-plugin/builds/678

crownbay: Failed
http://autobuilder.yoctoproject.org:8010/builders/crownbay/builds/246

Failed configuring gst-plugins-good, bug tracked here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3536

crownbay-noemgd: Green
http://autobuilder.yoctoproject.org:8010/builders/crownbay-noemgd/builds/247

emenlow: Green
http://autobuilder.yoctoproject.org:8010/builders/emenlow/builds/232

n450: Green
http://autobuilder.yoctoproject.org:8010/builders/n450/builds/236

jasperforest: Green
http://autobuilder.yoctoproject.org:8010/builders/jasperforest/builds/231

sugarbay: Failed
http://autobuilder.yoctoproject.org:8010/builders/sugarbay/builds/242

Failed configuring gst-plugins-good, bug tracked here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3536

fri2-noemgd: Green
http://autobuilder.yoctoproject.org:8010/builders/fri2-noemgd/builds/244

fri2: Failed
http://autobuilder.yoctoproject.org:8010/builders/fri2/builds/259

Failed configuring gst-plugins-good, bug tracked here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3536

romley: Green
http://autobuilder.yoctoproject.org:8010/builders/romley/builds/206

cedartrail: Failed
http://autobuilder.yoctoproject.org:8010/builders/cedartrail/builds/211

Failed configuring gst-plugins-good, bug tracked here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3536

sys940x: Failed
http://autobuilder.yoctoproject.org:8010/builders/sys940x/builds/106

Failed configuring gst-plugins-good, bug tracked here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3536

sys940x-noemgd: Green
http://autobuilder.yoctoproject.org:8010/builders/sys940x-noemgd/builds/105

p1022ds: Failed
http://autobuilder.yoctoproject.org:8010/builders/p1022ds/builds/156

Failed due to a bbappend version mismatch, bug tracked here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3535

The following changes since commit 846b7c388738f382e83576e77b705aa547c1dd9b:

   bitbake: lib/bb/siggen.py: log when tainting the signature of a task 
(2012-10-12 08:58:48 +0100)

are available in the git repository at:

   git://git.yoctoproject.org/poky-contrib sgarman/denzil-next-pull4
 
http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next-pull4

Andrei Gherzan (1):
   opkg-utils: Add needed python modules as RDEPENDS

Christopher Larson (1):
   bitbake: command: add error to return of runCommand

Joe Slater (1):
   gettext: install libgettextlib.a before removing it

Marcin Juszkiewicz (1):
   libxml: disable lzma

Martin Jansa (1):
   opkg-utils: bump SRCREV to latest

Nitin A Kamble (1):
   libxml2: fix build with automake 1.12

Paul Eggleton (1):
   classes/qmake_base: support linux-gnuspe/linux-uclibcspe TARGET_OS

Phil Blundell (1):
   openssl: Use ${CFLAGS} not ${FULL_OPTIMIZATION}

Richard Purdie (1):
   libxml2/libxslt: Don't depend on ansidecl.h header

Robert Yang (2):
   package_rpm.bbclass: Fix incremental rpm image generation
   rootfs_rpm.bbclass: save rpmlib rather than remove it

Ross Burton (1):
   gst-plugins-good: disable (uninstalled) examples

Roy.Li (1):
   bitbake: compile tar-replacement firstly

Saul Wold (1):
   libxml2: Update to 2.8.0

Scott Garman (2):
   openssl: upgrade to 1.0.0j
   poky.conf: Add Ubuntu 12.04.1 LTS to SANITY_TESTED_DISTROS

yanjun.zhu (2):
   libproxy: Fix for CVE-2012-4504
   squashfs: fix for CVE-2012-4024

  bitbake/lib/bb/command.py                          |   43 +++++++-----
  bitbake/lib/bb/server/process.py                   |    2 +-
  bitbake/lib/bb/ui/crumbs/hobeventhandler.py        |    5 +-
  bitbake/lib/bb/ui/depexp.py                        |   38 +++++++----
  bitbake/lib/bb/ui/goggle.py                        |   17 +++--
  bitbake/lib/bb/ui/knotty.py                        |   45 ++++++++----
  bitbake/lib/bb/ui/ncurses.py                       |   21 ++++--
  meta-yocto/conf/distro/poky.conf                   |    1 +
  meta/classes/image.bbclass                         |    6 ++
  meta/classes/package_rpm.bbclass                   |   20 +++---
  meta/classes/qmake_base.bbclass                    |    2 +-
  meta/classes/rootfs_rpm.bbclass                    |    6 +-
  .../configure-targets.patch                        |    0
  .../debian/c_rehash-compat.patch                   |    0
  .../debian/ca.patch                                |    0
  .../debian/debian-targets.patch                    |    0
  .../debian/make-targets.patch                      |    0
  .../debian/man-dir.patch                           |    0
  .../debian/man-section.patch                       |    0
  .../debian/no-rpath.patch                          |    0
  .../debian/no-symbolic.patch                       |    0
  .../debian/pic.patch                               |    0
  .../debian/version-script.patch                    |    0
  .../engines-install-in-libdir-ssl.patch            |    0
  .../{openssl-1.0.0i => openssl-1.0.0j}/find.pl     |    0
  .../oe-ldflags.patch                               |    0
  .../openssl-fix-link.patch                         |    0
  .../openssl_fix_for_x32.patch                      |    0
  .../shared-libs.patch                              |    0
  meta/recipes-connectivity/openssl/openssl.inc      |    2 +-
  .../{openssl_1.0.0i.bb => openssl_1.0.0j.bb}       |    4 +-
  .../gettext/gettext-0.18.1.1/parallel.patch        |   34 +++++++++
  meta/recipes-core/gettext/gettext_0.18.1.1.bb      |    3 +-
  meta/recipes-core/libxml/libxml2.inc               |   15 ++--
  .../libxml/libxml2/fix_version_info.patch          |   23 -------
  meta/recipes-core/libxml/libxml2_2.7.8.bb          |    8 ---
  meta/recipes-core/libxml/libxml2_2.8.0.bb          |    6 ++
  meta/recipes-devtools/opkg-utils/opkg-utils_git.bb |    5 +-
  .../patches/squashfs-4.2-fix-CVE-2012-4024.patch   |   72 
++++++++++++++++++++
  .../squashfs-tools/squashfs-tools_4.2.bb           |    3 +
  .../gstreamer/gst-plugins-good_0.10.31.bb          |    6 +-
  .../libproxy/libproxy-0.4.7-CVE-2012-4504.patch    |   29 ++++++++
  meta/recipes-support/libproxy/libproxy_0.4.7.bb    |    1 +
  meta/recipes-support/libxslt/libxslt_1.1.26.bb     |    7 +-
  scripts/bitbake                                    |    7 +-
  45 files changed, 310 insertions(+), 121 deletions(-)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/configure-targets.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/debian/c_rehash-compat.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/debian/ca.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/debian/debian-targets.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/debian/make-targets.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/debian/man-dir.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/debian/man-section.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/debian/no-rpath.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/debian/no-symbolic.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/debian/pic.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/debian/version-script.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/engines-install-in-libdir-ssl.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/find.pl (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/oe-ldflags.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/openssl-fix-link.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/openssl_fix_for_x32.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-1.0.0i => 
openssl-1.0.0j}/shared-libs.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl_1.0.0i.bb => 
openssl_1.0.0j.bb} (90%)
  create mode 100644 
meta/recipes-core/gettext/gettext-0.18.1.1/parallel.patch
  delete mode 100644 meta/recipes-core/libxml/libxml2/fix_version_info.patch
  delete mode 100644 meta/recipes-core/libxml/libxml2_2.7.8.bb
  create mode 100644 meta/recipes-core/libxml/libxml2_2.8.0.bb
  create mode 100644 
meta/recipes-devtools/squashfs-tools/patches/squashfs-4.2-fix-CVE-2012-4024.patch
  create mode 100644 
meta/recipes-support/libproxy/libproxy/libproxy-0.4.7-CVE-2012-4504.patch

-- 
1.7.9.5

