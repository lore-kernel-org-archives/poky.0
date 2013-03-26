Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27B32E0146B
	for <poky@yoctoproject.org>; Tue, 26 Mar 2013 07:53:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2QEr4pF016833
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 26 Mar 2013 07:53:04 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Tue, 26 Mar 2013 07:53:04 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 26 Mar 2013 07:52:56 -0700
Message-ID: <cover.1364309339.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] meta-yocto-bsps: update h/w reference boards to 3.4.36
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
X-List-Received-Date: Tue, 26 Mar 2013 14:53:07 -0000
Content-Type: text/plain

Richard,

This updates the h/w references boards (which are on the LTSI
kernel at the moment) to the 3.4.36 -stable update. 

Considering where we are in the relase, the h/w references
will be staying with LTSI, and I can make 3.8.x optional for
them post release.

If there's a strong desire to update them to 3.8 before 1.4
releases, we can look into that in more detail, but I'll need
to locate resources to help, since LTSI has taken up cycles
that I would have used for bumping the board support myself.

Cheers,

Bruce

The following changes since commit e8029102e843663c583379b24979a4a390acfe0e:

  linux-yocto/3.8: qemuarm boot fix (2013-03-26 07:31:23 -0700)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  linux-yocto/meta-yocto-bsps: update h/w references to v3.4.36

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend |    9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

-- 
1.7.10.4


