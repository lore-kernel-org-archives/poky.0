Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF6044C80050
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:25 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Mar 2011 16:42:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="403176186"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by azsmga001.ch.intel.com with ESMTP; 15 Mar 2011 16:42:22 -0700
Message-Id: <fc1d7553ca601c56dd6e5c4ccc337ff37ab0f504.1300232338.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 14 Mar 2011 14:19:44 -0600
Date: Tue, 15 Mar 2011 17:43:15 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 01/13] documentation/adt-manual: New file structure for ADT Manual
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:26 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I have added a new directory to documentation named adt-manual.
This directory holds a Figures folder, and the 9 files needed
for the ADT manual.  The book consists of five chapters:
adt-intro, adt-prepare, adt-package, adt-eclipse, and adt-command.
There is also a adt-manual.xml file called by the Makefile.
There is also a style.css file.  And finally, a adt-manual-customization.xsl
file to control numbering.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/Makefile                  |   42 +
 documentation/adt-manual/adt-command.xml           |   57 ++
 documentation/adt-manual/adt-eclipse.xml           |   57 ++
 documentation/adt-manual/adt-intro.xml             |   57 ++
 .../adt-manual/adt-manual-customization.xsl        |    8 +
 documentation/adt-manual/adt-manual.xml            |   66 ++
 documentation/adt-manual/adt-package.xml           |   57 ++
 documentation/adt-manual/adt-prepare.xml           |   57 ++
 documentation/adt-manual/figures/kernel-title.png  |  Bin 0 -> 14305 bytes
 .../adt-manual/figures/yocto-project-transp.png    |  Bin 0 -> 8626 bytes
 documentation/adt-manual/style.css                 |  968 ++++++++++++++++++++
 11 files changed, 1369 insertions(+), 0 deletions(-)
 create mode 100644 documentation/adt-manual/Makefile
 create mode 100644 documentation/adt-manual/adt-command.xml
 create mode 100644 documentation/adt-manual/adt-eclipse.xml
 create mode 100644 documentation/adt-manual/adt-intro.xml
 create mode 100644 documentation/adt-manual/adt-manual-customization.xsl
 create mode 100644 documentation/adt-manual/adt-manual.xml
 create mode 100644 documentation/adt-manual/adt-package.xml
 create mode 100644 documentation/adt-manual/adt-prepare.xml
 create mode 100644 documentation/adt-manual/figures/kernel-title.png
 create mode 100755 documentation/adt-manual/figures/yocto-project-transp.png
 create mode 100644 documentation/adt-manual/style.css

diff --git a/documentation/adt-manual/Makefile b/documentation/adt-manual/Makefile
new file mode 100644
index 0000000..dcfcb92
--- /dev/null
+++ b/documentation/adt-manual/Makefile
@@ -0,0 +1,42 @@
+XSLTOPTS = --stringparam html.stylesheet style.css \
+           --stringparam  chapter.autolabel 1 \
+           --stringparam  appendix.autolabel A \
+           --stringparam  section.autolabel 1 \
+           --stringparam  section.label.includes.component.label 1 \
+         --xinclude
+
+##
+# These URI should be rewritten by your distribution's xml catalog to
+# match your localy installed XSL stylesheets.
+XSL_BASE_URI  = http://docbook.sourceforge.net/release/xsl/current
+XSL_XHTML_URI = $(XSL_BASE_URI)/xhtml/docbook.xsl
+
+all: html pdf tarball
+
+pdf:
+	../tools/poky-docbook-to-pdf kernel-manual.xml ../template
+
+##
+# These URI should be rewritten by your distribution's xml catalog to
+# match your localy installed XSL stylesheets.
+
+html:
+#       See http://www.sagehill.net/docbookxsl/HtmlOutput.html 
+
+#	xsltproc $(XSLTOPTS) -o yocto-project-qs.html $(XSL_XHTML_URI) yocto-project-qs.xml
+	xsltproc $(XSLTOPTS) -o kernel-manual.html yocto-project-kernel-manual-customization.xsl kernel-manual.xml
+
+tarball: html
+	tar -cvzf kernel-manual.tgz kernel-manual.html style.css figures/kernel-title.png figures/kernel-big-picture.png figures/kernel-architecture-overview.png
+
+validate:
+	xmllint --postvalid --xinclude --noout kernel-manual.xml
+
+OUTPUTS = kernel-manual.tgz kernel-manual.html kernel-manual.pdf
+SOURCES = *.png *.xml *.css
+
+publish:
+	scp -r $(OUTPUTS) $(SOURCES) o-hand.com:/srv/www/pokylinux.org/doc/
+
+clean:
+	rm -f $(OUTPUTS)
diff --git a/documentation/adt-manual/adt-command.xml b/documentation/adt-manual/adt-command.xml
new file mode 100644
index 0000000..05e5443
--- /dev/null
+++ b/documentation/adt-manual/adt-command.xml
@@ -0,0 +1,57 @@
+<!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
+"http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
+
+<chapter id='kernel-doc-intro'>
+
+<title>Yocto Project Kernel Architecture and Use Manual</title>
+
+<section id='book-intro'>
+    <title>Introduction</title>
+    <para>
+        The Yocto Project presents the kernel as a fully patched, history-clean git
+        repository. 
+        The git tree represents the selected features, board support,
+        and configurations extensively tested by Yocto Project. 
+        The Yocto Project kernel allows the end user to leverage community
+        best practices to seamlessly manage the development, build and debug cycles.
+    </para>
+    <para>
+        This manual describes the Yocto Project kernel by providing information
+        on its history, organization, benefits, and use.
+        The manual consists of two sections:
+        <itemizedlist>
+            <listitem><para>Concepts - Describes concepts behind the kernel.
+                You will understand how the kernel is organized and why it is organized in 
+                the way it is.  You will understand the benefits of the kernel's organization 
+                and the mechanisms used to work with the kernel and how to apply it in your 
+                design process.</para></listitem>
+            <listitem><para>Using the Kernel - Describes best practices and "how-to" information
+                that lets you put the kernel to practical use.  Some examples are "How to Build a 
+                Project Specific Tree", "How to Examine Changes in a Branch", and "Saving Kernel
+                Modifications."</para></listitem>
+        </itemizedlist>
+    </para>
+    <para>
+        For more information on the kernel, see the following links:
+        <itemizedlist>
+            <listitem><para><ulink url='http://ldn.linuxfoundation.org/book/1-a-guide-kernel-development-process'></ulink></para></listitem>
+            <listitem><para><ulink url='http://userweb.kernel.org/~akpm/stuff/tpp.txt'></ulink></para></listitem>
+            <listitem><para><ulink url='http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob_plain;f=Documentation/HOWTO;hb=HEAD'></ulink></para></listitem> 
+        </itemizedlist>
+        <para> 
+        You can find more information on Yocto Project by visiting the website at
+        <ulink url='http://www.yoctoproject.org'></ulink>.
+        </para>
+    </para>
+</section>
+
+
+
+
+
+
+
+</chapter>
+<!--
+vim: expandtab tw=80 ts=4
+-->
diff --git a/documentation/adt-manual/adt-eclipse.xml b/documentation/adt-manual/adt-eclipse.xml
new file mode 100644
index 0000000..05e5443
--- /dev/null
+++ b/documentation/adt-manual/adt-eclipse.xml
@@ -0,0 +1,57 @@
+<!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
+"http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
+
+<chapter id='kernel-doc-intro'>
+
+<title>Yocto Project Kernel Architecture and Use Manual</title>
+
+<section id='book-intro'>
+    <title>Introduction</title>
+    <para>
+        The Yocto Project presents the kernel as a fully patched, history-clean git
+        repository. 
+        The git tree represents the selected features, board support,
+        and configurations extensively tested by Yocto Project. 
+        The Yocto Project kernel allows the end user to leverage community
+        best practices to seamlessly manage the development, build and debug cycles.
+    </para>
+    <para>
+        This manual describes the Yocto Project kernel by providing information
+        on its history, organization, benefits, and use.
+        The manual consists of two sections:
+        <itemizedlist>
+            <listitem><para>Concepts - Describes concepts behind the kernel.
+                You will understand how the kernel is organized and why it is organized in 
+                the way it is.  You will understand the benefits of the kernel's organization 
+                and the mechanisms used to work with the kernel and how to apply it in your 
+                design process.</para></listitem>
+            <listitem><para>Using the Kernel - Describes best practices and "how-to" information
+                that lets you put the kernel to practical use.  Some examples are "How to Build a 
+                Project Specific Tree", "How to Examine Changes in a Branch", and "Saving Kernel
+                Modifications."</para></listitem>
+        </itemizedlist>
+    </para>
+    <para>
+        For more information on the kernel, see the following links:
+        <itemizedlist>
+            <listitem><para><ulink url='http://ldn.linuxfoundation.org/book/1-a-guide-kernel-development-process'></ulink></para></listitem>
+            <listitem><para><ulink url='http://userweb.kernel.org/~akpm/stuff/tpp.txt'></ulink></para></listitem>
+            <listitem><para><ulink url='http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob_plain;f=Documentation/HOWTO;hb=HEAD'></ulink></para></listitem> 
+        </itemizedlist>
+        <para> 
+        You can find more information on Yocto Project by visiting the website at
+        <ulink url='http://www.yoctoproject.org'></ulink>.
+        </para>
+    </para>
+</section>
+
+
+
+
+
+
+
+</chapter>
+<!--
+vim: expandtab tw=80 ts=4
+-->
diff --git a/documentation/adt-manual/adt-intro.xml b/documentation/adt-manual/adt-intro.xml
new file mode 100644
index 0000000..05e5443
--- /dev/null
+++ b/documentation/adt-manual/adt-intro.xml
@@ -0,0 +1,57 @@
+<!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
+"http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
+
+<chapter id='kernel-doc-intro'>
+
+<title>Yocto Project Kernel Architecture and Use Manual</title>
+
+<section id='book-intro'>
+    <title>Introduction</title>
+    <para>
+        The Yocto Project presents the kernel as a fully patched, history-clean git
+        repository. 
+        The git tree represents the selected features, board support,
+        and configurations extensively tested by Yocto Project. 
+        The Yocto Project kernel allows the end user to leverage community
+        best practices to seamlessly manage the development, build and debug cycles.
+    </para>
+    <para>
+        This manual describes the Yocto Project kernel by providing information
+        on its history, organization, benefits, and use.
+        The manual consists of two sections:
+        <itemizedlist>
+            <listitem><para>Concepts - Describes concepts behind the kernel.
+                You will understand how the kernel is organized and why it is organized in 
+                the way it is.  You will understand the benefits of the kernel's organization 
+                and the mechanisms used to work with the kernel and how to apply it in your 
+                design process.</para></listitem>
+            <listitem><para>Using the Kernel - Describes best practices and "how-to" information
+                that lets you put the kernel to practical use.  Some examples are "How to Build a 
+                Project Specific Tree", "How to Examine Changes in a Branch", and "Saving Kernel
+                Modifications."</para></listitem>
+        </itemizedlist>
+    </para>
+    <para>
+        For more information on the kernel, see the following links:
+        <itemizedlist>
+            <listitem><para><ulink url='http://ldn.linuxfoundation.org/book/1-a-guide-kernel-development-process'></ulink></para></listitem>
+            <listitem><para><ulink url='http://userweb.kernel.org/~akpm/stuff/tpp.txt'></ulink></para></listitem>
+            <listitem><para><ulink url='http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob_plain;f=Documentation/HOWTO;hb=HEAD'></ulink></para></listitem> 
+        </itemizedlist>
+        <para> 
+        You can find more information on Yocto Project by visiting the website at
+        <ulink url='http://www.yoctoproject.org'></ulink>.
+        </para>
+    </para>
+</section>
+
+
+
+
+
+
+
+</chapter>
+<!--
+vim: expandtab tw=80 ts=4
+-->
diff --git a/documentation/adt-manual/adt-manual-customization.xsl b/documentation/adt-manual/adt-manual-customization.xsl
new file mode 100644
index 0000000..8eb6905
--- /dev/null
+++ b/documentation/adt-manual/adt-manual-customization.xsl
@@ -0,0 +1,8 @@
+<?xml version='1.0'?>
+<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
+  
+  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/docbook.xsl" />
+
+<!--  <xsl:param name="generate.toc" select="'article nop'"></xsl:param>  -->
+
+</xsl:stylesheet>
diff --git a/documentation/adt-manual/adt-manual.xml b/documentation/adt-manual/adt-manual.xml
new file mode 100644
index 0000000..e9a9ed3
--- /dev/null
+++ b/documentation/adt-manual/adt-manual.xml
@@ -0,0 +1,66 @@
+<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
+"http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
+
+<book id='kernel-manual' lang='en' 
+      xmlns:xi="http://www.w3.org/2003/XInclude"
+      xmlns="http://docbook.org/ns/docbook"
+      >
+    <bookinfo>
+
+        <mediaobject>
+            <imageobject>
+                <imagedata fileref='figures/kernel-title.png' 
+                    format='SVG' 
+                    align='left' scalefit='1' width='100%'/>
+            </imageobject>    
+        </mediaobject>
+
+        <title></title> 
+
+        <authorgroup>
+            <author>
+                <firstname>Bruce</firstname> <surname>Ashfield</surname>
+                <affiliation>
+                    <orgname>Wind River Corporation</orgname>
+                </affiliation>
+                <email>bruce.ashfield@windriver.com</email>
+            </author>
+        </authorgroup>
+
+        <revhistory>
+            <revision>
+                <revnumber>0.9</revnumber>
+                <date>24 November 2010</date>
+                <revremark>Beta Draft</revremark>
+            </revision>
+        </revhistory>
+
+    <copyright>
+      <year>2010-2011</year>
+      <holder>Linux Foundation</holder>
+    </copyright>
+
+    <legalnotice>
+      <para>
+        Permission is granted to copy, distribute and/or modify this document under 
+        the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
+      </para>
+    </legalnotice>
+
+    </bookinfo>
+
+    <xi:include href="kernel-doc-intro.xml"/>
+
+    <xi:include href="kernel-concepts.xml"/>
+
+    <xi:include href="kernel-how-to.xml"/>
+
+<!--    <index id='index'>
+      <title>Index</title>
+    </index>
+-->
+
+</book>
+<!-- 
+vim: expandtab tw=80 ts=4 
+-->
diff --git a/documentation/adt-manual/adt-package.xml b/documentation/adt-manual/adt-package.xml
new file mode 100644
index 0000000..05e5443
--- /dev/null
+++ b/documentation/adt-manual/adt-package.xml
@@ -0,0 +1,57 @@
+<!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
+"http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
+
+<chapter id='kernel-doc-intro'>
+
+<title>Yocto Project Kernel Architecture and Use Manual</title>
+
+<section id='book-intro'>
+    <title>Introduction</title>
+    <para>
+        The Yocto Project presents the kernel as a fully patched, history-clean git
+        repository. 
+        The git tree represents the selected features, board support,
+        and configurations extensively tested by Yocto Project. 
+        The Yocto Project kernel allows the end user to leverage community
+        best practices to seamlessly manage the development, build and debug cycles.
+    </para>
+    <para>
+        This manual describes the Yocto Project kernel by providing information
+        on its history, organization, benefits, and use.
+        The manual consists of two sections:
+        <itemizedlist>
+            <listitem><para>Concepts - Describes concepts behind the kernel.
+                You will understand how the kernel is organized and why it is organized in 
+                the way it is.  You will understand the benefits of the kernel's organization 
+                and the mechanisms used to work with the kernel and how to apply it in your 
+                design process.</para></listitem>
+            <listitem><para>Using the Kernel - Describes best practices and "how-to" information
+                that lets you put the kernel to practical use.  Some examples are "How to Build a 
+                Project Specific Tree", "How to Examine Changes in a Branch", and "Saving Kernel
+                Modifications."</para></listitem>
+        </itemizedlist>
+    </para>
+    <para>
+        For more information on the kernel, see the following links:
+        <itemizedlist>
+            <listitem><para><ulink url='http://ldn.linuxfoundation.org/book/1-a-guide-kernel-development-process'></ulink></para></listitem>
+            <listitem><para><ulink url='http://userweb.kernel.org/~akpm/stuff/tpp.txt'></ulink></para></listitem>
+            <listitem><para><ulink url='http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob_plain;f=Documentation/HOWTO;hb=HEAD'></ulink></para></listitem> 
+        </itemizedlist>
+        <para> 
+        You can find more information on Yocto Project by visiting the website at
+        <ulink url='http://www.yoctoproject.org'></ulink>.
+        </para>
+    </para>
+</section>
+
+
+
+
+
+
+
+</chapter>
+<!--
+vim: expandtab tw=80 ts=4
+-->
diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
new file mode 100644
index 0000000..05e5443
--- /dev/null
+++ b/documentation/adt-manual/adt-prepare.xml
@@ -0,0 +1,57 @@
+<!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
+"http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
+
+<chapter id='kernel-doc-intro'>
+
+<title>Yocto Project Kernel Architecture and Use Manual</title>
+
+<section id='book-intro'>
+    <title>Introduction</title>
+    <para>
+        The Yocto Project presents the kernel as a fully patched, history-clean git
+        repository. 
+        The git tree represents the selected features, board support,
+        and configurations extensively tested by Yocto Project. 
+        The Yocto Project kernel allows the end user to leverage community
+        best practices to seamlessly manage the development, build and debug cycles.
+    </para>
+    <para>
+        This manual describes the Yocto Project kernel by providing information
+        on its history, organization, benefits, and use.
+        The manual consists of two sections:
+        <itemizedlist>
+            <listitem><para>Concepts - Describes concepts behind the kernel.
+                You will understand how the kernel is organized and why it is organized in 
+                the way it is.  You will understand the benefits of the kernel's organization 
+                and the mechanisms used to work with the kernel and how to apply it in your 
+                design process.</para></listitem>
+            <listitem><para>Using the Kernel - Describes best practices and "how-to" information
+                that lets you put the kernel to practical use.  Some examples are "How to Build a 
+                Project Specific Tree", "How to Examine Changes in a Branch", and "Saving Kernel
+                Modifications."</para></listitem>
+        </itemizedlist>
+    </para>
+    <para>
+        For more information on the kernel, see the following links:
+        <itemizedlist>
+            <listitem><para><ulink url='http://ldn.linuxfoundation.org/book/1-a-guide-kernel-development-process'></ulink></para></listitem>
+            <listitem><para><ulink url='http://userweb.kernel.org/~akpm/stuff/tpp.txt'></ulink></para></listitem>
+            <listitem><para><ulink url='http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob_plain;f=Documentation/HOWTO;hb=HEAD'></ulink></para></listitem> 
+        </itemizedlist>
+        <para> 
+        You can find more information on Yocto Project by visiting the website at
+        <ulink url='http://www.yoctoproject.org'></ulink>.
+        </para>
+    </para>
+</section>
+
+
+
+
+
+
+
+</chapter>
+<!--
+vim: expandtab tw=80 ts=4
+-->
diff --git a/documentation/adt-manual/figures/kernel-title.png b/documentation/adt-manual/figures/kernel-title.png
new file mode 100644
index 0000000000000000000000000000000000000000..965264ccc5f6d7fa3cf85b9c1edca78e136ceaf1
GIT binary patch
literal 14305
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

literal 0
HcmV?d00001

diff --git a/documentation/adt-manual/figures/yocto-project-transp.png b/documentation/adt-manual/figures/yocto-project-transp.png
new file mode 100755
index 0000000000000000000000000000000000000000..31d2b147fdb5e23f84d64652faf9528d83be7d8d
GIT binary patch
literal 8626
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

literal 0
HcmV?d00001

diff --git a/documentation/adt-manual/style.css b/documentation/adt-manual/style.css
new file mode 100644
index 0000000..33a01d1
--- /dev/null
+++ b/documentation/adt-manual/style.css
@@ -0,0 +1,968 @@
+/* 
+   Generic XHTML / DocBook XHTML CSS Stylesheet.
+   
+   Browser wrangling and typographic design by
+      Oyvind Kolas / pippin@gimp.org
+
+   Customised for Poky by
+      Matthew Allum / mallum@o-hand.com
+
+   Thanks to:
+     Liam R. E. Quin
+     William Skaggs
+     Jakub Steiner
+
+   Structure
+   ---------
+
+   The stylesheet is divided into the following sections:
+
+       Positioning
+          Margins, paddings, width, font-size, clearing.
+       Decorations
+          Borders, style
+       Colors
+          Colors
+       Graphics
+          Graphical backgrounds
+       Nasty IE tweaks
+          Workarounds needed to make it work in internet explorer,
+          currently makes the stylesheet non validating, but up until
+          this point it is validating.
+       Mozilla extensions
+          Transparency for footer
+	  Rounded corners on boxes
+
+*/
+
+
+  /*************** /
+ /  Positioning   /
+/ ***************/
+
+body {
+  font-family: Verdana, Sans, sans-serif;
+ 
+  min-width: 640px;
+  width: 80%;
+  margin:  0em auto;
+  padding: 2em 5em 5em 5em;
+  color: #333;
+}
+
+.reviewer {
+  color: red;
+}
+
+h1,h2,h3,h4,h5,h6,h7 {
+  font-family: Arial, Sans;
+  color: #00557D;
+  clear: both;
+}
+
+h1 {
+  font-size: 2em;
+  text-align: left;
+  padding: 0em 0em 0em 0em;
+  margin: 2em 0em 0em 0em;
+}
+
+h2.subtitle {
+  margin: 0.10em 0em 3.0em 0em;
+  padding: 0em 0em 0em 0em;
+  font-size: 1.8em;
+  padding-left: 20%;
+  font-weight: normal;
+  font-style: italic;
+}
+
+h2 {
+  margin: 2em 0em 0.66em 0em;
+  padding: 0.5em 0em 0em 0em;
+  font-size: 1.5em;
+  font-weight: bold;
+}
+
+h3.subtitle {
+  margin: 0em 0em 1em 0em;
+  padding: 0em 0em 0em 0em;
+  font-size: 142.14%;
+  text-align: right;
+}
+
+h3 {
+  margin: 1em 0em 0.5em 0em;
+  padding: 1em 0em 0em 0em;
+  font-size: 140%;
+  font-weight: bold;
+}
+
+h4 {
+  margin: 1em 0em 0.5em 0em;
+  padding: 1em 0em 0em 0em;
+  font-size: 120%;
+  font-weight: bold;
+}
+
+h5 {
+  margin: 1em 0em 0.5em 0em;
+  padding: 1em 0em 0em 0em;
+  font-size: 110%;
+  font-weight: bold;
+}
+
+h6 {
+  margin: 1em 0em 0em 0em;
+  padding: 1em 0em 0em 0em;
+  font-size: 80%;
+  font-weight: bold;
+}
+
+.authorgroup {
+  background-color: transparent;
+  background-repeat: no-repeat;
+  padding-top: 256px;
+  background-image: url("figures/kernel-title.png");
+  background-position: left top;
+  margin-top: -256px;
+  padding-right: 50px;
+  margin-left: 0px;
+  text-align: right;
+  width: 740px;
+}
+
+h3.author {
+  margin: 0em 0me 0em 0em;
+  padding: 0em 0em 0em 0em;
+  font-weight: normal;
+  font-size: 100%;
+  color: #333;
+  clear: both;
+}
+
+.author tt.email {
+  font-size: 66%;
+}
+
+.titlepage hr {
+  width: 0em;
+  clear: both;
+}
+
+.revhistory {
+  padding-top: 2em;
+  clear: both;
+}
+
+.toc,
+.list-of-tables,
+.list-of-examples,
+.list-of-figures {
+  padding: 1.33em 0em 2.5em 0em;
+  color: #00557D;
+}
+
+.toc p,
+.list-of-tables p,
+.list-of-figures p,
+.list-of-examples p {
+  padding: 0em 0em 0em 0em;
+  padding: 0em 0em 0.3em;
+  margin: 1.5em 0em 0em 0em;
+}
+
+.toc p b,
+.list-of-tables p b,
+.list-of-figures p b,
+.list-of-examples p b{
+  font-size: 100.0%;
+  font-weight: bold;
+}
+
+.toc dl,
+.list-of-tables dl,
+.list-of-figures dl,
+.list-of-examples dl {
+  margin: 0em 0em 0.5em 0em;
+  padding: 0em 0em 0em 0em;
+}
+
+.toc dt {
+  margin: 0em 0em 0em 0em;
+  padding: 0em 0em 0em 0em;
+}
+
+.toc dd {
+  margin: 0em 0em 0em 2.6em;
+  padding: 0em 0em 0em 0em;
+}
+
+div.glossary dl,
+div.variablelist dl {
+}
+
+.glossary dl dt,
+.variablelist dl dt,
+.variablelist dl dt span.term {
+  font-weight: normal;
+  width: 20em;
+  text-align: right;
+}
+
+.variablelist dl dt {
+  margin-top: 0.5em;
+}
+
+.glossary dl dd,
+.variablelist dl dd {
+  margin-top: -1em;
+  margin-left: 25.5em;
+}
+
+.glossary dd p,
+.variablelist dd p {
+  margin-top: 0em;
+  margin-bottom: 1em;
+}
+
+
+div.calloutlist table td {
+  padding: 0em 0em 0em 0em;
+  margin: 0em 0em 0em 0em;
+}
+
+div.calloutlist table td p {
+  margin-top: 0em;
+  margin-bottom: 1em;
+}
+
+div p.copyright {
+  text-align: left;
+}
+
+div.legalnotice p.legalnotice-title {
+  margin-bottom: 0em;
+}
+
+p {
+  line-height: 1.5em;
+  margin-top: 0em;
+  
+}
+
+dl {
+  padding-top: 0em;
+}
+
+hr {
+  border: solid 1px;
+}
+
+
+.mediaobject,
+.mediaobjectco {
+  text-align: center;
+}
+
+img {
+  border: none;
+}
+
+ul {
+  padding: 0em 0em 0em 1.5em;
+}
+
+ul li {
+  padding: 0em 0em 0em 0em;
+}
+
+ul li p {
+  text-align: left;
+}
+
+table {
+  width :100%;
+}
+
+th {
+  padding: 0.25em;
+  text-align: left;
+  font-weight: normal;
+  vertical-align: top;
+}
+
+td {
+  padding: 0.25em;
+  vertical-align: top;
+}
+
+p a[id] {
+  margin: 0px;
+  padding: 0px;
+  display: inline;
+  background-image: none;
+} 
+
+a {
+  text-decoration: underline;
+  color: #444;
+}
+
+pre {
+    overflow: auto;
+}
+
+a:hover {
+  text-decoration: underline;
+  /*font-weight: bold;*/
+}
+
+
+div.informalfigure,
+div.informalexample,
+div.informaltable,
+div.figure,
+div.table,
+div.example {
+  margin: 1em 0em;
+  padding: 1em;
+  page-break-inside: avoid;
+}
+
+
+div.informalfigure p.title b,
+div.informalexample p.title b,
+div.informaltable p.title b,
+div.figure p.title b,
+div.example p.title b,
+div.table p.title b{
+    padding-top: 0em;
+    margin-top: 0em;
+    font-size: 100%;
+    font-weight: normal;
+}
+
+.mediaobject .caption, 
+.mediaobject .caption p  {
+  text-align: center;
+  font-size: 80%;  
+  padding-top: 0.5em;
+  padding-bottom: 0.5em;
+}
+
+.epigraph {
+  padding-left: 55%;
+  margin-bottom: 1em;
+}
+
+.epigraph p {
+  text-align: left;
+}
+
+.epigraph .quote {
+  font-style: italic;
+}
+.epigraph .attribution {
+  font-style: normal;
+  text-align: right;
+}
+
+span.application {
+  font-style: italic;
+}
+
+.programlisting {
+  font-family: monospace;
+  font-size: 80%;
+  white-space: pre;
+  margin: 1.33em 0em;
+  padding: 1.33em;
+}
+
+.tip,
+.warning,
+.caution,
+.note {
+  margin-top: 1em;
+  margin-bottom: 1em;
+
+}
+
+/* force full width of table within div */
+.tip table,
+.warning table,
+.caution table,
+.note table {
+  border: none;
+  width: 100%;
+}
+
+
+.tip table th,
+.warning table th,
+.caution table th,
+.note table th {
+  padding: 0.8em 0.0em 0.0em 0.0em;
+  margin : 0em 0em 0em 0em;
+}
+
+.tip p,
+.warning p,
+.caution p,
+.note p {
+  margin-top: 0.5em;
+  margin-bottom: 0.5em;
+  padding-right: 1em;
+  text-align: left;
+}
+
+.acronym {
+  text-transform: uppercase;
+}
+
+b.keycap,
+.keycap {
+  padding: 0.09em 0.3em;
+  margin: 0em;
+}
+
+.itemizedlist li {
+  clear: none;
+}
+
+.filename {
+  font-size: medium;
+  font-family: Courier, monospace;
+}
+
+
+div.navheader, div.heading{
+  position: absolute;
+  left: 0em;
+  top: 0em;
+  width: 100%;
+  background-color: #cdf;
+  width: 100%;
+}
+
+div.navfooter, div.footing{
+  position: fixed;
+  left: 0em;
+  bottom: 0em;
+  background-color: #eee;
+  width: 100%;
+}
+
+
+div.navheader td,
+div.navfooter td {
+  font-size: 66%;
+}
+
+div.navheader table th {
+  /*font-family: Georgia, Times, serif;*/
+  /*font-size: x-large;*/
+  font-size: 80%;
+}
+
+div.navheader table {
+  border-left: 0em;
+  border-right: 0em;
+  border-top: 0em;
+  width: 100%;
+}
+
+div.navfooter table {
+  border-left: 0em;
+  border-right: 0em;
+  border-bottom: 0em;
+  width: 100%;
+}
+
+div.navheader table td a,
+div.navfooter table td a {
+  color: #777;
+  text-decoration: none;
+}
+
+/* normal text in the footer */
+div.navfooter table td {
+  color: black;
+}
+
+div.navheader table td a:visited,
+div.navfooter table td a:visited {
+  color: #444;
+}
+
+
+/* links in header and footer */
+div.navheader table td a:hover,
+div.navfooter table td a:hover {
+  text-decoration: underline;
+  background-color: transparent;
+  color: #33a;
+}
+
+div.navheader hr,
+div.navfooter hr {
+  display: none;
+}
+
+
+.qandaset tr.question td p {
+  margin: 0em 0em 1em 0em;
+  padding: 0em 0em 0em 0em;
+}
+
+.qandaset tr.answer td p {
+  margin: 0em 0em 1em 0em;
+  padding: 0em 0em 0em 0em;
+}
+.answer td {
+  padding-bottom: 1.5em;
+}
+
+.emphasis {
+  font-weight: bold;
+}
+
+
+  /************* /
+ / decorations  /
+/ *************/
+
+.titlepage {
+}
+
+.part .title {
+}
+
+.subtitle {
+    border: none;
+}
+
+/*
+h1 {
+  border: none;
+}
+
+h2 {
+  border-top: solid 0.2em;
+  border-bottom: solid 0.06em;
+}
+
+h3 {
+  border-top: 0em;
+  border-bottom: solid 0.06em;
+}
+
+h4 {
+  border: 0em;
+  border-bottom: solid 0.06em;
+}
+
+h5 {
+  border: 0em;
+}
+*/
+
+.programlisting {
+  border: solid 1px;
+}
+
+div.figure,
+div.table,
+div.informalfigure,
+div.informaltable,
+div.informalexample,
+div.example {
+  border: 1px solid;
+}
+
+
+
+.tip,
+.warning,
+.caution,
+.note {
+  border: 1px solid;
+}
+
+.tip table th,
+.warning table th,
+.caution table th,
+.note table th {
+  border-bottom: 1px solid;
+}
+
+.question td {
+  border-top: 1px solid black;
+}
+
+.answer {
+}
+
+
+b.keycap,
+.keycap {
+  border: 1px solid;
+}
+  
+
+div.navheader, div.heading{
+  border-bottom: 1px solid;
+}
+
+
+div.navfooter, div.footing{
+  border-top: 1px solid;
+}
+
+  /********* /
+ /  colors  /
+/ *********/
+
+body {
+  color: #333;
+  background: white;
+}
+
+a {
+  background: transparent;
+}
+
+a:hover {
+  background-color: #dedede;
+}
+
+
+h1,
+h2,
+h3,
+h4,
+h5,
+h6,
+h7,
+h8 {
+  background-color: transparent;
+}
+
+hr {
+  border-color: #aaa;
+}
+
+
+.tip, .warning, .caution, .note {
+  border-color: #aaa;
+}
+
+
+.tip table th,
+.warning table th,
+.caution table th,
+.note table th {
+  border-bottom-color: #aaa;
+}
+
+
+.warning {
+  background-color: #fea;
+}
+
+.caution {
+  background-color: #fea;
+}
+
+.tip {
+  background-color: #eff;
+}
+
+.note {
+  background-color: #dfc;
+}
+
+.glossary dl dt, 
+.variablelist dl dt,
+.variablelist dl dt span.term {
+  color: #044;
+}
+
+div.figure,
+div.table,
+div.example,
+div.informalfigure,
+div.informaltable,
+div.informalexample {
+  border-color: #aaa;
+}
+
+pre.programlisting {
+  color: black;
+  background-color: #fff;
+  border-color: #aaa;
+  border-width: 2px;
+}
+
+.guimenu,
+.guilabel,
+.guimenuitem {
+  background-color: #eee;
+}
+
+
+b.keycap,
+.keycap {
+  background-color: #eee;
+  border-color: #999;
+}
+
+
+div.navheader {
+  border-color: black;
+}
+
+
+div.navfooter {
+  border-color: black;
+}
+
+
+  /*********** /
+ /  graphics  /
+/ ***********/
+
+/*
+body {
+  background-image: url("images/body_bg.jpg");
+  background-attachment: fixed;
+}
+
+.navheader,
+.note,
+.tip {
+  background-image: url("images/note_bg.jpg");
+  background-attachment: fixed;
+}
+
+.warning,
+.caution {
+  background-image: url("images/warning_bg.jpg");
+  background-attachment: fixed;
+}
+
+.figure,
+.informalfigure,
+.example,
+.informalexample,
+.table,
+.informaltable {
+  background-image: url("images/figure_bg.jpg");
+  background-attachment: fixed;
+}
+
+*/
+h1,
+h2,
+h3,
+h4,
+h5,
+h6,
+h7{
+}
+
+/*
+Example of how to stick an image as part of the title.
+
+div.article .titlepage .title
+{
+  background-image: url("figures/white-on-black.png");
+  background-position: center;
+  background-repeat: repeat-x;
+}
+*/
+
+div.preface .titlepage .title, 
+div.colophon .title, 
+div.chapter .titlepage .title,
+div.article .titlepage .title 
+{
+}
+
+div.section div.section .titlepage .title,
+div.sect2 .titlepage .title {
+    background: none;
+}
+
+
+h1.title {
+  background-color: transparent;
+  background-image: url("figures/yocto-project-bw.png");
+  background-repeat: no-repeat;
+  height: 256px;
+  text-indent: -9000px;
+  overflow:hidden;
+}
+
+h2.subtitle {
+  background-color: transparent;
+  text-indent: -9000px;
+  overflow:hidden;
+  width: 0px;
+  display: none;
+}
+
+  /*************************************** /
+ /  pippin.gimp.org specific alterations  /
+/ ***************************************/
+
+/*
+div.heading, div.navheader {
+  color: #777;
+  font-size: 80%;
+  padding: 0;
+  margin: 0;
+  text-align: left;
+  position: absolute;
+  top: 0px;
+  left: 0px;
+  width: 100%;
+  height: 50px;
+  background: url('/gfx/heading_bg.png') transparent;
+  background-repeat: repeat-x;
+  background-attachment: fixed;
+  border: none;
+}
+
+div.heading a {
+  color: #444;
+}
+
+div.footing, div.navfooter {
+  border: none;
+  color: #ddd;
+  font-size: 80%;
+  text-align:right;
+
+  width: 100%;
+  padding-top: 10px;
+  position: absolute;
+  bottom: 0px;
+  left: 0px;
+
+  background: url('/gfx/footing_bg.png') transparent;
+}
+*/
+
+
+
+  /****************** /
+ /  nasty ie tweaks  /
+/ ******************/
+
+/*
+div.heading, div.navheader {
+  width:expression(document.body.clientWidth + "px");
+}
+
+div.footing, div.navfooter {
+  width:expression(document.body.clientWidth + "px");
+  margin-left:expression("-5em");
+}
+body {
+  padding:expression("4em 5em 0em 5em");
+}
+*/
+
+  /**************************************** /
+ / mozilla vendor specific css extensions  /
+/ ****************************************/
+/*
+div.navfooter, div.footing{
+  -moz-opacity: 0.8em;
+}
+
+div.figure,
+div.table,
+div.informalfigure,
+div.informaltable,
+div.informalexample,
+div.example,
+.tip,
+.warning,
+.caution,
+.note {
+  -moz-border-radius: 0.5em;
+}
+
+b.keycap,
+.keycap {
+  -moz-border-radius: 0.3em;
+}
+*/
+
+table tr td table tr td {
+  display: none;
+}
+
+
+hr {
+  display: none;
+}
+
+table {
+  border: 0em;
+}
+
+ .photo {
+  float: right;
+  margin-left:   1.5em;
+  margin-bottom: 1.5em;
+  margin-top: 0em;
+  max-width:      17em;
+  border:     1px solid gray;
+  padding:    3px;
+  background: white;
+}
+ .seperator {
+   padding-top: 2em;
+   clear: both;
+  }
+
+  #validators {
+      margin-top: 5em;
+      text-align: right;
+      color: #777;
+  }
+  @media print {
+      body {
+          font-size: 8pt;
+      }
+      .noprint {
+          display: none;
+      }
+  }
+
+
+.tip,
+.note {
+   background: #666666;
+   color: #fff;   
+   padding: 20px;
+   margin: 20px;
+}
+
+.tip h3,
+.note h3 {
+   padding: 0em;
+   margin: 0em;
+   font-size: 2em;
+   font-weight: bold;
+   color: #fff;   
+}
+
+.tip a,
+.note a {
+   color: #fff;   
+   text-decoration: underline;
+}
-- 
1.7.1


