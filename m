Return-Path: <gael.portay@savoirfairelinux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93D89E00D75; Thu,  7 Dec 2017 14:28:50 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEAABE00D71
	for <poky@yoctoproject.org>; Thu,  7 Dec 2017 14:28:49 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 9D0119C308B
	for <poky@yoctoproject.org>; Thu,  7 Dec 2017 17:28:48 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id qM7R-CBz1wnC; Thu,  7 Dec 2017 17:28:48 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 062E19C2F43;
	Thu,  7 Dec 2017 17:28:48 -0500 (EST)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id EekgRjFoxpz3; Thu,  7 Dec 2017 17:28:47 -0500 (EST)
Received: from archlinux.mtl.sfl (unknown [192.168.50.172])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id DAD839C1AAA;
	Thu,  7 Dec 2017 17:28:47 -0500 (EST)
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>
To: poky@yoctoproject.org
Date: Thu,  7 Dec 2017 17:29:17 -0500
Message-Id: <cover.1512685340.git.gael.portay@savoirfairelinux.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
Subject: [PATCH 0/1] util-linux: create nativesdk lib packages
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
X-List-Received-Date: Thu, 07 Dec 2017 22:28:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear maintainer,

This patch fixes the following error:

	Collected errors:
	 * calculate_dependencies_for: Cannot satisfy the following dependencies=
 for nativesdk-packagegroup-sdk-host:
	 *     nativesdk-util-linux-libuuid *
	 * opkg_solver_install: Cannot install package nativesdk-packagegroup-sd=
k-host.

The following changes since commit 4469acdf1d0338220f3fe2ecb5e079eea6fda3=
75:

  lib/oe/utils: remove param_bool() (2017-12-02 11:25:34 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/poky-contrib gportay/util-linux-create-nativ=
esdk-lib-packages
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dgportay/util=
-linux-create-nativesdk-lib-packages

Regards,
Ga=C3=ABl PORTAY (1):
  util-linux: create nativesdk lib packages

 meta/recipes-core/util-linux/util-linux.inc | 7 +++++++
 1 file changed, 7 insertions(+)

--=20
2.15.0



