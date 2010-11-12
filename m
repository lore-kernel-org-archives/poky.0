Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B5C94C80044
	for <poky@lists.pokylinux.org>; Fri, 12 Nov 2010 01:41:55 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAC7fpbj014815;
	Thu, 11 Nov 2010 23:41:52 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 11 Nov 2010 23:41:51 -0800
Received: from [128.224.163.183] ([128.224.163.183]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 11 Nov 2010 23:41:51 -0800
Message-ID: <4CDCEE92.6090605@windriver.com>
Date: Fri, 12 Nov 2010 15:36:50 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Thunderbird/3.0.6
MIME-Version: 1.0
To: poky@lists.pokylinux.org, "Wold, Saul" <saul.wold@intel.com>
X-OriginalArrivalTime: 12 Nov 2010 07:41:51.0527 (UTC)
	FILETIME=[11E8B370:01CB823D]
Subject: [PULL] Add package lsb-release for lsb test
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
X-List-Received-Date: Fri, 12 Nov 2010 07:41:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Modify license

Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: xiaofeng/distro
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/distro


Xiaofeng Yan (1):
   LSB: Add a new package

  meta/recipes-extended/lsb/lsb_1.4.bb |   83 
++++++++++++++++++++++++++++++++++
  1 files changed, 83 insertions(+), 0 deletions(-)


