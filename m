Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D6B44C806DA
	for <poky@lists.pokylinux.org>; Tue, 19 Oct 2010 04:52:25 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id 2756F12EC35C; Tue, 19 Oct 2010 05:27:49 -0500 (CDT)
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 025BB12EC332
	for <poky@o-hand.com>; Tue, 19 Oct 2010 05:27:48 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9J9qNfw024630
	for <poky@o-hand.com>; Tue, 19 Oct 2010 02:52:24 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 19 Oct 2010 02:52:23 -0700
Received: from [128.224.163.183] ([128.224.163.183]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 19 Oct 2010 02:52:23 -0700
Message-ID: <4CBD6A0E.8010609@windriver.com>
Date: Tue, 19 Oct 2010 17:51:10 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Thunderbird/3.0.6
MIME-Version: 1.0
To: "poky@o-hand.com" <poky@o-hand.com>
X-OriginalArrivalTime: 19 Oct 2010 09:52:23.0511 (UTC)
	FILETIME=[54389E70:01CB6F73]
Subject: [PULL]: Add some necessary sources needed by lsb test with auto mode
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
X-List-Received-Date: Tue, 19 Oct 2010 09:52:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

  Hi Saul,
We add some necessary sources which will be used if we test images by 
lsb suite.


  meta/recipes-extended/images/poky-image-lsb.bb   |    1
  meta/recipes-extended/lsb/file/lsb_release       |  388 ++++++++++
  meta/recipes-extended/lsb/lsb_4.0.bb             |   79 ++
  meta/recipes-extended/tasks/task-poky-lsb-add.bb |  875 
+++++++++++++++++++++++
  4 files changed, 1343 insertions(+)

Xiaofeng Yan (1):
       LSB:Add lsb_release and a lsb task list

Pull URL: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/distro
Thanks,
Yan


