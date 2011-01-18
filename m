Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CFEA4C8106A
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 10:19:17 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0IGJHU1000372
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 08:19:17 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 18 Jan 2011 08:19:17 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 18 Jan 2011 08:19:17 -0800
Message-ID: <4D35BD84.6010201@windriver.com>
Date: Tue, 18 Jan 2011 10:19:16 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
X-OriginalArrivalTime: 18 Jan 2011 16:19:17.0426 (UTC)
	FILETIME=[74623120:01CBB72B]
Subject: [PATCH 0/1] Update santiy.bbclass when patch resolution "noop"
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
X-List-Received-Date: Tue, 18 Jan 2011 16:19:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

When the patch resolution is set to 'noop', sanity is still trying to
verify the TERMCMD.  It shouldn't do that.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/wrsync
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/wrsync

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  sanity.bbclass: Disable TERMCMD checking with noop patching

 meta/classes/sanity.bbclass |   11 ++++++-----
 1 files changed, 6 insertions(+), 5 deletions(-)

--
1.7.3.4

