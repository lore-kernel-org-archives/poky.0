Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id E3C994C804EF
	for <poky@yoctoproject.org>; Tue, 31 May 2011 13:14:16 -0500 (CDT)
Received: from localhost.localdomain (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id F037C2FE9F;
	Tue, 31 May 2011 14:14:10 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 31 May 2011 11:13:50 -0700
Message-Id: <cover.1306865217.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.1
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: F037C2FE9F.1123C
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/7] User/group creation at preinstall
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
X-List-Received-Date: Tue, 31 May 2011 18:14:17 -0000

Hi Saul,

This pull request includes everything needed to add the ability to
create custom users and groups in our images/packages and the
corresponding ability to set custom ownership permissions. 

There is a useradd-example.bb file in meta-skeleton which provides
a heavily-commented example recipe to demonstrate how this feature
can be used.

I'd like to request that Mark Hatle and Richard do a code review of
this and offer their Acked-by: support if they are happy with things.

Once this gets into master, I'm happy to write up a short section for
the Poky Reference Manual to document it in a more visible way.

Scott

The following changes since commit 1169f1b066d0028bd2ef7915440450bd42ef165e:

  license.bbclass: Sane Parsing of licenses (2011-05-27 23:36:24 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib sgarman/user-group-creation
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/user-group-creation

Scott Garman (7):
  shadow: recipe and patch cleanup
  shadow: add a -native recipe with customized utilities
  base-passwd: add -cross recipe with default login.defs
  useradd.bbclass: new class for managing user/group permissions
  useradd-example: example recipe for using inherit useradd
  bitbake.conf: set PSEUDO_PASSWD within FAKEROOTENV
  package_rpm.bbclass: make RPM use on-disk permissions

 .../recipes-skeleton/useradd/useradd-example.bb    |   59 +
 meta/classes/package_rpm.bbclass                   |    2 +
 meta/classes/useradd.bbclass                       |  136 ++
 meta/conf/bitbake.conf                             |    2 +-
 .../base-passwd/base-passwd-3.5.22/login.defs      |  386 ++++++
 .../base-passwd/base-passwd-cross_3.5.22.bb        |   53 +
 .../shadow/files/add_root_cmd_options.patch        | 1293 ++++++++++++++++++++
 .../files/shadow-4.1.3-dots-in-usernames.patch     |    4 +
 .../shadow-4.1.4.2-env-reset-keep-locale.patch     |    4 +
 .../files/shadow-4.1.4.2-groupmod-pam-check.patch  |    4 +
 .../files/shadow-4.1.4.2-su_no_sanitize_env.patch  |    4 +
 .../shadow/files/shadow.automake-1.11.patch        |    4 +
 .../shadow/shadow-native_4.1.4.3.bb                |   66 +
 meta/recipes-extended/shadow/shadow.inc            |  121 --
 meta/recipes-extended/shadow/shadow_4.1.4.3.bb     |  141 ++-
 15 files changed, 2148 insertions(+), 131 deletions(-)
 create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example.bb
 create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file1
 create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file2
 create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file3
 create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file4
 create mode 100644 meta/classes/useradd.bbclass
 create mode 100644 meta/recipes-core/base-passwd/base-passwd-3.5.22/login.defs
 create mode 100644 meta/recipes-core/base-passwd/base-passwd-cross_3.5.22.bb
 create mode 100644 meta/recipes-extended/shadow/files/add_root_cmd_options.patch
 create mode 100644 meta/recipes-extended/shadow/shadow-native_4.1.4.3.bb
 delete mode 100644 meta/recipes-extended/shadow/shadow.inc


