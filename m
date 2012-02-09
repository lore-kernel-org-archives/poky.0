Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C20BFE0136A
	for <poky@yoctoproject.org>; Wed,  8 Feb 2012 22:02:37 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q1962VVP002676
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 8 Feb 2012 22:02:32 -0800 (PST)
Received: from localhost.localdomain (128.224.162.202) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Wed, 8 Feb 2012 22:02:30 -0800
From: Kang Kai <kai.kang@windriver.com>
To: <poky@yoctoproject.org>, <mark.hatle@windriver.com>, <josh@linux.intel.com>
Date: Thu, 9 Feb 2012 14:02:05 +0800
Message-ID: <1328767326-31633-1-git-send-email-kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.202]
Cc: paul.eggleton@linux.intel.com
Subject: V2 Yocto 1656: Recipe creation/import script
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
X-List-Received-Date: Thu, 09 Feb 2012 06:02:37 -0000
Content-Type: text/plain

Hi All,

This version 2 implemention for Yocto 1656: Recipe creation/import script
update:
1 rename script to create-recipe
2 add copyright information
3 add support for local source URI support
4 add command argument to support patch file
5 guess license from files: LICENSE, COPYING, COPYING.LIB, and COPYRIGHT
6 other tiny bug fix


Any suggestion is appreciated.

Regards,
Kai


