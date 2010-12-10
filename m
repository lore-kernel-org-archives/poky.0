Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B58CE4C80039
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 02:26:07 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBA8Q6vX015223;
	Fri, 10 Dec 2010 00:26:06 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 10 Dec 2010 00:26:06 -0800
Received: from [128.224.163.183] ([128.224.163.183]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 10 Dec 2010 00:26:05 -0800
Message-ID: <4D01E3F9.90800@windriver.com>
Date: Fri, 10 Dec 2010 16:25:29 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Thunderbird/3.0.6
MIME-Version: 1.0
To: poky@yoctoproject.org
X-OriginalArrivalTime: 10 Dec 2010 08:26:06.0143 (UTC)
	FILETIME=[E3BFF4F0:01CB9843]
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: [PULL]: Two scripts for lsb test
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
X-List-Received-Date: Fri, 10 Dec 2010 08:26:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Saul & Mark,

I push two scripts to poky and other people can solve bugs from lsb. 
they may ensure whether the bugs modified by them is right or not with 
this script. I want to write a user manual  about how to make a test on 
wiki web "https://wiki.pokylinux.org/wiki/", if you permit me. I can't 
integrate them to auto-test function from Jiajun Xu because of some 
problems form rpm database on target platform.

  meta/recipes-extended/lsbsetup/lsb/LSB_Setup.sh |  197 
+++++++++++++++++++++++
  meta/recipes-extended/lsbsetup/lsbsetup_0.9.bb  |   32 ++++
  scripts/creat-lsb-image                         |  170 +++++++++++++++++++
  3 files changed, 399 insertions(+), 0 deletions(-)
  create mode 100644 meta/recipes-extended/lsbsetup/lsb/LSB_Setup.sh
  create mode 100644 meta/recipes-extended/lsbsetup/lsbsetup_0.9.bb
  create mode 100755 scripts/creat-lsb-image

Xiaofeng Yan (2):
   creat-lsb-image: download lsb test suite and creat a image with lsb 
test suite
   lsbsetup: Set up lsb test environment on target platform

