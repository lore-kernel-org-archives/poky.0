Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9130A4C80FA4
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 17:49:11 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Dec 2010 15:49:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,322,1288594800"; d="scan'208";a="685673214"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.145])
	by orsmga001.jf.intel.com with ESMTP; 09 Dec 2010 15:49:11 -0800
Message-Id: <cover.1291937832.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Thu, 9 Dec 2010 15:37:12 -0800
To: poky@yoctoproject.org,sgw@linux.intel.com,dvhart@linux.intel.com
Subject: [PULL V2] Documentation Updates
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
X-List-Received-Date: Thu, 09 Dec 2010 23:49:12 -0000

Please pull all these.  they involve the Poky Reference Manual, the Quick 
Start, a new Kernel manual, and application of some mis-spellings noted 
from a contributor Cyril (the last one in this list).

V2:  Darren helped rebase the earlier PULL that you did not do (V1) because 
of the conflicts.  We rebased this patch series against the origin/master.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (43):
  BSP Developers Guide:  Edits to text
  BSP Guide and BSP Chapter:  Sync'ed these two files
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
  documentation/kernel-manual:  Added Bruce Ashfields review comments.
  documentation/kernel-manual/kernel-concepts.xml:  Re-worded a note to
    state best practices for organizing shared features.
  documentation/poky-ref-manual/ref-bitbake.xml:  Completed general
    edits.

 .gitignore                                         |    5 +
 documentation/bsp-guide/bsp.xml                    |    2 +-
 documentation/kernel-manual/Makefile               |   42 +
 .../figures/kernel-architecture-overview.png       |  Bin 0 -> 40778 bytes
 .../kernel-manual/figures/kernel-big-picture.png   |  Bin 0 -> 173130 bytes
 .../kernel-manual/figures/kernel-title.png         |  Bin 0 -> 14549 bytes
 .../kernel-manual/figures/yocto-project-transp.png |  Bin 0 -> 8626 bytes
 documentation/kernel-manual/kernel-concepts.xml    |  335 +++
 documentation/kernel-manual/kernel-doc-intro.xml   |   57 +
 documentation/kernel-manual/kernel-how-to.xml      | 2129 ++++++++++++++++++++
 documentation/kernel-manual/kernel-manual.xml      |   66 +
 documentation/kernel-manual/style.css              |  968 +++++++++
 .../yocto-project-kernel-manual-customization.xsl  |    8 +
 documentation/poky-ref-manual/development.xml      |  684 ++++---
 documentation/poky-ref-manual/extendpoky.xml       |   10 +-
 documentation/poky-ref-manual/introduction.xml     |    6 +-
 documentation/poky-ref-manual/poky-ref-manual.xml  |    2 +-
 documentation/poky-ref-manual/ref-bitbake.xml      |  345 ++--
 documentation/poky-ref-manual/ref-classes.xml      |    4 +-
 documentation/poky-ref-manual/ref-images.xml       |    2 +-
 documentation/poky-ref-manual/ref-structure.xml    |  362 ++--
 documentation/poky-ref-manual/ref-variables.xml    |   28 +-
 documentation/poky-ref-manual/resources.xml        |   51 +-
 .../yocto-project-qs/yocto-project-qs.xml          |   12 +-
 24 files changed, 4436 insertions(+), 682 deletions(-)
 create mode 100644 documentation/kernel-manual/Makefile
 create mode 100755 documentation/kernel-manual/figures/kernel-architecture-overview.png
 create mode 100755 documentation/kernel-manual/figures/kernel-big-picture.png
 create mode 100755 documentation/kernel-manual/figures/kernel-title.png
 create mode 100755 documentation/kernel-manual/figures/yocto-project-transp.png
 create mode 100644 documentation/kernel-manual/kernel-concepts.xml
 create mode 100644 documentation/kernel-manual/kernel-doc-intro.xml
 create mode 100644 documentation/kernel-manual/kernel-how-to.xml
 create mode 100644 documentation/kernel-manual/kernel-manual.xml
 create mode 100644 documentation/kernel-manual/style.css
 create mode 100644 documentation/kernel-manual/yocto-project-kernel-manual-customization.xsl


