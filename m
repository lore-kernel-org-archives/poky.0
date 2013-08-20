Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D252EE015E2
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2013 01:40:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="365374987"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2013 01:40:27 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 159186A4007;
	Tue, 20 Aug 2013 01:40:24 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:02 +0200
Message-Id: <c56c79fd3599f1f13e7e0e49f3cf47d7f224131b.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 020/186] ref-manual: New section on building buildtools tarball
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:57 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Fixes YOCTO #4753

This is the main change to address this bug.  It is a new section
that describes how the user can get a buildtools tarball if their
system does not meet the proper Git, tar, and Python versioning.

(From yocto-docs rev: 0493a55c85f050ba29f605ab727e557849242bae)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/ref-manual/introduction.xml |   72 +++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/documentation/ref-manual/introduction.xml b/documentation/ref-manual/introduction.xml
index 69b7422..566fa5a 100644
--- a/documentation/ref-manual/introduction.xml
+++ b/documentation/ref-manual/introduction.xml
@@ -290,6 +290,78 @@
             </para>
         </section>
     </section>
+
+    <section id='required-git-tar-and-python-versions'>
+        <title>Required Git, tar, and Python Versions</title>
+
+        <para>
+            In order to use the build system, your host development system
+            must meet the following version requirements for Git, tar, and
+            Python:
+            <itemizedlist>
+                <listitem><para>Git 1.7.5 or greater</para></listitem>
+                <listitem><para>tar 1.24 or greater</para></listitem>
+                <listitem><para>Python 2.7.3 or greater</para></listitem>
+            </itemizedlist>
+        </para>
+
+        <para>
+            If your host development system does not meet all these requirements,
+            you can resolve this by either downloading a pre-built tarball
+            containing these tools, or building such a tarball on another
+            system.
+            Regardless of the method, once you have the tarball you simply
+            install it somewhere on you system, such as a directory in your
+            home directory, and then source the envirnoment script provided,
+            which adds the tools into <filename>PATH</filename>.
+            Doing so gives you working versions of Git, tar, Python and
+            <filename>chrpath</filename>.
+        </para>
+
+        <para>
+            If downloading a pre-built tarball, locate the
+            <filename>*.sh</filename> at [NEED A PATH HERE from Beth].
+        </para>
+
+        <para>
+            If building your own tarball, do so using this command:
+            <literallayout class='monospaced'>
+     $ bitbake buildtools-tarball
+            </literallayout>
+            <note>
+                The <link linkend='var-SDKMACHINE'><filename>SDKMACHINE</filename></link>
+                variable determines whether you build tools for a 32-bit
+                or 64-bit system.
+            </note>
+            Once the build completes, you can find the file that installs the
+            the tools in <filename>tmp/deploy/sdk</filename> of the
+            <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>.
+            The file used to install the tarball has the string "buildtools"
+            in the name.
+        </para>
+
+        <para>
+            After you have either built the tarball or downloaded it, you need
+            to install it.
+            Install the tools by executing the <filename>*.sh</filename> file.
+            During execution, a prompt appears that allows you to choose the
+            installation directory.
+            For example, you could choose the following:
+            <literallayout class='monospaced'>
+     /home/your-username/sdk
+            </literallayout>
+        </para>
+
+        <para>
+            The final step before you can actually use the tools is to source
+            the tools environment with a command like the following:
+            <literallayout class='monospaced'>
+     $ source /home/your-username/sdk/environment-setup-i586-poky-linux
+            </literallayout>
+            Of course, you need to supply your installation directory and be
+            sure to use the right file (i.e. i585 or x86-64).
+        </para>
+    </section>
 </section>
 
 <section id='intro-getit'>
-- 
1.7.9.5


