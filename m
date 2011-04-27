Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 221804C80A1D
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 12:42:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so980356yia.35
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 10:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=S1jvNpkdx83HKhZuD6BLBtPzFet3G7tMm1I1gae3SYQ=;
	b=m+c1AFT1xB2sypJvtKvUHzzFLsBiVwqlvUktPwXLuVBpiM6RYjJ/ueBS6SibRumTxd
	7fQ6bu1O2xXUGsAbh3u4TihxFRRhkUARpjpz5ck1sIWyFtVyH2k7tFEb2O5ol7u+OGc2
	tQUbUUbZCRmvFUpWiiv8GT/1XjGF5ElyyKPso=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=UsTQInXh2PB9aTsnx/yeCr/2OJNTO9E0DFUXWGXhFj0+fOr8fUyAdJzX0vjt3wplle
	g+e/1Y+M7/VtaDWOpzE1z6a0HzuIukLOVkWuJtIIP9M8rflvGXipQ6zFWMl6ob5Ukk+s
	v/rRNcNtANb6AGTmY+Rkb1+ZdZoV7mopv/clc=
Received: by 10.91.137.11 with SMTP id p11mr2211781agn.17.1303926141627;
	Wed, 27 Apr 2011 10:42:21 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id s36sm974145ano.27.2011.04.27.10.42.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Apr 2011 10:42:21 -0700 (PDT)
Message-Id: <cover.1303925958.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 27 Apr 2011 12:39:18 -0500
Date: Wed, 27 Apr 2011 12:42:19 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/2] [DOCS] Poky Ref Manual 'pokylinux.org' removal
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
X-List-Received-Date: Wed, 27 Apr 2011 17:42:28 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Two occurences of 'pokylinux.org' handled.  One was changed to 
'yoctoproject.org'.  This was a URL that was not apparent in the 
text of the manual.  The other was a reference to the Poky Linux 
home site.  I commented that out entirely.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/poky-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/poky-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (2):
  documentation/poky-ref-manual/extendpoky.xml: removed pokylinux.org
    link
  documentation/poky-ref-manual/resources.xml: removed referenct to
    poky linux site

 documentation/poky-ref-manual/extendpoky.xml |    2 +-
 documentation/poky-ref-manual/resources.xml  |    3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)


