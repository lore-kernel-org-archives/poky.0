Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id B56BC4C804D9
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 16:17:24 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so1507148ywo.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 14:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=fBHEpUl6i8+9Hr/3cgkkMZXAel950cPZzkMv8mhogEs=;
	b=wbwCx+BcjnlL3OoiTCC7e5xkX7iAS6LUUh0ZUuD4m42P4+qpMYSSG0SwmPaP6efWpz
	fGgGCxmXlD2vABPVZeAa8X/5hNz0qZZAtWuyj9Z4zR1+YrOfIQ61VzcsJZxBS8iAewGI
	6JQBAsITOA64wQ6RLyf+mfxyw+1HBoXwtnPxU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=DKJ01/ZyOlG2RdbVNArCR4k4wY9o9tcB//n65ruAyfwepRjNoJKEFw+gM/8A6GAMF1
	GVi2Jl3h4eR+3+ksePUKpvXMcHELrFn8U2sWp7N5PpgcKYAPwPLukJEsWZOr9KmAwbSJ
	isBxzl/qq2gIldlj7wY7/j221QSqP8rZoquIw=
Received: by 10.90.135.8 with SMTP id i8mr660698agd.113.1301606244351;
	Thu, 31 Mar 2011 14:17:24 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id d20sm1563601ang.43.2011.03.31.14.17.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 14:17:23 -0700 (PDT)
Message-Id: <cover.1301606132.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 16:15:32 -0500
Date: Thu, 31 Mar 2011 16:17:18 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/1] [DOCS] Removed "YP" from Quick Start
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
X-List-Received-Date: Thu, 31 Mar 2011 21:17:24 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I removed an occurance of "YP" from the Quick Start.  This acronym is 
not used.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/qs-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/qs-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/yocto-project-qs/yocto-project-qs.xml: removed a "YP"
    acronym

 .../yocto-project-qs/yocto-project-qs.xml          |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)


