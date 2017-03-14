Return-Path: <dugaso@Sonatest.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D735EE00A48; Tue, 14 Mar 2017 13:03:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 409 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 Mar 2017 13:03:42 PDT
Received: from titan.imtexcloud.com (titan.imtexcloud.com [52.52.55.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31CCDE009DA
	for <poky@yoctoproject.org>; Tue, 14 Mar 2017 13:03:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by titan.imtexcloud.com (Postfix) with ESMTP id B5FEF14616A
	for <poky@yoctoproject.org>; Tue, 14 Mar 2017 19:56:49 +0000 (GMT)
X-Virus-Scanned: by SpamTitan at us-west-1.compute.internal
Received: from titan.imtexcloud.com (localhost [127.0.0.1])
	by titan.imtexcloud.com (Postfix) with ESMTP id 4E756146169
	for <poky@yoctoproject.org>; Tue, 14 Mar 2017 19:56:44 +0000 (GMT)
Received: from exchange.Sonatest.net (unknown [217.206.231.74])
	by titan.imtexcloud.com (Postfix) with ESMTP id 90C4B146167
	for <poky@yoctoproject.org>; Tue, 14 Mar 2017 19:56:43 +0000 (GMT)
Received: from [192.168.128.74] (192.168.128.74) by EXCHANGE.Sonatest.net
	(212.56.87.3) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Tue, 14 Mar 2017 19:56:42 +0000
To: <poky@yoctoproject.org>
From: Olivier Dugas <dugaso@sonatest.com>
Message-ID: <4ff59314-755c-2d2e-ccc1-cc575b393c01@sonatest.com>
Date: Tue, 14 Mar 2017 15:56:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: 7c1584ba-e595-4fa0-82b4-f84c142522ec
Subject: Cherry-Picking ptest packages to install
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
X-List-Received-Date: Tue, 14 Mar 2017 20:03:45 -0000
Content-Type: multipart/alternative;
	boundary="------------FBCAA6230F84CB1C3F0D7A85"

--------------FBCAA6230F84CB1C3F0D7A85
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,
We wanted to use a small script-calling tool in order to run some quick 
health tests in our product's images. PTest seemed to be the nicest 
solution, but adding ptest to our local.conf files have the consequence 
of packaging and installing every recipe's own ptest package. Since they 
take a long time to run and because some of them fail once we execute 
ptest-runner, I need a way to modify ptest integration so that only the 
tests on which we specify [PTEST_ENABLED = "1"] will be installed in our 
image.

The best way I found was to avoid to include the following lines into 
local.conf,

DISTRO_FEATURES_append = " ptest"
EXTRA_IMAGE_FEATURES += "ptest-pkgs"

and instead, in my image recipe (say "image-test.bb"), add ptest-pkgs to 
IMAGE_FEATURES:
IMAGE_FEATURES += "ptest-pkg"

But here's my problem. If I want to have a control over which "-ptest" 
package gets installed, I have to hack ptest.bbclass so that
PTEST_ENABLED = "0"
and modify the recipes in which we desire PTest by adding
PTEST_ENABLED = "1"

This would have been sufficient, but unfortunately 
populate_sdk_base.bbclass have a nice
COMPLEMENTARY_GLOB[ptest-pkgs] = '*-ptest'
which seems to trigger other recipes to install their "-ptest" packages. 
When this happens, dbus_1.10.10.bb presents a problematic line :
RDEPENDS_dbus-ptest_class-target = "dbus-test-ptest"
This lines cause the bitbake of my image to fail lamentably because of a 
"Missing or unbuildable dependency chain"

Below is the error message that I get. I can dodge this problem by also 
hacking dbus' recipe (removing this RDEPENDS), but it's starting to look 
more and more dirty. Moreover, only filtering which test to run using 
the command options of ptest-runner is not a solution, as we simply do 
not want to have multiple unneeded -ptest package (slows the build and 
bloats the resulting image). Does someone know a better way to select 
specific ptest packages to install?

Many thanks,
Olivier Dugas

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'dbus-test-ptest' (but 
/home/lee/yocto/poky/meta/recipes-core/dbus/dbus_1.10.10.bb RDEPENDS on 
or otherwise requires it)
NOTE: Runtime target 'dbus-test-ptest' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dbus-test-ptest']
NOTE: Runtime target 'rpcbind' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['rpcbind', 'quota', 
'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-core-full-cmdline-initscripts' is 
unbuildable, removing...
Missing or unbuildable dependency chain was: 
['packagegroup-core-full-cmdline-initscripts', 'rpcbind', 'quota', 
'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'image-test' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['image-test', 
'packagegroup-core-full-cmdline-initscripts', 'rpcbind', 'quota', 
'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-core-full-cmdline' is unbuildable, 
removing...
Missing or unbuildable dependency chain was: 
['packagegroup-core-full-cmdline', 'rpcbind', 'quota', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-core-full-cmdline-libs' is 
unbuildable, removing...
Missing or unbuildable dependency chain was: 
['packagegroup-core-full-cmdline-libs', 'rpcbind', 'quota', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-core-full-cmdline-dev-utils' is 
unbuildable, removing...
Missing or unbuildable dependency chain was: 
['packagegroup-core-full-cmdline-dev-utils', 'rpcbind', 'quota', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-core-full-cmdline-sys-services' is 
unbuildable, removing...
Missing or unbuildable dependency chain was: 
['packagegroup-core-full-cmdline-sys-services', 'rpcbind', 'quota', 
'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-core-full-cmdline-multiuser' is 
unbuildable, removing...
Missing or unbuildable dependency chain was: 
['packagegroup-core-full-cmdline-multiuser', 'rpcbind', 'quota', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-core-full-cmdline-extended' is 
unbuildable, removing...
Missing or unbuildable dependency chain was: 
['packagegroup-core-full-cmdline-extended', 'rpcbind', 'quota', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-core-full-cmdline-utils' is 
unbuildable, removing...
Missing or unbuildable dependency chain was: 
['packagegroup-core-full-cmdline-utils', 'rpcbind', 'quota', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'nfs-utils' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['nfs-utils', 'rpcbind', 
'quota', 'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'nfs-utils-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['nfs-utils-dev', 
'rpcbind', 'quota', 'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'nfs-utils-client' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['nfs-utils-client', 
'rpcbind', 'quota', 'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-cli-tools' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-cli-tools', 
'nfs-utils-client', 'rpcbind', 'quota', 'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'quota' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['quota', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'dbus-daemon-proxy' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dbus-daemon-proxy', 
'dbus-glib', 'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'dbus-glib' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dbus-glib', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'libnss-mdns' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['libnss-mdns', 'avahi', 
'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-machine-base' is unbuildable, removing...
Missing or unbuildable dependency chain was: 
['packagegroup-machine-base', 'libnss-mdns', 'avahi', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-base' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-base', 
'libnss-mdns', 'avahi', 'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-distro-base' is unbuildable, removing...
Missing or unbuildable dependency chain was: 
['packagegroup-distro-base', 'libnss-mdns', 'avahi', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-base-zeroconf' is unbuildable, 
removing...
Missing or unbuildable dependency chain was: 
['packagegroup-base-zeroconf', 'libnss-mdns', 'avahi', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-base-ipv6' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-base-ipv6', 
'libnss-mdns', 'avahi', 'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-base-extended' is unbuildable, 
removing...
Missing or unbuildable dependency chain was: 
['packagegroup-base-extended', 'libnss-mdns', 'avahi', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'libavahi-client' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['libavahi-client', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'avahi-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['avahi-dev', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'avahi-utils' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['avahi-utils', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'packagegroup-basic' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-basic', 
'avahi-utils', 'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'avahi-daemon' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['avahi-daemon', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'hv' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['hv', 'qtservice', 
'qtbase', 'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'hv-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['hv-dev', 'qtservice', 
'qtbase', 'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'qtservice-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qtservice-dev', 'qtbase', 
'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'qtservice' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qtservice', 'qtbase', 
'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'qtbase-plugins' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qtbase-plugins', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'qtbase-plugins-dbg' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qtbase-plugins-dbg', 
'dbus', 'dbus-test-ptest']
NOTE: Runtime target 'qtbase' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qtbase', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'qtbase-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qtbase-dev', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'qtbase-mkspecs' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qtbase-mkspecs', 'dbus', 
'dbus-test-ptest']
NOTE: Runtime target 'dbus' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dbus', 'dbus-test-ptest']
ERROR: Nothing RPROVIDES 'libavahi-core' (but 
/home/lee/yocto/poky/meta/recipes-connectivity/avahi/avahi_0.6.32.bb 
RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'libavahi-core'
NOTE: Runtime target 'libavahi-core' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['libavahi-core']
ERROR: Nothing RPROVIDES 'quota-dev' (but 
/home/lee/yocto/poky/meta/recipes-extended/quota/quota_4.03.bb RDEPENDS 
on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'quota-dev'
NOTE: Runtime target 'quota-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['quota-dev']
ERROR: Nothing RPROVIDES 'dbus-daemon-proxy-dev' (but 
/home/lee/yocto/meta-oe/meta-oe/recipes-core/dbus/dbus-daemon-proxy_git.bb 
RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'dbus-daemon-proxy-dev'
NOTE: Runtime target 'dbus-daemon-proxy-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dbus-daemon-proxy-dev']
ERROR: Nothing RPROVIDES 'dbus-x11' (but 
/home/lee/yocto/poky/meta/recipes-core/dbus/dbus-glib_0.106.bb RDEPENDS 
on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'dbus-x11'
NOTE: Runtime target 'dbus-x11' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dbus-x11']
ERROR: Nothing RPROVIDES 'rpcbind-dev' (but 
/home/lee/yocto/poky/meta/recipes-extended/rpcbind/rpcbind_0.2.3.bb 
RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'rpcbind-dev'
NOTE: Runtime target 'rpcbind-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['rpcbind-dev']
ERROR: Nothing RPROVIDES 'dbus-dev' (but 
/home/lee/yocto/poky/meta/recipes-connectivity/avahi/avahi_0.6.32.bb, 
/home/lee/yocto/poky/meta/recipes-core/dbus/dbus_1.10.10.bb RDEPENDS on 
or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'dbus-dev'
NOTE: Runtime target 'dbus-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dbus-dev']
ERROR: Nothing RPROVIDES 'qtbase-qmldesigner' (but 
/home/lee/yocto/meta-qt5/recipes-qt/qt5/qtbase_git.bb RDEPENDS on or 
otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'qtbase-qmldesigner'
NOTE: Runtime target 'qtbase-qmldesigner' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qtbase-qmldesigner']
ERROR: Nothing RPROVIDES 'qtbase-qmlplugins' (but 
/home/lee/yocto/meta-qt5/recipes-qt/qt5/qtbase_git.bb RDEPENDS on or 
otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'qtbase-qmlplugins'
NOTE: Runtime target 'qtbase-qmlplugins' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qtbase-qmlplugins']
ERROR: Nothing RPROVIDES 'libnss-mdns-dev' (but 
/home/lee/yocto/poky/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb 
RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'libnss-mdns-dev'
NOTE: Runtime target 'libnss-mdns-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['libnss-mdns-dev']
ERROR: Nothing RPROVIDES 'qtbase-qmlplugins-dbg' (but 
/home/lee/yocto/meta-qt5/recipes-qt/qt5/qtbase_git.bb RDEPENDS on or 
otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'qtbase-qmlplugins-dbg'
NOTE: Runtime target 'qtbase-qmlplugins-dbg' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qtbase-qmlplugins-dbg']
ERROR: Nothing RPROVIDES 'dbus-glib-dev' (but 
/home/lee/yocto/poky/meta/recipes-core/dbus/dbus-glib_0.106.bb RDEPENDS 
on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'dbus-glib-dev'
NOTE: Runtime target 'dbus-glib-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dbus-glib-dev']


--------------FBCAA6230F84CB1C3F0D7A85
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi,<br>
    We wanted to use a small script-calling tool in order to run some
    quick health tests in our product's images. PTest seemed to be the
    nicest solution, but adding ptest to our local.conf files have the
    consequence of packaging and installing every recipe's own ptest
    package. Since they take a long time to run and because some of them
    fail once we execute ptest-runner, I need a way to modify ptest
    integration so that only the tests on which we specify
    [PTEST_ENABLED = "1"] will be installed in our image.<br>
    <br>
    The best way I found was to avoid to include the following lines
    into local.conf,<br>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <pre class="literallayout" style="overflow: auto; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">DISTRO_FEATURES_append = " ptest"
EXTRA_IMAGE_FEATURES += "ptest-pkgs"</pre>
    and instead, in my image recipe (say "image-test.bb"), add
    ptest-pkgs to IMAGE_FEATURES:<br>
    <tt>IMAGE_FEATURES += "ptest-pkg"</tt><br>
    <br>
    But here's my problem. If I want to have a control over which
    "-ptest" package gets installed, I have to hack ptest.bbclass so
    that <br>
    PTEST_ENABLED = "0"<br>
    and modify the recipes in which we desire PTest by adding<br>
    PTEST_ENABLED = "1"<br>
    <br>
    This would have been sufficient, but unfortunately
    populate_sdk_base.bbclass have a nice<br>
    COMPLEMENTARY_GLOB[ptest-pkgs] = '*-ptest'<br>
    which seems to trigger other recipes to install their "-ptest"
    packages. When this happens, dbus_1.10.10.bb presents a problematic
    line :<br>
    RDEPENDS_dbus-ptest_class-target = "dbus-test-ptest"<br>
    This lines cause the bitbake of my image to fail lamentably because
    of a "Missing or unbuildable dependency chain"<br>
    <br>
    Below is the error message that I get. I can dodge this problem by
    also hacking dbus' recipe (removing this RDEPENDS), but it's
    starting to look more and more dirty. Moreover, only filtering which
    test to run using the command options of ptest-runner is not a
    solution, as we simply do not want to have multiple unneeded -ptest
    package (slows the build and bloats the resulting image). Does
    someone know a better way to select specific ptest packages to
    install?<br>
    <br>
    Many thanks,<br>
    Olivier Dugas<br>
    <br>
    NOTE: Resolving any missing task queue dependencies<br>
    ERROR: Nothing RPROVIDES 'dbus-test-ptest' (but
    /home/lee/yocto/poky/meta/recipes-core/dbus/dbus_1.10.10.bb RDEPENDS
    on or otherwise requires it)<br>
    NOTE: Runtime target 'dbus-test-ptest' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['dbus-test-ptest']<br>
    NOTE: Runtime target 'rpcbind' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['rpcbind', 'quota',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-core-full-cmdline-initscripts' is
    unbuildable, removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-core-full-cmdline-initscripts', 'rpcbind', 'quota',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'image-test' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['image-test',
    'packagegroup-core-full-cmdline-initscripts', 'rpcbind', 'quota',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-core-full-cmdline' is
    unbuildable, removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-core-full-cmdline', 'rpcbind', 'quota', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-core-full-cmdline-libs' is
    unbuildable, removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-core-full-cmdline-libs', 'rpcbind', 'quota', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-core-full-cmdline-dev-utils' is
    unbuildable, removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-core-full-cmdline-dev-utils', 'rpcbind', 'quota',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-core-full-cmdline-sys-services'
    is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-core-full-cmdline-sys-services', 'rpcbind', 'quota',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-core-full-cmdline-multiuser' is
    unbuildable, removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-core-full-cmdline-multiuser', 'rpcbind', 'quota',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-core-full-cmdline-extended' is
    unbuildable, removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-core-full-cmdline-extended', 'rpcbind', 'quota',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-core-full-cmdline-utils' is
    unbuildable, removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-core-full-cmdline-utils', 'rpcbind', 'quota', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'nfs-utils' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['nfs-utils',
    'rpcbind', 'quota', 'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'nfs-utils-dev' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['nfs-utils-dev',
    'rpcbind', 'quota', 'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'nfs-utils-client' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['nfs-utils-client',
    'rpcbind', 'quota', 'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-cli-tools' is unbuildable,
    removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-cli-tools', 'nfs-utils-client', 'rpcbind', 'quota',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'quota' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['quota', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'dbus-daemon-proxy' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['dbus-daemon-proxy',
    'dbus-glib', 'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'dbus-glib' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['dbus-glib', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'libnss-mdns' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['libnss-mdns',
    'avahi', 'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-machine-base' is unbuildable,
    removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-machine-base', 'libnss-mdns', 'avahi', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-base' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['packagegroup-base',
    'libnss-mdns', 'avahi', 'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-distro-base' is unbuildable,
    removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-distro-base', 'libnss-mdns', 'avahi', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-base-zeroconf' is unbuildable,
    removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-base-zeroconf', 'libnss-mdns', 'avahi', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-base-ipv6' is unbuildable,
    removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-base-ipv6', 'libnss-mdns', 'avahi', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-base-extended' is unbuildable,
    removing...<br>
    Missing or unbuildable dependency chain was:
    ['packagegroup-base-extended', 'libnss-mdns', 'avahi', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'libavahi-client' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['libavahi-client',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'avahi-dev' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['avahi-dev', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'avahi-utils' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['avahi-utils', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'packagegroup-basic' is unbuildable,
    removing...<br>
    Missing or unbuildable dependency chain was: ['packagegroup-basic',
    'avahi-utils', 'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'avahi-daemon' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['avahi-daemon',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'hv' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['hv', 'qtservice',
    'qtbase', 'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'hv-dev' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['hv-dev', 'qtservice',
    'qtbase', 'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'qtservice-dev' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['qtservice-dev',
    'qtbase', 'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'qtservice' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['qtservice', 'qtbase',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'qtbase-plugins' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['qtbase-plugins',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'qtbase-plugins-dbg' is unbuildable,
    removing...<br>
    Missing or unbuildable dependency chain was: ['qtbase-plugins-dbg',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'qtbase' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['qtbase', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'qtbase-dev' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['qtbase-dev', 'dbus',
    'dbus-test-ptest']<br>
    NOTE: Runtime target 'qtbase-mkspecs' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['qtbase-mkspecs',
    'dbus', 'dbus-test-ptest']<br>
    NOTE: Runtime target 'dbus' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['dbus',
    'dbus-test-ptest']<br>
    ERROR: Nothing RPROVIDES 'libavahi-core' (but
    /home/lee/yocto/poky/meta/recipes-connectivity/avahi/avahi_0.6.32.bb
    RDEPENDS on or otherwise requires it)<br>
    ERROR: No eligible RPROVIDERs exist for 'libavahi-core'<br>
    NOTE: Runtime target 'libavahi-core' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['libavahi-core']<br>
    ERROR: Nothing RPROVIDES 'quota-dev' (but
    /home/lee/yocto/poky/meta/recipes-extended/quota/quota_4.03.bb
    RDEPENDS on or otherwise requires it)<br>
    ERROR: No eligible RPROVIDERs exist for 'quota-dev'<br>
    NOTE: Runtime target 'quota-dev' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['quota-dev']<br>
    ERROR: Nothing RPROVIDES 'dbus-daemon-proxy-dev' (but
/home/lee/yocto/meta-oe/meta-oe/recipes-core/dbus/dbus-daemon-proxy_git.bb
    RDEPENDS on or otherwise requires it)<br>
    ERROR: No eligible RPROVIDERs exist for 'dbus-daemon-proxy-dev'<br>
    NOTE: Runtime target 'dbus-daemon-proxy-dev' is unbuildable,
    removing...<br>
    Missing or unbuildable dependency chain was:
    ['dbus-daemon-proxy-dev']<br>
    ERROR: Nothing RPROVIDES 'dbus-x11' (but
    /home/lee/yocto/poky/meta/recipes-core/dbus/dbus-glib_0.106.bb
    RDEPENDS on or otherwise requires it)<br>
    ERROR: No eligible RPROVIDERs exist for 'dbus-x11'<br>
    NOTE: Runtime target 'dbus-x11' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['dbus-x11']<br>
    ERROR: Nothing RPROVIDES 'rpcbind-dev' (but
    /home/lee/yocto/poky/meta/recipes-extended/rpcbind/rpcbind_0.2.3.bb
    RDEPENDS on or otherwise requires it)<br>
    ERROR: No eligible RPROVIDERs exist for 'rpcbind-dev'<br>
    NOTE: Runtime target 'rpcbind-dev' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['rpcbind-dev']<br>
    ERROR: Nothing RPROVIDES 'dbus-dev' (but
    /home/lee/yocto/poky/meta/recipes-connectivity/avahi/avahi_0.6.32.bb,
    /home/lee/yocto/poky/meta/recipes-core/dbus/dbus_1.10.10.bb RDEPENDS
    on or otherwise requires it)<br>
    ERROR: No eligible RPROVIDERs exist for 'dbus-dev'<br>
    NOTE: Runtime target 'dbus-dev' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['dbus-dev']<br>
    ERROR: Nothing RPROVIDES 'qtbase-qmldesigner' (but
    /home/lee/yocto/meta-qt5/recipes-qt/qt5/qtbase_git.bb RDEPENDS on or
    otherwise requires it)<br>
    ERROR: No eligible RPROVIDERs exist for 'qtbase-qmldesigner'<br>
    NOTE: Runtime target 'qtbase-qmldesigner' is unbuildable,
    removing...<br>
    Missing or unbuildable dependency chain was: ['qtbase-qmldesigner']<br>
    ERROR: Nothing RPROVIDES 'qtbase-qmlplugins' (but
    /home/lee/yocto/meta-qt5/recipes-qt/qt5/qtbase_git.bb RDEPENDS on or
    otherwise requires it)<br>
    ERROR: No eligible RPROVIDERs exist for 'qtbase-qmlplugins'<br>
    NOTE: Runtime target 'qtbase-qmlplugins' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['qtbase-qmlplugins']<br>
    ERROR: Nothing RPROVIDES 'libnss-mdns-dev' (but
/home/lee/yocto/poky/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
    RDEPENDS on or otherwise requires it)<br>
    ERROR: No eligible RPROVIDERs exist for 'libnss-mdns-dev'<br>
    NOTE: Runtime target 'libnss-mdns-dev' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['libnss-mdns-dev']<br>
    ERROR: Nothing RPROVIDES 'qtbase-qmlplugins-dbg' (but
    /home/lee/yocto/meta-qt5/recipes-qt/qt5/qtbase_git.bb RDEPENDS on or
    otherwise requires it)<br>
    ERROR: No eligible RPROVIDERs exist for 'qtbase-qmlplugins-dbg'<br>
    NOTE: Runtime target 'qtbase-qmlplugins-dbg' is unbuildable,
    removing...<br>
    Missing or unbuildable dependency chain was:
    ['qtbase-qmlplugins-dbg']<br>
    ERROR: Nothing RPROVIDES 'dbus-glib-dev' (but
    /home/lee/yocto/poky/meta/recipes-core/dbus/dbus-glib_0.106.bb
    RDEPENDS on or otherwise requires it)<br>
    ERROR: No eligible RPROVIDERs exist for 'dbus-glib-dev'<br>
    NOTE: Runtime target 'dbus-glib-dev' is unbuildable, removing...<br>
    Missing or unbuildable dependency chain was: ['dbus-glib-dev']<br>
    <br>
  </body>
</html>

--------------FBCAA6230F84CB1C3F0D7A85--
