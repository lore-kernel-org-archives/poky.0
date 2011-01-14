Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B876B4C80039
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 22:54:36 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0E4saf9029810
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 20:54:36 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 13 Jan 2011 20:54:36 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 13 Jan 2011 20:54:35 -0800
Message-ID: <4D2FD707.4080509@windriver.com>
Date: Thu, 13 Jan 2011 22:54:31 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky <poky@yoctoproject.org>
X-OriginalArrivalTime: 14 Jan 2011 04:54:35.0952 (UTC)
	FILETIME=[2443BB00:01CBB3A7]
Subject: [PATCH 0/1] pseudo: Update to the latest upstream version
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
X-List-Received-Date: Fri, 14 Jan 2011 04:54:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Update pseudo to the latest version to resolve a number of optimization defects.

The problems were present on both 64-bit and 32-bit systems, but generally only
caused issues on 32-bit hosts.

Note: once you upgrade you need to be sure to clean out pseudo.  In order to do
this ../bitbake/bin/bitbake -c cleanall pseudo-native

Followed by ../bitbake/bin/bitbake pseudo-native

Otherwise you can end up in a wierd situation where the old pseudo is being
used to build the new one.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/pseudo
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/pseudo

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  pseudo: Update to the latest upstream version

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../895fa7e359e8026a608fba052c2994e42901e45f.patch |  235 --------------------
 meta/recipes-devtools/pseudo/pseudo_git.bb         |    2 +-
 3 files changed, 2 insertions(+), 237 deletions(-)
 delete mode 100644
meta/recipes-devtools/pseudo/pseudo/895fa7e359e8026a608fba052c2994e42901e45f.patch

-- 
1.7.3.4


