Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 906344C81174
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 15:37:56 -0600 (CST)
Received: from [192.168.0.7] (5ada2504.bb.sky.com [90.218.37.4])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id B1ACD12EC117
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 16:14:41 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
Date: Fri, 12 Nov 2010 21:37:48 +0000
Message-ID: <1289597868.27930.44.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: [PATCH 4/5] poky-default-revisions: bump swabber version
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
X-List-Received-Date: Fri, 12 Nov 2010 21:37:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc
b/meta/conf/distro/include/poky-default-revisions.inc
index 4571995..eb857ea 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -150,7 +150,7 @@ SRCREV_pn-qemugl-nativesdk ??=
"d888bbc723c00d197d34a39b5b7448660ec1b1c0"
 SRCREV_pn-sat-solver = "aa799f7bae0ec055e0e527203635001bb7346dbc"
 SRCREV_pn-screenshot ??= "292"
 SRCREV_pn-settings-daemon ??= "2059"
-SRCREV_pn-swabber-native ??= "782099b6ec9a1b3f9bde8e8eea66f349b87aaa6f"
+SRCREV_pn-swabber-native ??= "1ffb646ffd4266afae181286e45d1b6f7965c47e"
 SRCREV_pn-table ??= "4b267533ce16656cba4104fc39dc12709c1bdddf"
 SRCREV_pn-tasks ??= "ea52d46d691c5fce4473ea4e24a35411381f3a65"
 SRCREV_pn-trace-cmd ??= "0d252224626bd6926324f023a65f20c165232891"
-- 
1.7.3.2



