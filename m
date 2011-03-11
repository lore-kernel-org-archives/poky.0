Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E7E204C8009A
	for <poky@lists.pokylinux.org>; Thu, 10 Mar 2011 18:03:31 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2B03V8A021563
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@lists.pokylinux.org>; Thu, 10 Mar 2011 16:03:31 -0800 (PST)
Received: from localhost.localdomain (172.25.34.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 10 Mar 2011 16:03:30 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@lists.pokylinux.org>
Date: Thu, 10 Mar 2011 18:03:50 -0600
Message-ID: <cover.1299801529.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
MIME-Version: 1.0
X-Originating-IP: [172.25.34.61]
Subject: [PATCH 0/4] Addition minor fixes
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
X-List-Received-Date: Fri, 11 Mar 2011 00:03:32 -0000
Content-Type: text/plain

patch 1/4 has previous been submitted..

patch 2-4 are new works items.  

(Patch 2/4) While working on debugging Zypper it was noted that all of 
the zypper components ended up in the same directory in /usr/src/debug 
on the target.  The directory structure was adjusted slightly to ensure 
we don't get any conflicts.

(patch 4/4) In addition when debugging C++ components, it's difficult 
unless the python helpers are available.  Fix the gcc-runtime recipe to 
include the helpers.

(patch 3/4) We also fix a race condition where rpm package writing could 
occur at the same time that the RPM solvedb is being generated.  This 
race could cause a failure.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/bernard/fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/bernard/fixes

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (4):
  gcc-runtime: Ensure that gcc-runtime builds a debug package
  package.bbclass: Change the debug directory to avoid conflicts
  package_rpm: Fix rootfs generation
  gcc-runtime: Fix dbg files

 meta/classes/package.bbclass                      |   10 ++++++++--
 meta/classes/package_rpm.bbclass                  |    8 +++++++-
 meta/recipes-devtools/gcc/gcc-package-runtime.inc |    8 ++++++++
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb    |    2 +-
 4 files changed, 24 insertions(+), 4 deletions(-)

-- 
1.7.3.4


