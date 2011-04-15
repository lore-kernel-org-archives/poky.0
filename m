Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 184F34C80887
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 07:44:15 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk7 with SMTP id 7so1519613gxk.35
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=9pTIa+CHMSvo9ZwZbrbLDNSuFtPx+WtvB59lvigM3wQ=;
	b=WppxzxTeqrumz7IzWSJbXmDYi/oOqwMXRfcJBLN3x63Ayrm34kZygYEsDuHe+YicQM
	fJMOPgyu1W1xf1JEsv8E/frBQfRDxeKN94YRc0MARO8iKnUSSU3kiQZAXIJFTikyn6VR
	cyt95LK4aQ1mDG1z9BJjI6Vdsge+VovN+w6PE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=SQG77dy1XJr2jAipTdjhQNcxEUzxL3BWxHxkuaZqY/3IUDxKsZugDk1gQSWADgkzTZ
	kbMBRO7yKFEJDbmyLv1LaZchC/YlOmcDbR02A8x+CD0iVyH+lZi/4jQIu+U/pFv7jVKt
	b+3oS85w50m5WKQVFVX8qTHumaUk55ANCpuys=
Received: by 10.150.65.2 with SMTP id n2mr2470036yba.90.1302871454496;
	Fri, 15 Apr 2011 05:44:14 -0700 (PDT)
Received: from localhost (h227.63.117.75.dynamic.ip.windstream.net
	[75.117.63.227])
	by mx.google.com with ESMTPS id u37sm3076619yba.7.2011.04.15.05.44.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Apr 2011 05:44:14 -0700 (PDT)
Message-Id: <cover.1302871028.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 15 Apr 2011 07:37:08 -0500
Date: Fri, 15 Apr 2011 05:44:14 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/5] [DOCS] ADT Manual Updates
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
X-List-Received-Date: Fri, 15 Apr 2011 12:44:15 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Several fixes here.  Two URLs fixed so they don't have 'pokylinux.org' 
and now have 'yoctoproject.org'.  The URL for the Yocto Eclipse Plug-in
further specified with a '1.0' on the end.  The Makefile updated to 
include the PDF version of the manual in the tarball.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/adt-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/adt-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (5):
  documentation/adt-manual/adt-eclipse.xml:  Updated repo URL for
    Eclipse Plug-in
  documentation/adt-manual/Makefile: Added PDF file to the tarball
  documentation/adt-manual/adt-eclipse.xml: Fixed link to autotools.
  documentation/adt-manual/adt-prepare.xml: Fixed URL for nightly
    builds
  documentation/adt-manual/adt-eclipse.xml: Fixed URL with
    pokylinux.org


