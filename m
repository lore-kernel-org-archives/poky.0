Return-Path: <srifenbark@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id CAA464C80A1D
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 11:57:36 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj22 with SMTP id 22so958069gwj.35
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 09:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=HOGOmq85mlrtNcHY0OHMFqJQfVyjN3N9cL/aHutMcg4=;
	b=bT2SRqgLY2D5RjSyXndtIJ3MojLO1KsrQNcjnkA6SpbRKA+QLdYoDOa038vYvQtIxs
	MVujZ3R+x7Lg07lsugNlxn/iRdd+gwbgJXfsgBh7OidJNWw9iXRrXUCbpjIlsh5Sv6k4
	y4AjBDcWeQH31t2U8wjZngDtMY4u6zDljovz0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=mFxKMTWtYmgHthS6l7+7Zz8jPHJojq3fer88GZjHZ3DWTIIHNgXBbBWDPmM8uizK1v
	XMus4uRNsPmVNT98PuonmhBmFhKUo72ZC+0B8Ji5GlQ2/ZDARfFaNV73MkOl5Xic+3RA
	zRJk3OyMVZcTjIU+XfAeIXkU9aSnA3asWaynU=
Received: by 10.236.187.6 with SMTP id x6mr3171293yhm.370.1303923454433;
	Wed, 27 Apr 2011 09:57:34 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id v62sm468049yhm.36.2011.04.27.09.57.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Apr 2011 09:57:33 -0700 (PDT)
Message-Id: <cover.1303923286.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 27 Apr 2011 11:54:46 -0500
Date: Wed, 27 Apr 2011 11:57:31 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/1] [DOCS] - [BUGID_1004] Fixed EXTRA_IMAGE_FEATURES
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
X-List-Received-Date: Wed, 27 Apr 2011 16:57:36 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Changed 'IMAGE_EXTRA_FEATURES' to 'EXTRA_IMAGE_FEATURES' in the 
Poky Reference Manual.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/poky-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/poky-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/poky-ref-manual/ref-images.xml:  [BUGID#_1004] -
    EXTRA_IMAGE_FEATURE

 documentation/poky-ref-manual/ref-images.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


