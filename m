Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03A8FE004F5
	for <poky@yoctoproject.org>; Sat, 25 Jan 2014 22:21:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0Q6LqYs011412
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sat, 25 Jan 2014 22:21:52 -0800 (PST)
Received: from pek-blade16.wrs.com (128.224.153.44) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.347.0;
	Sat, 25 Jan 2014 22:21:51 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Sun, 26 Jan 2014 14:22:30 +0800
Message-ID: <cover.1390717255.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Subject: [PATCH 0/2] [dora-next] Add Ubuntu-13.10 and Fedora-20 to supported distros list
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 26 Jan 2014 06:21:54 -0000
Content-Type: text/plain

The following changes since commit 2464d57ecf445985f6ad059f47f626b58bf34370:

  x11vnc: fix CAPS_LOCK issues (2014-01-26 14:18:48 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib robert/hosts
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/hosts

Richard Purdie (1):
  poky: Add Ubuntu-13.10 to supported distros list

Robert Yang (1):
  poky: Add Fedora-20 to supported distros list

 meta-yocto/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

-- 
1.8.3.1


