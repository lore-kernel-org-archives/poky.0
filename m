Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB1324C80FAC
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 18:44:30 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 16:44:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,290,1288594800"; d="scan'208";a="580071524"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.157])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 16:44:28 -0800
Message-Id: <cover.1291334813.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Thu, 2 Dec 2010 16:06:53 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PULL] Documentation updates
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
X-List-Received-Date: Fri, 03 Dec 2010 00:44:31 -0000

Please pull all these.  They involve the Poky Reference Manual, the Quick Start, 
a new Kernel manual, and application of some mis-spellings noted from a contributor
Cyril (the last one in this list).

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (70):
  Added a new PNG file into the tar command.
  Added a new PNG file (bsp-title.png) as the imagedata tag.
  Added a new PNG file into the tar command.
  BSP Developers Guide:  Edits to text
  BSP Guide Makefile:  HTML generation debugging edits.
  BSP guide:  Updated the book id.
  BSP Guide:  Created new file for XSL customization expansion.
  BSP Guide:  I created a new figure for the title page.
  BSP Guide:  Updated xsltproc command to pass the
    bsp-guide-customization.xsl style sheet.
  Poky Reference Manual:  Clean up of the XML tags
  Poky Reference Manual:  A couple more minor fixes.
  Poky Reference Manual: XML tag clean up and command example text
    indentation.
  Poky Reference Manual:  Cleaned up and checked all XML tags.
  Poky Reference Manual:  Added consistency to literallayout text.
  Poky Reference Manual:  Spell check performed.
  Poky Reference Manual:  Added BBLAYERS to glossary.
  Poky Reference Manual:  Added BBFILE_COLLECTIONS glossary term.
  Poky Reference Manual:  Added BBFILE_PRIORITY glossary term.
  Poky Reference Manual:  Fixed broken link in Ref Images appendix.
  Poky Reference Manual:  Clean up Makefile
  Poky Reference Manual:  Added XSL Customization layer use
  Poky Reference Manual:  Added XSL Customization layer file
  BSP Guide and BSP Chapter:  Sync'ed these two files
  BSP Guide:  Fixed tag mis-match.
  Poky Reference Manual:  Fixed list tag.
  Poky Reference Manual:  Changed source location of the bsp.xml file
  BSP Guide and BSP Chapter in Poky Reference Manual:  Changed wording
  Poky Reference Manual:  Removed the bsp.xml file.
  Poky Reference Manual:  General edits for English.
  Poky Reference Manual:  Task wording made consistent
  Poky Reference Manual:  Added a glossary definition for BBPATH.
  Poky Reference Manual:  General edits up to the "Debugging with GDB
    Remotely" section.
  Poky Reference Manual: Added INC_PR documentation.
  Poky Reference Manual:  General edits to the developing chapter.
  documentation/poky-ref-manual/development.xml:  Fixed orderedlist and
    itemizedlist spacing.
  documentation/yocto-project-qs/yocto-project-qs.xml:  Corrected
    poky-qemu command example in the 'Using Pre-Build Binaries and
    QEMU' section.
  documentation/kerenl-manual:  New directory and files for kernel
    manual.
  documentation/kernel-manual/Makefile:  fixed mis-spelling of kernel
    for files
  documentation/kernel-manual/yocto-project-kernal-manual.xml: and
    yocto-project-kernal-manual-customization.xsl removed from tree.
  documentation/kernel-manual/yocto-project-kernel-manual.xml and
    yocto-project-kernel-manual-customization.xsl:  Renamed files with
    correct spelling for kernel.
  .git/.gitignore:  Added files for the new kernel document.
  documentation/kernel-manual/yocto-project-kernel-manual.xml:  Removed
    sections not fit for 0.9 release.
  documentation/kernel-manual/style.css:  Changed h2 through h6 styles.
  documentation/kernel-manual/yocto-project-kernel-manual.xml: Added a
    new section called "BSP: Creating:
  documentation/kernel-manual/figures/kernel-title.png:  Added a PNG
    file to display in the PDF version on the title page.
  documentation/kernel-manual/Makefile: Added code to create a PDF
    version.
  documentation/kernel-manual/yocto-project-kernel-manual.xml:  removed
    the code that inserts the image.
  poky/.git/.gitignore:  added the yocto-project-kernel-manual.pdf file
  documentation/kernel-manual/kernel-manual.xml: added this file so
    that PDF could be built.
  documentation/kernel-manual/Makefile:  changed the name of the PDF
    output file to "kernel-manual.pdf"
  poky/.gitignore:  updated the lines for the kernel manual
  documentation/kernel-manual/Makefile:  changed the pdf, tgz, and html
    output files to be named "kernel-manual"
  documentation/poky-ref-manual/poky-ref-manual.xml:  Changed the
    revision date to 24 November 2010
  documentation/kernel-manual/yocto-project-kernel-manual.xml:  Removed
    this file so manual could be structured into a book with chapters.
  documentation/kernel-manual: Added these files so the book could have
    chapters.
  documentation/kernel-manual:  Modified to call new chapter structure.
  documentation/kernel-manual/kernel-concepts.xml:  Updated the text so
    that the conceptual figure showing the kernel is out.
  documentation/kernel-manual/kernel-manual.xml:  Changed the copyright
    statement to conform to sharing.
  documentation/kernel-manual/kerenel-how-to.xml:  Edits to clean up
    text.
  documentation/kernel-manual/kernel-how-to.xml:  Completed scrub to
    the text.
  documentation/kernel-manual:  Added an image to the authorgroup so a
    title would display in the HTML version of the manual.
  documentation/poky-ref-manual:  Updated the list of links to include
    a link to the Yocto Project site.
  documentation/poky-ref-manual:  Fixed to mis-spellings
  documentation/poky-ref-manual:  Fixed two typo's
  documentation/yocto-project-qs:  Added the gnome-doc-utils package to
    the Fedora required pacakge list.
  documentation/poky-ref-manual:  Updated Mailing Lists and IRC
    sections in Appendix I
  documentation/poky-ref-manual:  English scrub performed for
    consistency.
  documentation/poky-ref-manual: Changed spelling of bitbake to
    "BitBake" when used in text.
  documentation/poky-ref-manual:  General edits up the Parsing section.
  documentation/poky-ref-manual:  changes applied from a patch
    submitted by Cyril Humbert.


