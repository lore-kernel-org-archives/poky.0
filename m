Return-Path: <gael.portay@savoirfairelinux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF99AE00D81; Thu,  7 Dec 2017 13:47:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.88.110.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[208.88.110.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 214E4E00D73
	for <poky@yoctoproject.org>; Thu,  7 Dec 2017 13:47:12 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 595429C3091
	for <poky@yoctoproject.org>; Thu,  7 Dec 2017 16:38:06 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id ezB1y51Lxcw5; Thu,  7 Dec 2017 16:38:05 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id D36B49C206B;
	Thu,  7 Dec 2017 16:38:05 -0500 (EST)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id QyOn_DZ5m2E9; Thu,  7 Dec 2017 16:38:05 -0500 (EST)
Received: from archlinux.mtl.sfl (unknown [192.168.50.172])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id B64299C1A60;
	Thu,  7 Dec 2017 16:38:05 -0500 (EST)
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>
To: poky@yoctoproject.org
Date: Thu,  7 Dec 2017 16:38:46 -0500
Message-Id: <cover.1512682188.git.gael.portay@savoirfairelinux.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
Subject: [PULL][PATCH 0/1] package_manager.py: fix opkg custom config path
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
X-List-Received-Date: Thu, 07 Dec 2017 21:47:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear maintainers,

The opkg custom config feature has moved to the package_manager python
module. This feature is broken since commit 19c538f57c.

The python function os.path.join joins path components. If a component
is an absolute path, all previous components are thrown away. The
sysconfdir variable is an absolute path component. It causes the leading
target rootfs component to be removed. As a result, the package-manager
module tries to write in the real root filesystem instead of the
temporary work directory for the rootfs image.

This fixes the issue by prepending the target rootfs component using the
string concatenation operator when the file is opened (without using
os.path module).

No confidential information there.

The following changes since commit 4469acdf1d0338220f3fe2ecb5e079eea6fda3=
75:

  lib/oe/utils: remove param_bool() (2017-12-02 11:25:34 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/poky-contrib gportay/fix-opkg-custom-config-=
path
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dgportay/fix-=
opkg-custom-config-path

Regards,
Ga=C3=ABl PORTAY (1):
  package_manager.py: fix opkg custom config path

 meta/lib/oe/package_manager.py | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

--=20
2.15.0


