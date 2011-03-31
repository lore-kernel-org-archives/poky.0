Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 025F04C800A6
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 17:48:24 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so1548295yia.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 15:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=7pAdoOyCbn1xfiSytkDy3hxaIxEMwlrl4tXd7/BdUWU=;
	b=fqPumV4OTZ3NTTmulLmC5teBC38lne6Pqk5aP2A22Qystw5utkott8wWGrgiPXPSIR
	qVcs3alemmo+YFHUynnH40CKC8w1mySQdhs5ava+SGK+Lg8PiSAMJqgxtQhly0KLrdmT
	hIn9XuPWFNm4WoMKj07lrhoBjT1hR6W/PVBgc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=rdGgjZKNmcHMJNRnJbd+FYSFqEE+epjbLWYeEFOPvXfNbzOzDjnl/BnfETTas3FuGf
	5TxFHdoSM83ZSN2Adur9DToCAziFr7fkQkfkEzYYrdnwx6W6zQpjIpDTLDEyjm4/WHrX
	Vwmpr89depyChikytH9iX0vgwIb1qtsveqZxk=
Received: by 10.147.114.11 with SMTP id r11mr3305203yam.7.1301611704181;
	Thu, 31 Mar 2011 15:48:24 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id h43sm807223yhm.22.2011.03.31.15.48.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 15:48:23 -0700 (PDT)
Message-Id: <cover.1301611580.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 17:46:20 -0500
Date: Thu, 31 Mar 2011 17:48:16 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/1] [DOCS] Updated repo URL for Yocto Eclipse Plug-in
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
X-List-Received-Date: Thu, 31 Mar 2011 22:48:25 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

The final resting place for the Yocto Eclipse Plug-in was determined
as http://yoctoproject.org/downloads/eclipse-plugin/1.0.  The section 
that describes how to install the plug-in was updated to reflect the 
new location.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/adt-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/adt-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/adt-manual/adt-eclipse.xml:  Updated repo URL for
    Eclipse Plug-in

 documentation/adt-manual/adt-eclipse.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


