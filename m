Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A23A4C80AA9
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 08:07:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Mar 2011 06:07:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="892542926"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by fmsmga001.fm.intel.com with ESMTP; 01 Mar 2011 06:07:44 -0800
Message-Id: <cover.1298987770.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 1 Mar 2011 07:56:10 -0600
Date: Tue, 01 Mar 2011  8:08:36 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 00/12] [BUGID# 553] [DOCS] Poky Reference Manual and BSP Manual Updates
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
X-List-Received-Date: Tue, 01 Mar 2011 14:07:50 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

The bulk of these changes closes out BUG #553.  This addresses the 'pokylinux.org'
links that were scattered throughout the Poky Reference Manual and also in the 
BSP Guide (Click-through Licensing section).  All of these URLs have been 
addressed.  Bug #533 can be closed once these changes are merged. 

Also fixed in this set is an issue that was found during Alpha testing
regarding the documentation of supported images.  The "Images" appendix 
in the Poky Reference Manual was updated to instruct the user to use 
a modified 'ls' command (ls meta*/recipes*/images/*.bb) to discover the 
supported .bb files in the build directory.  

Finally, another small fix in the Resources Appendix in the Poky Reference
Manaul.  There was a bulleted list with entries.  Two of the entries had
no supporting text.  I added simple text for consistency.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (12):
  documentation/poky-ref-manual/ref-images.xml:  Update to Images
    Appendix
  documentation/poky-ref-manual/introduction.xml: [BUGID# 553] - Fixed
    pokylinux.org link in Nightly Build section
  documentation/poky-ref-manual/introduction.xml: [BUGID# 553] - Fixed
    pokylinux URL
  [BUGID# 553] - documentation/poky-ref-manual/introduction.xml: Fixed
    pokylinux.org URL
  [BUGID# 553] - documentation/poky-ref-manual/introduction.xml: fixed
    pokylinux.org URL
  [BUGID# 553] - documentation/poky-ref-manual/development.xml: Fixed
    pokylinux URLs
  [BUGID# 553] - documentation/poky-ref-manual/development.xml: Fixed
    pokylinux.org URL
  [BUGID# 553] - documentation/poky-ref-manual/faq.xml: Fixed
    pokylinux.org reference
  [BUGID# 553] - documentation/poky-ref-manual/resources.xml: Fixed
    pokylinux URL
  documentation/poky-ref-manual/resources.xml: Text addtions in Links
    section in Appendix I
  [BUGID# 553] - documentation/poky-ref-manual/resources.xml:  Fixed
    pokylinux URL
  [BUGID# 553] - documentation/bsp-guide/bsp.xml: Re-write of
    click-through

 documentation/bsp-guide/bsp.xml                |   59 ++++++++++++++----------
 documentation/poky-ref-manual/development.xml  |   12 ++--
 documentation/poky-ref-manual/faq.xml          |    3 +-
 documentation/poky-ref-manual/introduction.xml |    8 ++--
 documentation/poky-ref-manual/ref-images.xml   |   59 ++++++++++++++----------
 documentation/poky-ref-manual/resources.xml    |   13 +++--
 6 files changed, 87 insertions(+), 67 deletions(-)


