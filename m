Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71B7A4C80186
	for <poky@yoctoproject.org>; Wed,  8 Jun 2011 05:49:34 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p58AnXZS003116
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 8 Jun 2011 03:49:33 -0700 (PDT)
Received: from localhost (128.224.162.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 8 Jun 2011 03:49:33 -0700
Message-ID: <cover.1307529994.git.kai.kang@windriver.com>
Old-Date: Wed, 8 Jun 2011 18:46:34 +0800
Date: Wed, 8 Jun 2011 18:49:33 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.154]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/2] ghostscript & libxml-simple-perl: fix compile failures
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
X-List-Received-Date: Wed, 08 Jun 2011 10:49:34 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Hi Saul,

These 2 patches are fix for ghostscript and libxml-simple-perl.
Update SRC_URI for ghostscript to avoid native package affected by build os.
Fix libxml-simple-perl [Yocto 1132].

Regards,

The following changes since commit 7f34cd1eb2a459709006ae985a14decd4d2152e6:

  tzcode: Update to 2011g (2011-06-06 15:58:42 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib.git kangkai/bugfix
  http://git.pokylinux.org/cgit.cgi//log/?h=kangkai/bugfix

Kang Kai (2):
  ghostscript: update SRC_URI
  libxml-simple-perl: update EXTRA_PERLFLAGS

 .../perl/libxml-simple-perl_2.18.bb                |    4 ++--
 .../ghostscript/ghostscript_9.02.bb                |    7 +++++--
 2 files changed, 7 insertions(+), 4 deletions(-)

-- 
1.7.5.1.300.gc565c


