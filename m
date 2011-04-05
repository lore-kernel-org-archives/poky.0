Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7E7A4C80AC5
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:23:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so350306yia.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=byJ8Q2T0DVWbP1ppR9iluIkUsPkcBxQIIvJh+SNhhvM=;
	b=epWVBwT/58Ua7awIHxJfrhwhZih/rU09cdxnacdpY99JVOsNcKlGBxQaUrcuLuA1jG
	D4iTk3zRpEH1wuoUK9DNrGn8nch9GQpLj4s1JBnz4QyzuVg5jgH3FAVcvUvh26K2cyO/
	I783j/XBDNvIhhffyKtYfOzPrC6GLvU6EOw4o=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=V+hCSgXA3RpL4Mp2s11TcE8iAgIbPLrnSgsVjLw/uDfOWI/ZjBU1p2SEZCLqeKJSnc
	VszHlRipKUry+tIgkbc6sQPdPngQCNSqz8YL5ENYck9pczovJABiJX70PRqZL43fQMmH
	JPrYb+tdHJfCW2ViRdvxqIll69y701aE8D+OQ=
Received: by 10.236.185.1 with SMTP id t1mr127yhm.88.1302027803450;
	Tue, 05 Apr 2011 11:23:23 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id l27sm1830851yhn.5.2011.04.05.11.23.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:23:22 -0700 (PDT)
Message-Id: <cover.1302026025.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 5 Apr 2011 12:53:45 -0500
Date: Tue, 05 Apr 2011 13:23:20 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/2] [DOCS] ADT Manual updates
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
X-List-Received-Date: Tue, 05 Apr 2011 18:23:23 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Updated the makefile so that the tar command includes the PDF file.
The other commit I thought had been merged but is showing up when I 
create the pull request.  Please be sure it is in master.  If it has 
not been merged please merge it.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/adt-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/adt-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (2):
  documentation/adt-manual/adt-eclipse.xml:  Updated repo URL for
    Eclipse Plug-in
  documentation/adt-manual/Makefile: Added PDF file to the tarball

 documentation/adt-manual/Makefile        |    2 +-
 documentation/adt-manual/adt-eclipse.xml |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


