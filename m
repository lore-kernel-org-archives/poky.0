Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E58904C800A2
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 06:31:20 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p31BVG3D011037;
	Fri, 1 Apr 2011 12:31:16 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10688-08; Fri,  1 Apr 2011 12:31:12 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p31BV6wS011031
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 1 Apr 2011 12:31:09 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <4D951B0B.3010503@intel.com>
References: <4D951B0B.3010503@intel.com>
Date: Fri, 01 Apr 2011 12:31:00 +0100
Message-ID: <1301657460.24596.281.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Broken dependency behavior in master?
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
X-List-Received-Date: Fri, 01 Apr 2011 11:31:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-03-31 at 17:23 -0700, Scott Garman wrote:
> Beth pointed me to a failure occurring on the autobuilder when building 
> docbook-sgml-dtd-3.1-native using the latest master:
> 
> http://autobuilder.pokylinux.org:8010/builders/nightly-external/builds/88/steps/shell_3/logs/stdio
> 
> I am able to reproduce it on my development system. The problem occurs 
> because sgml-common-native is not being fully built before 
> docbook-sgml-dtd-3.1-native, even though it is listed in DEPENDS. I see 
> log files only up to the do_configure step for sgml-common-native.

Looking at the log above and keeping the order but removing some lines:


NOTE: package sgml-common-native-0.6.3-r0: task do_configure: Succeeded
NOTE: Running task 1263 of 7259 (ID: 7236, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb, do_compile)
NOTE: package sgml-common-native-0.6.3-r0: task do_compile: Started
NOTE: package sgml-common-native-0.6.3-r0: task do_compile: Succeeded
NOTE: Running task 1269 of 7259 (ID: 7231, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb, do_install)
NOTE: package sgml-common-native-0.6.3-r0: task do_install: Started
NOTE: package sgml-common-native-0.6.3-r0: task do_install: Succeeded
NOTE: Running task 1271 of 7259 (ID: 7232, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb, do_populate_sysroot)
NOTE: Running noexec task 1272 of 7259 (ID: 7238, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb, do_package)
NOTE: Running noexec task 1273 of 7259 (ID: 7237, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb, do_package_write)
NOTE: package sgml-common-native-0.6.3-r0: task do_populate_sysroot: Started
NOTE: package sgml-common-native-0.6.3-r0: task do_populate_sysroot: Succeeded
NOTE: Running noexec task 1287 of 7259 (ID: 7234, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb, do_build)
NOTE: Running task 1288 of 7259 (ID: 7239, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb, do_rm_work)
NOTE: package libxft-1_2.2.0-r0: task do_populate_lic: Succeeded
NOTE: package sgml-common-native-0.6.3-r0: task do_rm_work: Started
NOTE: package sgml-common-native-0.6.3-r0: task do_rm_work: Succeeded

Then later we see:

NOTE: Running task 1370 of 7259 (ID: 6965, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb, do_configure)
NOTE: package opensp-native-1.5-r0: task do_populate_lic: Started
NOTE: package docbook-sgml-dtd-3.1-native-1.0-r1.0: task do_configure: Started

[...]

NOTE: Running task 1375 of 7259 (ID: 5055, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/perl/libxml-parser-perl-native_2.36.bb, do_populate_sysroot)
NOTE: package docbook-sgml-dtd-3.1-native-1.0-r1.0: task do_populate_lic: Started
WARNING: docbook-sgml-dtd-3.1-native: Something went wrong with copying: OASIS to /srv/home/pokybuild/poky-slave/nightly-external/build/meta/files/common-licenses
WARNING: This could be either because we do not have a generic for this license or the LICENSE field is incorrect
NOTE: package docbook-dsssl-stylesheets-native-1.79-r2: task do_configure: Started
NOTE: package docbook-sgml-dtd-3.1-native-1.0-r1.0: task do_compile: Started
ERROR: Function 'docbook_sgml_dtd_sstate_postinst' failed (see /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/x86_64-linux/docbook-sgml-dtd-3.1-native-1.0-r1.0/temp/log.do_populate_lic.14913 for further information)
NOTE: package docbook-dsssl-stylesheets-native-1.79-r2: task do_configure: Succeeded
NOTE: Running noexec task 1376 of 7259 (ID: 5061, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/perl/libxml-parser-perl-native_2.36.bb, do_package)
NOTE: Running noexec task 1377 of 7259 (ID: 5060, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/perl/libxml-parser-perl-native_2.36.bb, do_package_write)
NOTE: Running task 1378 of 7259 (ID: 6951, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb, do_compile)
ERROR: Logfile of failure stored in: /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/x86_64-linux/docbook-sgml-dtd-3.1-native-1.0-r1.0/temp/log.do_populate_lic.14913
Log data follows:
| WARNING: docbook-sgml-dtd-3.1-native: Something went wrong with copying: OASIS to /srv/home/pokybuild/poky-slave/nightly-external/build/meta/files/common-licenses
| WARNING: This could be either because we do not have a generic for this license or the LICENSE field is incorrect
| ERROR: Function 'docbook_sgml_dtd_sstate_postinst' failed (see /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/x86_64-linux/docbook-sgml-dtd-3.1-native-1.0-r1.0/temp/log.do_populate_lic.14913 for further information)
| install-catalog: "/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/x86_64-linux/etc/sgml/sgml-docbook-dtd-3.1.cat" does not exist or is empty.
NOTE: package docbook-sgml-dtd-3.1-native-1.0-r1.0: task do_populate_lic: Failed
ERROR: Task 6970 (/srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb, do_populate_lic) failed with exit code '1'
NOTE: Running task 1379 of 7259 (ID: 6935, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/sgmlspl/sgmlspl-native_1.03ii.bb, do_configure)
NOTE: package docbook-sgml-dtd-3.1-native-1.0-r1.0: task do_compile: Succeeded
NOTE: Running task 1380 of 7259 (ID: 6961, /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb, do_install)
NOTE: package docbook-dsssl-stylesheets-native-1.79-r2: task do_populate_lic: Started
WARNING: docbook-dsssl-stylesheets-native: Something went wrong with copying: DSSSL to /srv/home/pokybuild/poky-slave/nightly-external/build/meta/files/common-licenses
WARNING: This could be either because we do not have a generic for this license or the LICENSE field is incorrect
NOTE: package libxml-parser-perl-native-2.36-r1: task do_populate_sysroot: Started
ERROR: Function 'docbook_dsssl_stylesheets_sstate_postinst' failed (see /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/x86_64-linux/docbook-dsssl-stylesheets-native-1.79-r2/temp/log.do_populate_lic.15063 for further information)
ERROR: Logfile of failure stored in: /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/x86_64-linux/docbook-dsssl-stylesheets-native-1.79-r2/temp/log.do_populate_lic.15063
Log data follows:
| WARNING: docbook-dsssl-stylesheets-native: Something went wrong with copying: DSSSL to /srv/home/pokybuild/poky-slave/nightly-external/build/meta/files/common-licenses
| WARNING: This could be either because we do not have a generic for this license or the LICENSE field is incorrect
| ERROR: Function 'docbook_dsssl_stylesheets_sstate_postinst' failed (see /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/x86_64-linux/docbook-dsssl-stylesheets-native-1.79-r2/temp/log.do_populate_lic.15063 for further information)
| install-catalog: "/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/x86_64-linux/etc/sgml/dsssl-docbook-stylesheets.cat" does not exist or is empty.
NOTE: package docbook-dsssl-stylesheets-native-1.79-r2: task do_populate_lic: Failed
ERROR: Task 6955 (/srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb, do_populate_lic) failed with exit code '1'
NOTE: Running task 1381 of 7259 (ID: 6940, /srv/home/pokybuild/poky-slave/nightly-ext

> This makes me think something could be seriously broken in master when 
> it comes to handling build dependencies.
>
> I've verified that sgml-common-native is showing up as a build 
> dependency properly in the dependency explorer.

I'm not convinced as its clear above that sgml-common-native is being
built before docbook-dsssl-stylesheets-native do_configure runs.

> ...ok, looking at the recent commits in master, this one raised my 
> suspicion:
> 
> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=b4268c08c350a7928a0b1a041b04ffe5a44e77b4
> 
> I just tried reverting that and doing a new build, and the build 
> completed successfully. Could you take a closer look at it?

So its not to say you're wrong about that commit but certainly there is
more to it that build dependencies simply being ignored as I can't see
any evidence of that.

Did both your builds have rm_work enabled? 

Cheers,

Richard


