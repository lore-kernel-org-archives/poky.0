Return-Path: <richard@nod.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1279E00C10; Tue, 18 Dec 2018 15:17:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 381 seconds by postgrey-1.32 at yocto-www;
	Tue, 18 Dec 2018 15:17:34 PST
Received: from lilium.sigma-star.at (lilium.sigma-star.at [109.75.188.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AC67E00B92
	for <poky@yoctoproject.org>; Tue, 18 Dec 2018 15:17:34 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by lilium.sigma-star.at (Postfix) with ESMTP id 108DF18021737;
	Wed, 19 Dec 2018 00:11:12 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: poky@yoctoproject.org
Date: Wed, 19 Dec 2018 00:10:57 +0100
Message-Id: <20181218231057.9823-1-richard@nod.at>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Cc: Richard Weinberger <richard@nod.at>, alexander.kanavin@linux.intel.com
Subject: [PATCH] sdk: Fix SDKIMAGE_LINGUAS handling
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
X-List-Received-Date: Tue, 18 Dec 2018 23:17:35 -0000
Content-Transfer-Encoding: quoted-printable

Currently SDKIMAGE_LINGUAS is broken for any inputs except "all".
In the non-"all" case, each enabled language package is installed via
pm.install("nativesdk-glibc-binary-localedata-%s.utf-8" % lang)
This will throw a python exception since pm.install() expects a list of
strings and not a string.

Fix the problem by passing a single element list to pm.install().

Cc: richard.purdie@linuxfoundation.org
Cc: alexander.kanavin@linux.intel.com
Fixes: 67615e01751b ("rootfs_rpm.bbclass: migrate image creation to dnf")
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 meta/lib/oe/sdk.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/lib/oe/sdk.py b/meta/lib/oe/sdk.py
index 153b07d76b40..98073cf0cac7 100644
--- a/meta/lib/oe/sdk.py
+++ b/meta/lib/oe/sdk.py
@@ -96,7 +96,7 @@ class Sdk(object, metaclass=3DABCMeta):
                 pm.install_glob("nativesdk-glibc-binary-localedata-*.utf=
-8", sdk=3DTrue)
             else:
                 for lang in linguas.split():
-                    pm.install("nativesdk-glibc-binary-localedata-%s.utf=
-8" % lang)
+                    pm.install(["nativesdk-glibc-binary-localedata-%s.ut=
f-8" % lang])
             # Generate a locale archive of them
             target_arch =3D self.d.getVar('SDK_ARCH')
             rootfs =3D oe.path.join(self.sdk_host_sysroot, self.sdk_nati=
ve_path)
--=20
2.20.1


