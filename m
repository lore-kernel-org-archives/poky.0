Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85DD44C80889
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 13:45:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so1434116yia.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=UwmRC5gOgCBDXCGN+iHScXpah0rDMgtDtJozbq5Ya/s=;
	b=IOi6u8uitc/1/2CM0ZQVkFwEijSZ4BLvKMgpnLmvRaQq2zqkPVzGus8CdWon+bVqB4
	MOUGsKJom4EkXFAfDoVT3mwwbtf45XxPiqGRUwrX87619mj2FqCLzZD+8aABbMYLWVSW
	7Sn5wO0iFrSCipS0Fop1DmwMVR4HibNn2macE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=vkucIeaW7Otto6zUQ5znQyDQOPdH0A8Go2ZxeA50yP8rxW0tWyYDXfSUddegKmiw/h
	R7kL62Z1yaDPtphxjkuxt1ud1I0kyFygAW5NomnFPdx/pZffYrQHlKdj3/52Ny8Uwp2v
	32I86PS0ZP/uuuTl5EyGdZ4+YVbBLV4+eDuNM=
Received: by 10.91.110.4 with SMTP id n4mr2954756agm.47.1301597122385;
	Thu, 31 Mar 2011 11:45:22 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id w4sm1447811anw.16.2011.03.31.11.45.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 11:45:21 -0700 (PDT)
Message-Id: <cover.1301597020.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 13:43:40 -0500
Date: Thu, 31 Mar 2011 13:45:17 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/1] [DOCS] BSP Guide tarball creation fix
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
X-List-Received-Date: Thu, 31 Mar 2011 18:45:23 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

For some reason the PDF version of this manual was not being included
in the tarball created by the Makefile.  I fixed this. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/bsp-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/bsp-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/bsp-guide/Makefile:  Updated to include PDF in tarball

 documentation/bsp-guide/Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


