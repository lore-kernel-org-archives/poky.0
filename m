Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0182C4C80B70
	for <poky@lists.pokylinux.org>; Thu,  4 Nov 2010 03:10:25 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA48APAn005602
	for <poky@lists.pokylinux.org>; Thu, 4 Nov 2010 01:10:25 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 4 Nov 2010 01:10:25 -0700
Received: from [128.224.163.183] ([128.224.163.183]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 4 Nov 2010 01:10:24 -0700
Message-ID: <4CD2699E.7010008@windriver.com>
Date: Thu, 04 Nov 2010 16:06:54 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Thunderbird/3.0.6
MIME-Version: 1.0
To: poky@lists.pokylinux.org
X-OriginalArrivalTime: 04 Nov 2010 08:10:25.0205 (UTC)
	FILETIME=[BC093650:01CB7BF7]
Subject: [PULL]: Add lsb_release needed by lsb test
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
X-List-Received-Date: Thu, 04 Nov 2010 08:10:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

  meta/recipes-extended/lsb/lsb_1.4.bb |   83 
+++++++++++++++++++++++++++++++++++
  1 file changed, 83 insertions(+)

Xiaofeng Yan (1):
       LSB: Add a new package

Pull URL: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/distro


