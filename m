Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E21064C80287
	for <poky@pokylinux.org>; Mon,  1 Nov 2010 05:25:12 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA1APCgu008743
	for <poky@pokylinux.org>; Mon, 1 Nov 2010 03:25:12 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 03:25:11 -0700
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 03:25:12 -0700
Message-ID: <4CCE94E0.50903@windriver.com>
Date: Mon, 01 Nov 2010 18:22:24 +0800
From: Lu Jingdong <jingdong.lu@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: poky@pokylinux.org
X-OriginalArrivalTime: 01 Nov 2010 10:25:12.0312 (UTC)
	FILETIME=[11168F80:01CB79AF]
Subject: [PULL]Fix adding GDBM_File module for perl
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
X-List-Received-Date: Mon, 01 Nov 2010 10:25:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Note: <commit_id> parameter assumed as 'HEAD'

  meta/recipes-devtools/perl/perl-5.8.8/config.sh                                     |    8
  meta/recipes-devtools/perl/perl-5.8.8/perl-enable-gdbm.patch                        |   17 +
  meta/recipes-devtools/perl/perl_5.8.8.bb                                            |    2

  meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.12-zlib.patch                 |  169 ++++++++++
  meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-data_types.patch          |   32 +
  meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-help-index-segfault.patch |   23 +
  meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-mosdo-crash.patch         |   11
  meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-powerpc.patch             |   12
  meta/recipes-extended/texinfo/texinfo_4.13a.bb                                      |   57 +++
  9 files changed, 327 insertions(+), 4 deletions(-)

Jingdong Lu (2):
       texinfo: Add new package
       Fix adding GDBM_File module for LSB test.

Pull URL: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

-- 
Lu Jingdong
China, WindRiver


