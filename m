Return-Path: <gael.portay@savoirfairelinux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7541AE00D81; Thu,  7 Dec 2017 13:47:14 -0800 (PST)
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
X-Greylist: delayed 546 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Dec 2017 13:47:12 PST
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[208.88.110.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ECE6E00D71
	for <poky@yoctoproject.org>; Thu,  7 Dec 2017 13:47:12 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 9CB239C30C5
	for <poky@yoctoproject.org>; Thu,  7 Dec 2017 16:38:07 -0500 (EST)
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id c8AOWMVEyRHP; Thu,  7 Dec 2017 16:38:07 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 0CFB39C309D;
	Thu,  7 Dec 2017 16:38:07 -0500 (EST)
X-Quarantine-ID: <L9j0dj6tddPA>
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id L9j0dj6tddPA; Thu,  7 Dec 2017 16:38:06 -0500 (EST)
Received: from archlinux.mtl.sfl (unknown [192.168.50.172])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id D8B559C1A60;
	Thu,  7 Dec 2017 16:38:06 -0500 (EST)
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>
To: poky@yoctoproject.org
Date: Thu,  7 Dec 2017 16:38:47 -0500
Message-Id: <ebf0d7257abc739215a3e852e8c5c364bc1b6f29.1512682188.git.gael.portay@savoirfairelinux.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1512682188.git.gael.portay@savoirfairelinux.com>
References: <cover.1512682188.git.gael.portay@savoirfairelinux.com>
In-Reply-To: <cover.1512682188.git.gael.portay@savoirfairelinux.com>
References: <cover.1512682188.git.gael.portay@savoirfairelinux.com>
MIME-Version: 1.0
Cc: Ash Charles <ash.charles@savoirfairelinux.com>
Subject: [PATCH 1/1] package_manager.py: fix opkg custom config path
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
X-List-Received-Date: Thu, 07 Dec 2017 21:47:14 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The opkg custom config feature has moved to the package_manager python
module. This feature is broken since commit 19c538f57c.

The python function os.path.join joins path components. If a component
is an absolute path, all previous components are thrown away.

The sysconfdir variable is an absolute path component. It causes the
leading target rootfs component to be removed. As a result, the
package-manager module tries to write in the real root filesystem
instead of the temporary work directory for the rootfs image.

This fixes the issue by prepending the target rootfs component using the
string concatenation operator when the file is opened (without using
os.path module).

Cc: Ash Charles <ash.charles@savoirfairelinux.com>
Signed-off-by: Ga=C3=ABl PORTAY <gael.portay@savoirfairelinux.com>
---
 meta/lib/oe/package_manager.py | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/meta/lib/oe/package_manager.py b/meta/lib/oe/package_manager=
.py
index ef69b18b642..642d714b51e 100644
--- a/meta/lib/oe/package_manager.py
+++ b/meta/lib/oe/package_manager.py
@@ -953,12 +953,11 @@ class OpkgPM(OpkgDpkgPM):
             """
             if (self.d.getVar('FEED_DEPLOYDIR_BASE_URI') or "") !=3D "":
                 for arch in self.pkg_archs.split():
-                    cfg_file_name =3D os.path.join(self.target_rootfs,
-                                                 self.d.getVar("sysconfd=
ir"),
+                    cfg_file_name =3D os.path.join(self.d.getVar("syscon=
fdir", True),
                                                  "opkg",
                                                  "local-%s-feed.conf" % =
arch)
=20
-                    with open(cfg_file_name, "w+") as cfg_file:
+                    with open(self.target_rootfs + cfg_file_name, "w+") =
as cfg_file:
                         cfg_file.write("src/gz local-%s %s/%s" %
                                        (arch,
                                         self.d.getVar('FEED_DEPLOYDIR_BA=
SE_URI'),
--=20
2.15.0


