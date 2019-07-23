Return-Path: <FredericOuellet@eaton.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 646BAE00D4E; Tue, 23 Jul 2019 13:44:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.104.67.6 listed in list.dnswl.org]
X-Greylist: delayed 502 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Jul 2019 13:44:31 PDT
Received: from simtcimsva03.etn.com (mail.eaton.com [192.104.67.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C069E00D44
	for <poky@yoctoproject.org>; Tue, 23 Jul 2019 13:44:31 -0700 (PDT)
Received: from simtcimsva03.etn.com (simtcimsva03.etn.com [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 11F66A4154
	for <poky@yoctoproject.org>; Tue, 23 Jul 2019 16:36:09 -0400 (EDT)
Received: from simtcimsva03.etn.com (simtcimsva03.etn.com [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1013CA4152
	for <poky@yoctoproject.org>; Tue, 23 Jul 2019 16:36:09 -0400 (EDT)
Received: from SIMTCSGWY03.napa.ad.etn.com (simtcsgwy03.napa.ad.etn.com
	[151.110.126.189]) by simtcimsva03.etn.com (Postfix) with ESMTPS
	for <poky@yoctoproject.org>; Tue, 23 Jul 2019 16:36:09 -0400 (EDT)
Received: from CASROWHP6063516-VML1.eaton.ad.etn.com (10.106.181.101) by
	SIMTCSGWY03.napa.ad.etn.com (151.110.126.205) with Microsoft SMTP
	Server id 14.3.408.0; Tue, 23 Jul 2019 16:35:47 -0400
From: Frederic Ouellet <fredericouellet@eaton.com>
To: <poky@yoctoproject.org>
Date: Tue, 23 Jul 2019 16:35:44 -0400
Message-ID: <1563914144-7406-1-git-send-email-fredericouellet@eaton.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: 96b59d02-bc1a-4a40-8c96-611cac62bce9
X-TM-SNTS-SMTP: DE79883BF055DD14C229B66E46485FB8F42B6FE290C2C3E80CE4525B61E42DF52002:8
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSVA-9.1.0.1817-8.5.0.1020-24790.001
X-TM-AS-Result: No--7.105-10.0-31-10
X-imss-scan-details: No--7.105-10.0-31-10
X-TMASE-Version: IMSVA-9.1.0.1817-8.5.1020-24790.001
X-TMASE-Result: 10--7.105200-10.000000
X-TMASE-MatchedRID: uc5cNCUKFYp0abwLl8OMVZxVZzZr7+O7+LljbN4c70MQ6IKhv9EC6Feh
	ickTy3ziVL7YbuOsNC8hCBJ5VoC96ZWbeF6SCfG1PwKTD1v8YV5MkOX0UoduuazG9MIKeG/GC7w
	CgDJ8bdGf7qMlTsJfYov9sGOtq3aSaTkWqXcVpruQgeuUY0WN7H0tCKdnhB589yM15V5aWpj6C0
	ePs7A07cN/HV0XjLV3/cD+5Nu0KszUoDw7odWzbSdrXxIG4z1TtheTy2BJ6m1WXGvUUmKP2w==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-12:0,22:0,33:0,34:0-0
Subject: [PATCH] Add partial support of drop-in configuration files to systemd-systemctl-native script
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
X-List-Received-Date: Tue, 23 Jul 2019 20:44:33 -0000
Content-Type: text/plain

Support for serive-name.service.d/ folders containing .conf files
It don't support all the partial folder names

See https://www.freedesktop.org/software/systemd/man/systemd.unit.html

Signed-off-by: Frederic Ouellet <fredericouellet@eaton.com>
---
 meta/recipes-core/systemd/systemd-systemctl/systemctl | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/systemd/systemd-systemctl/systemctl b/meta/recipes-core/systemd/systemd-systemctl/systemctl
index 8d7b3ba..8837f54 100755
--- a/meta/recipes-core/systemd/systemd-systemctl/systemctl
+++ b/meta/recipes-core/systemd/systemd-systemctl/systemctl
@@ -28,6 +28,10 @@ class SystemdFile():
     def __init__(self, root, path):
         self.sections = dict()
         self._parse(root, path)
+        dirname = os.path.basename(path.name) + ".d"
+        for location in locations:
+            for path2 in sorted((root / location / "system" / dirname).glob("*.conf")):                
+                self._parse(root, path2)
 
     def _parse(self, root, path):
         """Parse a systemd syntax configuration file
@@ -56,8 +60,11 @@ class SystemdFile():
                 line = line.rstrip("\n")
                 m = section_re.match(line)
                 if m:
-                    section = dict()
-                    self.sections[m.group('section')] = section
+                    if m.group('section') not in self.sections:
+                        section = dict()
+                        self.sections[m.group('section')] = section
+                    else:
+                        section = self.sections[m.group('section')]
                     continue
 
                 while line.endswith("\\"):
-- 
2.7.4


