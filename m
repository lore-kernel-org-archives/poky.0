Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4461F4C800AC
	for <poky@yoctoproject.org>; Mon, 28 Mar 2011 18:15:09 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk7 with SMTP id 7so1757272gxk.35
	for <poky@yoctoproject.org>; Mon, 28 Mar 2011 16:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=QKGB0KY6/hb3Q7JvVzmRMRJZ/vI+jsVLEiM8ixSP5p0=;
	b=R5sMbDiXOCscZDfQeYaqmp3IfSvN1QE/IaUWSM5vT1AUwvGFwR4rKcFHY0jg0eTwbh
	tdhc2kQFbI975ywAQqyqr/7/nSufoyy47in15wmPMaGKIn4gl1+sAnGPt6cCr6QxZYym
	WWvoAuMXGu4ahV1dgrXP/K5aKrBbGUZqSKhzM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=qMHAEbUNakgTBFH7LmuXF3r/bfFx4Ralw17Jhn3MwOaM9kWtlAbDzBAg3GSEcCTtIl
	krmsTShxW+oTPtlt6eYBVSUrKUAGDfhpXyIidWRCjCsWq0Fh8A7/Za2MFzbSBSVl2A2r
	gozIRuP3CbpJuN/ySC+q29gdNf+Bp8S1biU1g=
Received: by 10.236.161.8 with SMTP id v8mr2406583yhk.129.1301354107915;
	Mon, 28 Mar 2011 16:15:07 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id 73sm2184335yhl.49.2011.03.28.16.15.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 28 Mar 2011 16:15:06 -0700 (PDT)
Message-Id: <cover.1301351290.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 28 Mar 2011 17:28:10 -0500
Date: Mon, 28 Mar 2011 18:15:05 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/1] [DOCS] Quick Start edit
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
X-List-Received-Date: Mon, 28 Mar 2011 23:15:09 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Small edit to remove the 'YP' acronym from the opening sentence. 
We do not use this acronymn anywhere else.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/test
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/test

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/yocto-project-qs/yocto-project-qs.xml: removed (YP)
    acronym

 .../yocto-project-qs/yocto-project-qs.xml          |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


