Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D27DD4C803D6
	for <poky@pokylinux.org>; Mon,  8 Nov 2010 01:03:49 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA873ngo010496
	for <poky@pokylinux.org>; Sun, 7 Nov 2010 23:03:49 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 7 Nov 2010 23:03:48 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 7 Nov 2010 23:03:48 -0800
From: Lu Jingdong <jingdong.lu@windriver.com>
To: poky@pokylinux.org
Date: Mon, 08 Nov 2010 15:00:12 +0800
Message-ID: <1289199612.1683.4.camel@eric-desktop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-OriginalArrivalTime: 08 Nov 2010 07:03:49.0139 (UTC)
	FILETIME=[17D8EE30:01CB7F13]
Subject: [PULL]Fix moving libtcl8.5.so into tcl-lib.
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
X-List-Received-Date: Mon, 08 Nov 2010 07:03:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Note: <commit_id> parameter assumed as 'HEAD'

  meta/recipes-devtools/tcltk/tcl_8.5.8.bb                 |    4 
  1 files changed, 2 insertions(+), 2 deletions(-)

Jingdong Lu (1):
      Fix moving libtcl8.5.so into tcl-lib.

Pull URL:
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


