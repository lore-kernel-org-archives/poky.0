Return-Path: <biannm@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06C60E01405
	for <poky@yoctoproject.org>; Tue,  9 Jul 2013 20:13:17 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.87,1032,1363104000"; d="scan'208";a="7843380"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 10 Jul 2013 11:10:14 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id r6A30Nic027098
	for <poky@yoctoproject.org>; Wed, 10 Jul 2013 11:00:27 +0800
Received: from [127.0.0.1] ([10.167.226.190])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2013071010584513-2818677 ;
	Wed, 10 Jul 2013 10:58:45 +0800 
Message-ID: <51DCCE4C.8040601@cn.fujitsu.com>
Date: Wed, 10 Jul 2013 11:00:28 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN;
	rv:1.9.2.28) Gecko/20120306 Lightning/1.0b2 Thunderbird/3.1.20
MIME-Version: 1.0
To: poky@yoctoproject.org
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2013/07/10 10:58:45,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2013/07/10 10:58:49,
	Serialize complete at 2013/07/10 10:58:49
Subject: [PATCH]package_rpm.bbclass: remove xx.spec before doing rpmbuild xx.src.rpm
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
X-List-Received-Date: Wed, 10 Jul 2013 03:13:23 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

If the spec file already exist, and has not been stored into pseudo's files.db,
it maybe cause rpmbuild src.rpm fail, so remove it before doing rpmbuild src.rpm.

Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>

---
 meta/classes/package_rpm.bbclass |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index c654cdb..217ddcb 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -1069,8 +1069,13 @@ python do_package_rpm () {
         return
 
     # Construct the spec file...
+    # If the spec file already exist, and has not been stored into 
+    # pseudo's files.db, it maybe cause rpmbuild src.rpm fail,
+    # so remove it before doing rpmbuild src.rpm.
     srcname    = strip_multilib(d.getVar('PN', True), d)
     outspecfile = workdir + "/" + srcname + ".spec"
+    if os.path.isfile(outspecfile):
+        os.remove(outspecfile)
     d.setVar('OUTSPECFILE', outspecfile)
     bb.build.exec_func('write_specfile', d)
 
-- 1.7.1 


