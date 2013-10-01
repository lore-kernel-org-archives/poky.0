Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAADDE01602
	for <poky@yoctoproject.org>; Tue,  1 Oct 2013 12:30:31 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id ld10so7915823pab.22
	for <poky@yoctoproject.org>; Tue, 01 Oct 2013 12:30:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Of6Hz5CYxpMgXtp+VROJHDEguOJyLxw4FqI6mzhJuYg=;
	b=Pb/85n04/k4/eyPWJoEv3t5UST07dLhjK7fXX78J7JvHkxdOnpC4k//ojSWJXjetz6
	k92GqzW4OXmHZr8UeWtDTG08kTnJ2Efo/bnd3F/A/+aV+T8ybocx7Cx7OFCarpkah7hU
	vbjU4xuaMRi/GheKZAL3Ln9yblXDXe+n98Rty+r7C5V/RMBRb7nPTgJfwaWsomMlgMUD
	UXz0FRGxL68hOS8f0ju7ipHd8NEhziYYFgW+EfYkRAVfgYnJuWzj2tu72VUw3Gpf66D/
	kncfuNf8I6u4TSuy3xAeUQx7JRexJLJScg6Jg2LGS5qNKo9PPZp1n5F4dCCs7EwdYmXw
	KyfQ==
X-Gm-Message-State: ALoCoQlAiOh0oiijoN0xPjIFhxmxIoidOLTbxQlqmrD0TYOVYY+2QZs9RwVqeV3MQCVqfWMdim4l
X-Received: by 10.68.249.229 with SMTP id yx5mr31507210pbc.12.1380655831111;
	Tue, 01 Oct 2013 12:30:31 -0700 (PDT)
Received: from avartita.hsd1.or.comcast.net.
	(c-24-21-207-18.hsd1.or.comcast.net. [24.21.207.18])
	by mx.google.com with ESMTPSA id
	xn12sm10077346pac.12.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 01 Oct 2013 12:30:29 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: poky@yoctoproject.org
Date: Tue,  1 Oct 2013 12:30:06 -0700
Message-Id: <cover.1380655684.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/2] Update distro alias for dora release
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Oct 2013 19:30:34 -0000

Updates for distro_alias.inc. This should be pulled for dora and master branches

The following changes since commit a1d9b6df86b0829d591cae57ae351f6d96e63557:

  pseudo: Fix race problems (2013-09-30 22:56:19 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib eflanagan/distro_alias
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=eflanagan/distro_alias

Elizabeth Flanagan (2):
  distro_alias.inc: Sort entries
  distro_alias.inc: update distro_alias

 meta-yocto/conf/distro/include/distro_alias.inc |   72 ++++++++++++++++++-----
 1 file changed, 57 insertions(+), 15 deletions(-)

-- 
1.7.9.5


