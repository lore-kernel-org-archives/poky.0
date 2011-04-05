Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA6944C800A2
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:36:39 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so358164ywo.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=4BgM6KiBT1XZMUtHAsHYuvkLFixKfaxPjZHCaiSHyRY=;
	b=LknChWbABp8sqb5CiSPFvUNbPJ/LQa7p3VrBZQH9dQt00gN1X7/EPT74kJvK0zoA9P
	cgGJVlA+n6D9iFyrlY4Fb4Zbp17/++X2kMPa0WeP7qrPlihKjhXvobpLTpE/r/SSNpP8
	HJDfsmQkOneFHEQJbGjNATOepl0/wvGDHaTZ0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=RCHguBmUpsw07l4TWgrHyC837wa3CV1LecmeooI59wW4CmkdKrj+cOx1u7j3QhxYF1
	6m+S9gO5yr1L4tgR7wRFtE4kfaLnfu8I9XaqsLo8aQIgkPdf8jpzRAqEMga36mmT0UJ/
	noc+pzZivEAt3M5Sg9CO5BmrJn7Tak92gebrk=
Received: by 10.90.139.17 with SMTP id m17mr912978agd.51.1302028597849;
	Tue, 05 Apr 2011 11:36:37 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id c38sm6779233anc.44.2011.04.05.11.36.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:36:36 -0700 (PDT)
Message-Id: <cover.1302028487.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 5 Apr 2011 13:34:47 -0500
Date: Tue, 05 Apr 2011 13:36:33 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/1] [DOCS]
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
X-List-Received-Date: Tue, 05 Apr 2011 18:36:39 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Updated the Makefile to include the PDF file created for Saul.  Note that 
the Makefile does not produce a PDF.  The PDF provided is a static file at 
this point.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/qs-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/qs-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/yocto-project-qs/Makefile: Updated Makefile to include
    PDF in tar

 documentation/yocto-project-qs/Makefile |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)


