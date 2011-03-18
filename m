Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 906F54C80AC0
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:59:10 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Mar 2011 09:58:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="721663607"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by orsmga001.jf.intel.com with ESMTP; 18 Mar 2011 09:58:44 -0700
Message-Id: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 18 Mar 2011 10:56:50 -0600
Date: Fri, 18 Mar 2011 10:59:37 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 00/15] [DOCS] Poky Reference Manual changes
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
X-List-Received-Date: Fri, 18 Mar 2011 16:59:10 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

These commits are the changes for the Poky Reference Manual.
Some bugs taken care of, spell-checks, title page updates,
grammar fixes, FAQ entries, formfactor path fix.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/poky-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/poky-work

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (15):
  [BUGID# 873] - documentation/poky-ref-manual: Notes added for
    non-GPLv3 builds
  [BUGID# 293] - documentation/poky-ref-manual/extendpoky.xml: Added
    text for choosing server
  documentation/poky-ref-manual/extendpoky.xml: Spell check
  documentation/poky-ref-manual/style.css: Updated to match other
    manuals
  documentation/poky-ref-manual/poky-ref-manual.xml: Updated title page
  documentation/poky-ref-manual/faq.xml:  Spell Check
  documentation/poky-ref-manual/introduction.xml:  Removed link
  documentation/poky-ref-manual/introduction.xml: Wording and release
    update
  documentation/poky-ref-manual/usingpoky.xml: grammar fix and BitBake
    fix
  documentation/poky-ref-manual/usingpoky.xml:  More BitBake changes
  documentation/poky-ref-manual/faq.xml: Added three FAQ entries
  documentation/poky-ref-manual/usingpoky.xml:  Small edits
  documentation/poky-ref-manual/extendpoky.xml: small edits
  documentation/poky-ref-manual/extendpoky.xml: Formfactor path
    corrected
  documentation/poky-ref-manual/faq.xml:  Added entry about proxy and
    firewall

 documentation/poky-ref-manual/extendpoky.xml      |   67 +++++----
 documentation/poky-ref-manual/faq.xml             |  174 ++++++++++++++++++++-
 documentation/poky-ref-manual/introduction.xml    |   11 +-
 documentation/poky-ref-manual/poky-ref-manual.xml |    5 +
 documentation/poky-ref-manual/ref-images.xml      |   12 ++
 documentation/poky-ref-manual/style.css           |   22 ++-
 documentation/poky-ref-manual/usingpoky.xml       |   63 ++++----
 7 files changed, 279 insertions(+), 75 deletions(-)


