Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C59004C80120
	for <poky@yoctoproject.org>; Wed,  8 Jun 2011 00:56:25 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p585uKYm016515
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 7 Jun 2011 22:56:20 -0700 (PDT)
Received: from localhost (128.224.162.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 7 Jun 2011 22:56:20 -0700
Message-ID: <cover.1307510707.git.kai.kang@windriver.com>
Old-Date: Wed, 8 Jun 2011 13:25:07 +0800
Date: Wed, 8 Jun 2011 13:56:20 +0800
To: <openembedded-core@lists.openembedded.org>, <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.154]
Subject: [PATCH 0/2] eglibc: migrate configurability from oe V4
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
X-List-Received-Date: Wed, 08 Jun 2011 05:56:26 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Hi All,

Thanks for all your comments.

Update to add local.extended.conf.sample instead of local.conf.sample.extended.
Using existing DISTRO_FEATURES "ipv6" instead of "libc-ipv6"


Migrate configurability from oe, try to shrink minimal image size

The switch is in local.extended.conf, uncomment the line
DISTRO_FEATURES = ""
and write what options you want to enable.

Regards,

The following changes since commit 7f34cd1eb2a459709006ae985a14decd4d2152e6:

  tzcode: Update to 2011g (2011-06-06 15:58:42 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/distro
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Kang Kai (2):
  bitbake: add another local configuration file
  eglibc: migrate configurability from oe

 meta-yocto/conf/local.extended.conf.sample         |    5 ++
 meta/conf/bitbake.conf                             |    1 +
 meta/conf/distro/include/default-distrovars.inc    |    8 ++-
 .../eglibc-2.13-fix-macro-RTLD_DEBUG.patch         |   20 ++++++
 meta/recipes-core/eglibc/eglibc-options.inc        |   62 ++++++++++++++++++++
 meta/recipes-core/eglibc/eglibc.inc                |    6 ++
 meta/recipes-core/eglibc/eglibc_2.13.bb            |    4 +-
 scripts/oe-setup-builddir                          |   19 ++++++
 8 files changed, 123 insertions(+), 2 deletions(-)
 create mode 100644 meta-yocto/conf/local.extended.conf.sample
 create mode 100644 meta/recipes-core/eglibc/eglibc-2.13/eglibc-2.13-fix-macro-RTLD_DEBUG.patch
 create mode 100644 meta/recipes-core/eglibc/eglibc-options.inc

-- 
1.7.5.1.300.gc565c


