Return-Path: <jeff.dagenais@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDCBCE006B0
	for <poky@yoctoproject.org>; Sun, 15 Jan 2012 17:11:14 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsp19 with SMTP id p19so1565489qcs.35
	for <poky@yoctoproject.org>; Sun, 15 Jan 2012 17:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer:mime-version
	:content-type:content-transfer-encoding;
	bh=AcJ0G4IvQLwQl33HIp2Vd84xnii7du7F3ZVhI+isYz4=;
	b=Yw8a7+zdXITysBJMstdsBMhAzzUxFsFL6AaFyF6z/K88jtvisvBRM8BRZ8vtpb9Ng8
	MnU4WrPm425W7jHq/GzS9j3IsDWpKFgYv+2KxdW3v+TYXW1KQUnc2IEcpOFkvnxM3YIb
	TC5+jHfgzJhoMZLIhbwjOQlKMztRleU99r6O4=
Received: by 10.224.192.10 with SMTP id do10mr11696658qab.50.1326676273952;
	Sun, 15 Jan 2012 17:11:13 -0800 (PST)
Received: from jfddesk.Sonatest.net
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id el3sm33665630qab.8.2012.01.15.17.11.12
	(version=SSLv3 cipher=OTHER); Sun, 15 Jan 2012 17:11:13 -0800 (PST)
From: =?UTF-8?q?Jean-Fran=C3=A7ois=20Dagenais?= <jeff.dagenais@gmail.com>
To: poky@yoctoproject.org
Date: Sun, 15 Jan 2012 20:11:05 -0500
Message-Id: <1326676265-31778-1-git-send-email-jeff.dagenais@gmail.com>
X-Mailer: git-send-email 1.7.8.3
MIME-Version: 1.0
Cc: roym@sonatest.com,
	=?UTF-8?q?Jean-Fran=C3=A7ois=20Dagenais?= <dagenaisj@sonatest.com>,
	marc.ferland@gmail.com
Subject: [PATCH] buildstats: tolerate absence of /proc/diskstats
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
X-List-Received-Date: Mon, 16 Jan 2012 01:11:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jean-François Dagenais <dagenaisj@sonatest.com>

In OpenVZ containers (and probably lx containers as well),
the diskstats entry is not even present. Use the "NoLogicalDrive"
introduced by Elizabeth Flanagan in such case.

This allows the bitbaking to occure within such containers.

Signed-off-by: Jean-François Dagenais <jeff.dagenais@gmail.com>
---
 meta/classes/buildstats.bbclass |   25 +++++++++++++++----------
 1 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/meta/classes/buildstats.bbclass b/meta/classes/buildstats.bbclass
index 4cd8fe6..9690a04 100644
--- a/meta/classes/buildstats.bbclass
+++ b/meta/classes/buildstats.bbclass
@@ -61,11 +61,13 @@ def set_device(e):
     # we do not collect diskstats as the method to collect meaningful statistics
     # for these fs types requires a bit more research. 
     ############################################################################
-    for line in open("/proc/diskstats", "r"):
-        if majordev == int(line.split()[0]) and minordev == int(line.split()[1]):
-           rdev=line.split()[2]
-        else:
-           rdev="NoLogicalDevice"
+    rdev="NoLogicalDevice"
+    try:
+        for line in open("/proc/diskstats", "r"):
+            if majordev == int(line.split()[0]) and minordev == int(line.split()[1]):
+               rdev=line.split()[2]
+    except:
+        pass
     file = open(e.data.getVar('DEVFILE', True), "w")
     file.write(rdev)
     file.close()
@@ -82,12 +84,15 @@ def get_diskstats(dev):
     # For info on what these are, see kernel doc file iostats.txt
     ############################################################################
     DSTAT_KEYS = ['ReadsComp', 'ReadsMerged', 'SectRead', 'TimeReads', 'WritesComp', 'SectWrite', 'TimeWrite', 'IOinProgress', 'TimeIO', 'WTimeIO']  
-    for x in open("/proc/diskstats", "r"):
-        if dev in x:
-            diskstats_val = x.rstrip().split()[4:]
-    diskstats = dict(itertools.izip(DSTAT_KEYS, diskstats_val))        
+    try:
+        for x in open("/proc/diskstats", "r"):
+            if dev in x:
+                diskstats_val = x.rstrip().split()[4:]
+    except IOError as e:
+        return
+    diskstats = dict(itertools.izip(DSTAT_KEYS, diskstats_val))
     return diskstats
-    
+
 def set_diskdata(var, dev, data):
     data.setVar(var, get_diskstats(dev))
 
-- 
1.7.8.3


