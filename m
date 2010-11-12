Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 940B04C80815
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 15:33:11 -0600 (CST)
Received: from [192.168.0.7] (5ada2504.bb.sky.com [90.218.37.4])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 8590212EC117
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 16:09:56 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
Date: Fri, 12 Nov 2010 21:31:37 +0000
Message-ID: <1289597497.27930.33.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: [PATCH 0/5] Enable swabber integration for host-contamination detection
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
X-List-Received-Date: Fri, 12 Nov 2010 21:33:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


This set of patches adds a user class to do host-contamination detection
whilst
building a Poky image.

The class uses a bitbake-runtask wrapper script which wraps calls to
bitbake-runtask in strace and logs the strace output for later
processing.
Similar to rm_work the class adds an extra task at the end of the build
to run
the swabber tool over the strace logs and generate a contamination
report.

The classes disables PARALLEL_MAKE on several packages which refused to
run
under strace with parallelism enabled.

I have succesfully built all packages in poky-image-minimal under strace
with
this patchset.

The final two patches in the series update the version of swabber to the
latest
git HEAD and updates the command in the class to work with this
revision.
The hard coded paths are undesirable and don't work reliably across
distributions, for example Fedora 14 ships Python 2.7. They will be
removed 
when a future swabber update includes provisioning for handling such
things
through configuration files.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/swabber
  Browse:
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/swabber

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (5):
  bitbake-runtask-strace: simple shell script to wrap tasks in a strace
    call
  image-swab: introduce a class for generating swabber reports
  gitignore: ignore the default downloads directory
  poky-default-revisions: bump swabber version
  image-swab: update swabber command for latest version

 .gitignore                                         |    1 +
 bitbake/bin/bitbake-runtask-strace                 |    8 ++
 meta/classes/image-swab.bbclass                    |   83
++++++++++++++++++++
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/conf/local.conf.sample                        |    1 +
 5 files changed, 94 insertions(+), 1 deletions(-)
 create mode 100755 bitbake/bin/bitbake-runtask-strace
 create mode 100644 meta/classes/image-swab.bbclass

-- 
1.7.3.2

-- 
Joshua Lock
        Intel Open Source Technology Centre


