Return-Path: <srifenbark@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CCBFD4C806DA
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 11:45:53 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxd5 with SMTP id 5so1131493yxd.35
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 09:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=I0mKFfPrW+hPPPuJfIwk4F6UenOBZ0BG2TljMrhwG6w=;
	b=EoA/OeqNl6R3S6ZNVGb0nmq+Xc65MfPfQ+AoWjU1XPdQArQ6qz7gZhXcouNpzh8SUP
	DegyljIEYKiskxbVY6TIckGZ65qs2IMKgbMZgXKK8o5LlHfZPv2swMWQ7Zh5W46gnSq/
	C0qF/yAT3EZQSnlu/W2bfgY6CXVDCSeH1L98w=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=NUdQBp/m8gJ2NHIW+fnb4RDW3I1hTrljS3i7yNBKmCrPdbCNT0D6Fgw3phEWEctdLe
	D/ypuHF8PhnW9iVgLKPwfSlrRR2vDDY6588/RZ09zxKHapbNyAl+6Vb7BfC+zPnYaBbN
	QlWA2+oDheg6hHbbbpe2M4HC9sWxM0ec1wjLk=
Received: by 10.151.148.5 with SMTP id a5mr1703460ybo.353.1302799553094;
	Thu, 14 Apr 2011 09:45:53 -0700 (PDT)
Received: from localhost (h227.63.117.75.dynamic.ip.windstream.net
	[75.117.63.227])
	by mx.google.com with ESMTPS id w1sm902651ybl.24.2011.04.14.09.45.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 14 Apr 2011 09:45:52 -0700 (PDT)
Message-Id: <cover.1302799451.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 14 Apr 2011 11:44:11 -0500
Date: Thu, 14 Apr 2011 11:45:50 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/1] [DOCS] ADT Manual Update
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
X-List-Received-Date: Thu, 14 Apr 2011 16:45:54 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I fixed the URL in the ADT Manual for the Autotools link.  I had
'www' in the URL when it should not have been there.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/qs-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/qs-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/adt-manual/adt-eclipse.xml: Fixed link to autotools.

 documentation/adt-manual/adt-eclipse.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


