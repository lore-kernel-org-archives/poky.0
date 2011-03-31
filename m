Return-Path: <srifenbark@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AB194C804D9
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 13:31:29 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj22 with SMTP id 22so1428233gwj.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=casowzZanZJqqJYn0S8gBkQm4UubGeK9J8925z09IZ8=;
	b=rxc95J+rxu8FOsMdYf9fAID9Zo0UGrs8Bm2TzoKuzPnNrEQ0Yy77jhTNLAw1Vr8IFh
	JXtz/SRNBXXD+04obUVvAT2D7Qw1EYjWl9xvAZ5te+5tP0QaRYVzSel/9oXy6Fif4n6q
	VeSaGERNKxXBOFaKh8txuBLGz/WrIBdVG0/iM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=V9+oY/MxNNdpr+WehXjfy2/pH7A4GnFI3+waAKOhxe77kQjY+3v7OwbTYO1IoACUFK
	NK58d5mepif1FH3eVfzzp71UeiKPu8Bj481iCrrp7iTkq3mLNnibF7hb5KkODbFERa3H
	Je5xF27LmxNhcAk22s9PEghwFz29Seae/j3Wg=
Received: by 10.236.185.41 with SMTP id t29mr1811929yhm.160.1301596287850;
	Thu, 31 Mar 2011 11:31:27 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id 73sm696069yhl.49.2011.03.31.11.31.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 11:31:27 -0700 (PDT)
Message-Id: <cover.1301596085.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 13:28:05 -0500
Date: Thu, 31 Mar 2011 13:31:23 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/8] [DOCS] YP Quick Start PDF generation
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
X-List-Received-Date: Thu, 31 Mar 2011 18:31:29 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

These commits accomplish PDF generation for the Yocto Project 
Quick Start.  Prior to this release this manual was generated 
as an HTML document only.  Release 1.0 of YP saw the need for 
a PDF version as well.  To accomplish this several new files 
had to be introduced and the make structure altered.  

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/qs-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/qs-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (8):
  documentation/yocto-project-qs/yocto-project-qs.xml:  cleaned out
    another "YP"
  documentation/yocto-project-qs/yocto-project-qs.xml: Edits plus Matt
    Madison note regarding older host systems
  documentation/yocto-project-qs/Makefile: Updated to create a PDF
  documentation/yocto-project-qs/figures/ypqs-title.png: New title
    image
  documentation/yocto-project-qs/ypqs.xml: New high-level file for PDF
  documentation/yocto-project-qs/style.css: Updates for PDF generation
  documentation/yocto-project-qs/yocto-project-qs-customization.xsl:
    Updated for PDF creation
  documentation/yocto-project-qs/yocto-project-qs.xml: Updates for PDF
    creation

 documentation/yocto-project-qs/Makefile            |   25 ++++---
 .../yocto-project-qs/figures/ypqs-title.png        |  Bin 0 -> 11324 bytes
 documentation/yocto-project-qs/style.css           |   10 ++--
 .../yocto-project-qs-customization.xsl             |    2 -
 .../yocto-project-qs/yocto-project-qs.xml          |   39 ++++++++---
 documentation/yocto-project-qs/ypqs.xml            |   67 ++++++++++++++++++++
 6 files changed, 114 insertions(+), 29 deletions(-)
 create mode 100644 documentation/yocto-project-qs/figures/ypqs-title.png
 create mode 100644 documentation/yocto-project-qs/ypqs.xml


