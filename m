Return-Path: <malik@boussejra.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BB0DE00C11; Thu,  9 Nov 2017 14:39:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [135.84.80.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sender-of-o52.zoho.com (sender-of-o52.zoho.com [135.84.80.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D585E00A6A
	for <poky@yoctoproject.org>; Thu,  9 Nov 2017 14:38:59 -0800 (PST)
Received: from [192.168.43.7] (111.65.60.12 [111.65.60.12]) by mx.zohomail.com
	with SMTPS id 1510266234813216.93650595503982;
	Thu, 9 Nov 2017 14:23:54 -0800 (PST)
References: <9f6bd9951aca573b49ed81dc27f98952c7f71db8.1509108775.git.malik@boussejra.com>
To: poky@yoctoproject.org
From: Malik Olivier Boussejra <malik@boussejra.com>
X-Forwarded-Message-Id: <9f6bd9951aca573b49ed81dc27f98952c7f71db8.1509108775.git.malik@boussejra.com>
Message-ID: <015332cc-96af-80f1-b524-5f2bcf4f1c53@boussejra.com>
Date: Fri, 10 Nov 2017 07:23:50 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <9f6bd9951aca573b49ed81dc27f98952c7f71db8.1509108775.git.malik@boussejra.com>
X-ZohoMailClient: External
Subject: [PATCH 1/1] python-ctypes: Add dependency to python-subprocess
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
X-List-Received-Date: Thu, 09 Nov 2017 22:39:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

The runtime dependency to subprocess was missing. This commit adds it.
You can check that the following file does indeed require `subprocess'.

     /usr/lib/python2.7/ctypes/util.py

Signed-off-by: Malik Olivier Boussejra <malik@boussejra.com>
---
  meta/recipes-devtools/python/python-2.7-manifest.inc | 2 +-
  scripts/contrib/python/generate-manifest-2.7.py      | 2 +-
  2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/python/python-2.7-manifest.inc 
b/meta/recipes-devtools/python/python-2.7-manifest.inc
index 57d4834b3a..15d784e4cd 100644
--- a/meta/recipes-devtools/python/python-2.7-manifest.inc
+++ b/meta/recipes-devtools/python/python-2.7-manifest.inc
@@ -53,7 +53,7 @@ RDEPENDS_${PN}-crypt="${PN}-core"
  FILES_${PN}-crypt="${libdir}/python2.7/hashlib.* 
${libdir}/python2.7/md5.* ${libdir}/python2.7/sha.* 
${libdir}/python2.7/lib-dynload/crypt.so 
${libdir}/python2.7/lib-dynload/_hashlib.so 
${libdir}/python2.7/lib-dynload/_sha256.so 
${libdir}/python2.7/lib-dynload/_sha512.so "
   SUMMARY_${PN}-ctypes="Python C types support"
-RDEPENDS_${PN}-ctypes="${PN}-core"
+RDEPENDS_${PN}-ctypes="${PN}-core ${PN}-subprocess"
  FILES_${PN}-ctypes="${libdir}/python2.7/ctypes 
${libdir}/python2.7/lib-dynload/_ctypes.so 
${libdir}/python2.7/lib-dynload/_ctypes_test.so "
   SUMMARY_${PN}-curses="Python curses support"
diff --git a/scripts/contrib/python/generate-manifest-2.7.py 
b/scripts/contrib/python/generate-manifest-2.7.py
index 586b329c19..0116aacee5 100755
--- a/scripts/contrib/python/generate-manifest-2.7.py
+++ b/scripts/contrib/python/generate-manifest-2.7.py
@@ -250,7 +250,7 @@ if __name__ == "__main__":
      m.addPackage( "${PN}-curses", "Python curses support", "${PN}-core",
      "curses lib-dynload/_curses.so lib-dynload/_curses_panel.so" ) # 
directory + low level module
  -    m.addPackage( "${PN}-ctypes", "Python C types support", "${PN}-core",
+    m.addPackage( "${PN}-ctypes", "Python C types support", "${PN}-core 
${PN}-subprocess",
      "ctypes lib-dynload/_ctypes.so lib-dynload/_ctypes_test.so" ) # 
directory + low level module
       m.addPackage( "${PN}-datetime", "Python calendar and time 
support", "${PN}-core ${PN}-codecs",
-- 
2.11.0



