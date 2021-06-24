Received: from sender4-op-o13.zoho.com (sender4-op-o13.zoho.com [136.143.188.13])
 by mx.groups.io with SMTP id smtpd.web09.3871.1624516847869852175
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 23:40:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=dwrobel@ertelnet.rybnik.pl header.s=ertelnet header.b=IACfBRli;
 spf=pass (domain: ertelnet.rybnik.pl, ip: 136.143.188.13, mailfrom: dwrobel@ertelnet.rybnik.pl)
ARC-Seal: i=1; a=rsa-sha256; t=1624516844; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=h5ck4Kjbr58pLExvEJsRdXn57XAFpz6qTaC85p3QbYCqDybJ1dYLoQ43DlO0z/xn6e+eQOWPCl4BvFYJU+ghnM3EnyXzAb5Ll6VicHFP17S6J8FksQ93OQEphbHnIryh+oE14+EY+jSyhegi6/MhNqIeNHWYq2lS3TJTveOoP/4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1624516844; h=Content-Transfer-Encoding:Date:From:MIME-Version:Message-ID:Subject:To; 
	bh=cT9GA/fyQtuOLIs5kuLcHJ+s2B2dMFxMmWshfPTFzAY=; 
	b=i8rCzjuYw7DHQOiIZEC4wO25G8gS73VTrV57t3x8yPL4X4dyYfO1bidGLFJ7e7mnydfUJbH480y6YDQSxPx9OhPX4UgDuxaZevm2h72AgB5xrqAcUCtTdc1q9sWBbsbeg9d+ROCj7MWEByjiAS+lIyqSsLlGKtegxNagGXP2feo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ertelnet.rybnik.pl;
	spf=pass  smtp.mailfrom=dwrobel@ertelnet.rybnik.pl;
	dmarc=pass header.from=<dwrobel@ertelnet.rybnik.pl>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1624516844;
	s=ertelnet; d=ertelnet.rybnik.pl; i=dwrobel@ertelnet.rybnik.pl;
	h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
	bh=cT9GA/fyQtuOLIs5kuLcHJ+s2B2dMFxMmWshfPTFzAY=;
	b=IACfBRlipg72iRbgOLzSoHJS6KyrbjToXgo58AbrAWSMwfoA+MF+spxS71O8sdOl
	LcNcqCY4mI7cLz/FgdGx8qCIsg/rXSn56w5HZJz06rMCO/Qaj0I1bGz1By2Fkl7Xx+U
	M22DcgyDfTcns63jMRjDbzvV4maQ0CxWXfdrClD4=
Received: from localhost.localdomain.pl (91.230.58.69 [91.230.58.69]) by mx.zohomail.com
	with SMTPS id 1624516839714850.2107691344929; Wed, 23 Jun 2021 23:40:39 -0700 (PDT)
From: "Damian Wrobel" <dwrobel@ertelnet.rybnik.pl>
To: poky@lists.yoctoproject.org
Subject: [PATCH] bitbake: Fix automatic generation of variable dependencies
Date: Thu, 24 Jun 2021 08:40:25 +0200
Message-Id: <20210624064025.102654-1-dwrobel@ertelnet.rybnik.pl>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-ZohoMailClient: External
Content-Transfer-Encoding: 8bit

Automatically generate variable dependencies also for:
    - "bb.utils.contains",
    - "base_contains"
    - "bb.utils.contains_any",
    - "bb.utils.filter".

This is to avoid situation in which some of the variables were
added automatically but not all of them like in the test example below:

RDEPENDS_${PN} += "\
    ${@bb.utils.contains(                                              \
        'BB_UTILS_CONTAINS_DROPBEAR',  '1',   'dropbear',   '', d)}    \
    ${@bb.utils.contains_any(                                          \
        'BB_UTILS_CONTAINS_ANY_EXPAT', ['1'], 'expat',      '', d)}    \
    ${@oe.utils.conditional(                                           \
        'OE_UTILS_CONDITIONAL_ZLIB',   '1',   'zlib',       '', d)}    \
    ${@bb.utils.filter('BB_UTILS_FILTER_WAYLAND_PROTOCOLS', 'xyz', d)} \

Signed-off-by: Damian Wrobel <dwrobel@ertelnet.rybnik.pl>
---
 bitbake/lib/bb/cache.py      | 2 +-
 bitbake/lib/bb/codeparser.py | 4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index 27eb271798..2fe83ef3ac 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -26,7 +26,7 @@ import re
 
 logger = logging.getLogger("BitBake.Cache")
 
-__cache_version__ = "154"
+__cache_version__ = "155"
 
 def getCacheFile(path, filename, mc, data_hash):
     mcspec = ''
diff --git a/bitbake/lib/bb/codeparser.py b/bitbake/lib/bb/codeparser.py
index 0cec452c00..e00dc44470 100644
--- a/bitbake/lib/bb/codeparser.py
+++ b/bitbake/lib/bb/codeparser.py
@@ -122,7 +122,7 @@ class CodeParserCache(MultiProcessCache):
     # so that an existing cache gets invalidated. Additionally you'll need
     # to increment __cache_version__ in cache.py in order to ensure that old
     # recipe caches don't trigger "Taskhash mismatch" errors.
-    CACHE_VERSION = 11
+    CACHE_VERSION = 12
 
     def __init__(self):
         MultiProcessCache.__init__(self)
@@ -225,10 +225,12 @@ class PythonParser():
                     if varname not in self.contains:
                         self.contains[varname] = set()
                     self.contains[varname].add(node.args[1].s)
+                    self.references.add(varname)
                 elif name in self.containsanyfuncs and isinstance(node.args[1], ast.Str):
                     if varname not in self.contains:
                         self.contains[varname] = set()
                     self.contains[varname].update(node.args[1].s.split())
+                    self.references.add(varname)
                 elif name.endswith(self.getvarflags):
                     if isinstance(node.args[1], ast.Str):
                         self.references.add('%s[%s]' % (varname, node.args[1].s))
-- 
2.31.1

