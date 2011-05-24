Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1CC084C800E5
	for <poky@yoctoproject.org>; Tue, 24 May 2011 13:39:26 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 May 2011 11:39:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,262,1304319600"; 
   d="scan'208";a="7927898"
Received: from unknown (HELO [10.255.12.84]) ([10.255.12.84])
	by fmsmga001.fm.intel.com with ESMTP; 24 May 2011 11:39:25 -0700
Message-ID: <4DDBFB5C.7090907@intel.com>
Date: Tue, 24 May 2011 11:39:24 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH 0/1] [DOCS] Fixing documentation publishing/makefiles
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
X-List-Received-Date: Tue, 24 May 2011 18:39:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

[YOCTO #1025]

This patch mostly fixes the issues around 1025 and should be brought into master,
bernard and the poky-documentation repo.

Before we try to publish with this, however, the main docs page on the webserver
will need to be corrected.

A few issues have cropped up with documentation. These changes
fix the following issues.

1. Multiple Makefiles. There really is no need for this.
2. Unable to maintain more than one version of the docs
    on the webserver.

This is a quick fix to enable the above. In order to build the
documentation, at the top level, issue a:

make all DOC=<doc directory name> DISTROVERSION=<MM.mm>

make all DOC=kernel-manual DISTROVERSION=1.1

Also, some changes need to occur on the webserver to fully
incorporate these fixes.

http://www.yoctoproject.org/documentation/

The docs are now published to:

http://www.yoctoproject.org/docs/<Release MM.mm>/<doc name>

The main page should be changed to point not only to the
current doc release, but also to the prior releases. This
will enable us to maintain prior release documentation without
stomping over it when we publish new docs.

Also, we'll need to repoint the yocto-quick-start link to
yocto-project-qs. Or rename documentation/yocto-project-qs/* to
support the website naming.

The following changes since commit 3504c3a9b1af5a3405e0a03a5ade50b82535b6dd:

   documentation/yocto-project-qs/yocto-project-qs.xml: fixed build env script (2011-05-23 15:53:29 +0100)

are available in the git repository at:
   git://git.pokylinux.org/poky-contrib.git eflanagan/documentation_release_fixes
   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/documentation_release_fixes

Beth Flanagan (1):
   documentation: Fixing the build system for docs

  documentation/{poky-ref-manual => }/Makefile       |   18 ++++----
  documentation/adt-manual/Makefile                  |   44 --------------------
  documentation/bsp-guide/Makefile                   |   37 ----------------
  documentation/kernel-manual/Makefile               |   38 -----------------
  ...ization.xsl => kernel-manual-customization.xsl} |    0
  documentation/yocto-project-qs/Makefile            |   34 ---------------
  6 files changed, 9 insertions(+), 162 deletions(-)
  rename documentation/{poky-ref-manual => }/Makefile (57%)
  delete mode 100644 documentation/adt-manual/Makefile
  delete mode 100644 documentation/bsp-guide/Makefile
  delete mode 100644 documentation/kernel-manual/Makefile
  rename documentation/kernel-manual/{yocto-project-kernel-manual-customization.xsl => kernel-manual-customization.xsl} 
(100%)
  delete mode 100644 documentation/yocto-project-qs/Makefile

