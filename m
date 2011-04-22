Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 90E734C80050
	for <poky@yoctoproject.org>; Fri, 22 Apr 2011 04:32:54 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3M9WrUG025169
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 22 Apr 2011 02:32:54 -0700 (PDT)
Received: from [128.224.162.178] (128.224.162.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 22 Apr 2011 02:32:53 -0700
Message-ID: <4DB14AF9.1050402@windriver.com>
Date: Fri, 22 Apr 2011 17:31:37 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
X-Originating-IP: [128.224.162.178]
Subject: [PATCH 0/1] Add qt3 to fix [YOCTO #816]
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
X-List-Received-Date: Fri, 22 Apr 2011 09:32:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

From: Xiaofeng Yan<xiaofeng.yan@windriver.com>

Add qt3 with a new layer "meta-qt3" and modify other files which is needed by qt3.

Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: xiaofeng/qt3
   Browse:http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/qt3

Thanks,
     Xiaofeng Yan<xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
   qt3: Add qt3 to poky for fixing [YOCTO #816]

  meta-qt3/conf/layer.conf                           |   10 ++
  meta-qt3/recipes-qt3/qt3/qt-x11-free-common.inc    |   90 ++++++++++++++++++++
  .../recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb    |   71 +++++++++++++++
  .../recipes-qt3/qt3/qt-x11-free/configure.patch    |   51 +++++++++++
  .../recipes-qt3/qt3/qt-x11-free/gcc4_1-HACK.patch  |   28 ++++++
  .../recipes-qt3/qt3/qt-x11-free/no-examples.patch  |   16 ++++
  meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.6.bb      |   13 +++
  meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.7.bb      |   16 ++++
  meta-yocto/conf/bblayers.conf.sample               |    5 +-
  meta-yocto/conf/distro/poky-lsb.conf               |    3 +-
  meta/classes/qt3e.bbclass                          |   11 +++
  meta/classes/qt3x11.bbclass                        |   15 +++
  meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb     |    1 +
  13 files changed, 327 insertions(+), 3 deletions(-)
  create mode 100755 meta-qt3/conf/layer.conf
  create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free-common.inc
  create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
  create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free/configure.patch
  create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free/gcc4_1-HACK.patch
  create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free/no-examples.patch
  create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.6.bb
  create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
  create mode 100644 meta/classes/qt3e.bbclass
  create mode 100644 meta/classes/qt3x11.bbclass


