Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B1E14C80889
	for <poky@lists.pokylinux.org>; Wed, 16 Mar 2011 11:14:35 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2GGEQ3H027847
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 16 Mar 2011 09:14:26 -0700 (PDT)
Received: from localhost.localdomain (172.25.34.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 16 Mar 2011 09:14:26 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@lists.pokylinux.org>, <openembedded-core@lists.openembedded.org>
Date: Wed, 16 Mar 2011 11:15:21 -0500
Message-ID: <2e2980aae580fa0a143e9450596b64c390bbc236.1300291424.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1300291424.git.mark.hatle@windriver.com>
References: <cover.1300291424.git.mark.hatle@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [172.25.34.61]
Subject: [PATCH 1/6] package.bbclass: Fix missing debug src files
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
X-List-Received-Date: Wed, 16 Mar 2011 16:14:35 -0000
Content-Type: text/plain

The previous change used egrep instead of fgrep.  We need to use fgrep because
there are expression like syntaxes in some file names, we need exact matches.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/package.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index a7a5894..ac30cbe 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -233,9 +233,10 @@ def splitfile2(debugsrcdir, d):
        processdebugsrc =  "LC_ALL=C ; sort -z -u '%s' | egrep -v -z '(<internal>|<built-in>)$' | "
        # We need to ignore files that are not actually ours
        # we do this by only paying attention to items from this package
-       processdebugsrc += "egrep -z '%s' | "
+       processdebugsrc += "fgrep -z '%s' | "
        processdebugsrc += "(cd '%s' ; cpio -pd0mL '%s%s' 2>/dev/null)"
 
+       bb.note(processdebugsrc % (sourcefile, workbasedir, workparentdir, dvar, debugsrcdir))
        os.system(processdebugsrc % (sourcefile, workbasedir, workparentdir, dvar, debugsrcdir))
 
        # The copy by cpio may have resulted in some empty directories!  Remove these
-- 
1.7.3.4


