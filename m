Return-Path: <srifenbark@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF7834C800A2
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:20:50 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxd5 with SMTP id 5so346633yxd.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=t0EAlUdhm6URJdYUOtgostuqOnv4LkN5xHxJY9vXuns=;
	b=GY7RaOvovcti9mcFdloLktOrQ7LS2aJp2KezemKgpowBusejWtYWTXa6GQTMAg1Gux
	80VNYLgNjFgWcmxllfz+9+Hd+OY1bkzztxgxVQslFmuW7WOQqQHiMBD3Oh6X2tfIWI8K
	x44glDNroTCK2GAHwDSRAGqJTD6k4RmkJV5og=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=BFaL9bqPOA0HRtYIe8+Tpjw9bJ8yIzM18nkDmrxV5t0LHH+DqLTI2XMCHRHT4QfGo9
	G/woc31/FGRv8Yd3L/S2/ljjwQ/zUU/3X77rABQ9mKb5/2nHdS7+P8jZo9I7/tQjSpAo
	m99S+peqRvrGsoemdhpGConsD080Aaj4qBFHY=
Received: by 10.236.182.230 with SMTP id o66mr6991yhm.24.1302027649156;
	Tue, 05 Apr 2011 11:20:49 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id p57sm2959148yhm.98.2011.04.05.11.20.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:20:48 -0700 (PDT)
Message-Id: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 5 Apr 2011 13:16:24 -0500
Date: Tue, 05 Apr 2011 13:20:45 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 00/15] [DOCS] Kernel Manual updates
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
X-List-Received-Date: Tue, 05 Apr 2011 18:20:51 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Updated the Makefile to include the PDF file as part of the tarball. 
The rest of the commits in this pull request I thought had been merged
into master.  I am not sure why they are appearing as part of the 
pull request.  Please be sure that they have been merged into master. 


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/kernel-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/kernel-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (15):
  documentation/poky-ref-manual/development.xml: Corrected command
    syntax
  documentation/poky-ref-manual/development.xml:  OProfileUI section
    updated
  documentation/poky-ref-manual/ref-structure.xml: bitbake section
    updated
  documentation/poky-ref-manual/ref-bitbake.xml:  removed 'varname'
    style
  documentation/poky-ref-manual/ref-bitbake.xml:  Grammar fix
  documentation/poky-ref-manual/ref-bitbake.xml: type fixed
  document/poky-ref-manual/ref-classes.xml: removed <function> tag
  documentation/poky-ref-manual/ref-classes.xml:  Fix to <filename> tag
  documentation/poky-ref-manual/ref-classes.xml: re-write of autotooled
    packages
  documentation/poky-ref-manual/ref-classes.xml: tag updates
  documentation/poky-ref-manual/ref-structure.xml:  Edits for Rel 1.0
  documentation/poky-ref-manual/ref-variables.xml: added SSTATE_DIR
    variable
  documentation/poky-ref-manual/ref-bitbake.xml: BitBake parsing
    section update
  documentation/poky-ref-manual/ref-bitbake.xml: style tags updated
  documentation/kernel-manual/Makefile:  Updated Makefile so PDF is in
    tarball

 documentation/kernel-manual/Makefile            |    2 +-
 documentation/poky-ref-manual/development.xml   |   15 ++--
 documentation/poky-ref-manual/ref-bitbake.xml   |   50 ++++-----
 documentation/poky-ref-manual/ref-classes.xml   |  128 ++++++++++-------------
 documentation/poky-ref-manual/ref-structure.xml |  108 +++++++++++++++++--
 documentation/poky-ref-manual/ref-variables.xml |    6 +
 6 files changed, 191 insertions(+), 118 deletions(-)


