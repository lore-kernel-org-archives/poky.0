Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C87FC4C801BF
	for <poky@pokylinux.org>; Wed, 20 Oct 2010 15:00:57 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9KK0v2J023082
	for <poky@pokylinux.org>; Wed, 20 Oct 2010 13:00:57 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 20 Oct 2010 13:00:57 -0700
Received: from Macintosh-5.local ([172.25.36.230]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 20 Oct 2010 13:00:57 -0700
Message-ID: <4CBF4A78.6000908@windriver.com>
Date: Wed, 20 Oct 2010 15:00:56 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.9) Gecko/20100915 Thunderbird/3.1.4
MIME-Version: 1.0
To: poky <poky@pokylinux.org>
X-OriginalArrivalTime: 20 Oct 2010 20:00:57.0298 (UTC)
	FILETIME=[828C1B20:01CB7091]
Subject: [pull] syslog.conf update
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Oct 2010 20:00:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The following changes since commit 1d5567c43df124175b4c4454d2f316bb20242509:

   poky-default-revisions: define SRCREV for pseudo-nativesdk (2010-10-20 
17:49:59 +0100)

are available in the git repository at:
   git://git.pokylinux.org/poky-contrib mhatle/syslog

Mark Hatle (1):
       busybox/sysklogd: syslog.conf files

  meta/recipes-core/busybox/busybox.inc          |    7 +++++--
  meta/recipes-core/busybox/busybox_1.16.2.bb    |    2 +-
  meta/recipes-extended/sysklogd/sysklogd.inc    |    5 ++++-
  meta/recipes-extended/sysklogd/sysklogd_1.5.bb |    2 +-
  4 files changed, 11 insertions(+), 5 deletions(-)

