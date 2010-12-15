Return-Path: <Alex.deVries@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A4C54C80048
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 15:14:31 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBFLEUft028800;
	Wed, 15 Dec 2010 13:14:30 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 15 Dec 2010 13:14:30 -0800
Received: from localhost ([128.224.146.68]) by ala-mail06.corp.ad.wrs.com with
	Microsoft SMTPSVC(6.0.3790.1830); Wed, 15 Dec 2010 13:14:29 -0800
From: Alex deVries <alex.devries@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed, 15 Dec 2010 16:17:17 -0500
Message-Id: <cover.1292447662.git.alex.devries@windriver.com>
X-Mailer: git-send-email 1.7.0.4
X-OriginalArrivalTime: 15 Dec 2010 21:14:30.0001 (UTC)
	FILETIME=[0FDB2610:01CB9C9D]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/4] Update to latest swabber
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
X-List-Received-Date: Wed, 15 Dec 2010 21:14:32 -0000

I'm resending this as I forgot to sign off the changes.

Merge of latest swabber and interface code.  Highlights are:
- include distro filter files
- calculate ccache directory properly
- use latest version of swabber.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: adevries/swabber
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=adevries/swabber

Thanks,
    Alex deVries <alex.devries@windriver.com>
---


Alex deVries (4):
  Stop using hardcoded paths, use new Ubuntu and generic filters.
  Swabber's update_distro automatically updates the blob now.
  Calculate CCACHE_DIR by calling host's ccache config.
  Update to the latest swabber.

 meta/classes/image-swab.bbclass                    |   12 +++++-----
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/conf/swabber/Ubuntu-10.04.1-64/blacklist      |    6 +++++
 meta/conf/swabber/Ubuntu-10.04.1-64/filters        |    7 ++++++
 meta/conf/swabber/Ubuntu-10.04.1-64/whitelist      |   23 ++++++++++++++++++++
 meta/conf/swabber/generic/blacklist                |    2 +
 meta/conf/swabber/generic/filters                  |   10 ++++++++
 meta/conf/swabber/generic/whitelist                |   15 +++++++++++++
 8 files changed, 70 insertions(+), 7 deletions(-)
 create mode 100644 meta/conf/swabber/Ubuntu-10.04.1-64/blacklist
 create mode 100644 meta/conf/swabber/Ubuntu-10.04.1-64/filters
 create mode 100644 meta/conf/swabber/Ubuntu-10.04.1-64/whitelist
 create mode 100644 meta/conf/swabber/generic/blacklist
 create mode 100644 meta/conf/swabber/generic/filters
 create mode 100644 meta/conf/swabber/generic/whitelist


