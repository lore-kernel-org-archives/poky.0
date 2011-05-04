Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 264784C80FBB
	for <poky@yoctoproject.org>; Wed,  4 May 2011 05:56:21 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p44AuJX2016634
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 May 2011 03:56:19 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 4 May 2011 03:56:19 -0700
Message-ID: <cover.1304503987.git.kai.kang@windriver.com>
Old-Date: Wed, 4 May 2011 18:13:07 +0800
Date: Wed, 4 May 2011 18:56:15 +0800
To: <saul.wold@intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/2] Add foomatic-filters and ghostscript V2
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
X-List-Received-Date: Wed, 04 May 2011 10:56:21 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Hi Saul,

The difference between gs and ghostscript is gs from oe refer to gnu-ghostscript, and 
ghostscript refer to the original ghostscript.

Merge ghostscript and ghostscript-native into one file, add Upstream-status in patch, 
and add more options for cross compile.

Regards,

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/foomatic_gs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/foomatic_gs

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (2):
  foomatic-filters: added to pass LSB commands check
  ghostscript: added to pass LSB commands check

 .../foomatic/foomatic-filters_4.0.7.bb             |   23 +++++
 .../ghostscript-9.02-prevent_recompiling.patch     |   95 ++++++++++++++++++++
 .../ghostscript/ghostscript_9.02.bb                |   67 ++++++++++++++
 3 files changed, 185 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-prevent_recompiling.patch
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript_9.02.bb


