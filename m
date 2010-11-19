Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B9104C80BD4
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 22:45:21 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Nov 2010 20:45:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,221,1288594800"; d="scan'208";a="678997487"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by orsmga001.jf.intel.com with ESMTP; 18 Nov 2010 20:45:13 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PJIlt-00087u-Ua
	for poky@yoctoproject.org; Fri, 19 Nov 2010 12:40:25 +0800
Date: Fri, 19 Nov 2010 12:40:25 +0800
From: Qing He <qing.he@intel.com>
To: poky@yoctoproject.org
Message-ID: <20101119044025.GB31096@qhe2-db>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: [PATCH] fix a typo in usermanual on lazy default
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
X-List-Received-Date: Fri, 19 Nov 2010 04:45:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

"??= ... is a lazy version of ??=", the second should be ?=

Signed-off-by: Qing He <qing.he@intel.com>

---
diff --git a/bitbake/doc/manual/usermanual.xml b/bitbake/doc/manual/usermanual.xml
index 748ac31..2b7a0b5 100644
--- a/bitbake/doc/manual/usermanual.xml
+++ b/bitbake/doc/manual/usermanual.xml
@@ -97,7 +97,7 @@ share common metadata between many packages.</para></listitem>
                 <title>Setting a default value (??=)</title>
                 <para><screen><varname>A</varname> ??= "somevalue"</screen></para>
                 <para><screen><varname>A</varname> ??= "someothervalue"</screen></para>
-                <para>If <varname>A</varname> is set before the above, it will retain that value.  If <varname>A</varname> is unset prior to the above, <varname>A</varname> will be set to <literal>someothervalue</literal>.  This is a lazy version of ??=, in that the assignment does not occur until the end of the parsing process, so that the last, rather than the first, ??= assignment to a given variable will be used.</para>
+                <para>If <varname>A</varname> is set before the above, it will retain that value.  If <varname>A</varname> is unset prior to the above, <varname>A</varname> will be set to <literal>someothervalue</literal>.  This is a lazy version of ?=, in that the assignment does not occur until the end of the parsing process, so that the last, rather than the first, ??= assignment to a given variable will be used.</para>
             </section>
             <section>
                 <title>Immediate variable expansion (:=)</title>

