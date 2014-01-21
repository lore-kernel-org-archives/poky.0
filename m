Return-Path: <olof.johansson@axis.com>
Received: from anubis.se.axis.com (anubis.se.axis.com [195.60.68.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E291EE0087A
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 02:35:44 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by anubis.se.axis.com (Postfix) with ESMTP id 206D63F80B2
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:35:41 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at anubis.se.axis.com
Received: from anubis.se.axis.com ([127.0.0.1])
	by localhost (anubis.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id U5RDKc7cgkrG for <poky@yoctoproject.org>;
	Tue, 21 Jan 2014 11:35:40 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by anubis.se.axis.com (Postfix) with ESMTP id E04763F82B6
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id CA6EBD0C
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id BFAE0D06
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by seth.se.axis.com (Postfix) with ESMTP id BD3CE3E077
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from lnxolofjn.se.axis.com (10.92.17.1) by xmail2.se.axis.com
	(10.0.5.74) with Microsoft SMTP Server id 8.2.255.0; Tue, 21 Jan 2014
	11:07:24 +0100
Received: by lnxolofjn.se.axis.com (Postfix, from userid 20466)	id 571189C07C; 
	Tue, 21 Jan 2014 11:07:24 +0100 (CET)
From: Olof Johansson <olof.johansson@axis.com>
To: <poky@yoctoproject.org>
Date: Tue, 21 Jan 2014 11:07:22 +0100
Message-ID: <1390298844-7709-1-git-send-email-olof.johansson@axis.com>
X-Mailer: git-send-email 1.8.5.2
MIME-Version: 1.0
Subject: [PATCH 0/2] Debian in SANITY_TESTED_DISTROS
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
X-List-Received-Date: Tue, 21 Jan 2014 10:35:52 -0000
Content-Type: text/plain

A new point release of Debian Wheezy was made in December. This changeset adds
this to SANITY_TESTED_DISTROS. It also removes Debian 6.* (Squeeze), since
Bitbake now requires Python 2.7, and possibly other reasons.

Olof Johansson (2):
  poky.conf: add Debian 7.3 to SANITY_TESTED_DISTROS
  poky.conf: Remove Debian Squeeze from SANITY_TESTED_DISTROS

 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
1.8.5.2


