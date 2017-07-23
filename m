Return-Path: <0101015d6e50a87b-bd1ba10c-324c-47a8-b3fb-d4cdb9252183-000000@us-west-2.amazonses.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7817BE00BB7; Sun, 23 Jul 2017 00:23:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [54.240.27.17 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 248 seconds by postgrey-1.32 at yocto-www;
	Sun, 23 Jul 2017 00:23:35 PDT
Received: from a27-17.smtp-out.us-west-2.amazonses.com
	(a27-17.smtp-out.us-west-2.amazonses.com [54.240.27.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DA83E00B72
	for <poky@yoctoproject.org>; Sun, 23 Jul 2017 00:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1500794366;
	h=Subject:From:To:Cc:Date:Mime-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Feedback-ID;
	bh=KKITVoyFn6G+U6ZAYzY0H4FYVp5qqxPXKoCNXkuirJo=;
	b=HjjaFG+sIBUPldQD9Mo5zpdAuZlOOOCs1x2PAzcGVKmwTGUwjPzaXphoopq7IhuV
	cgQlunvI/IOj9AU3ngRYSNyvlZ6zDuYZc777nNLNC/AzZse5KDPnOC+nSAmvz2IVFXM
	B7VHzytSRxnay6qWwtKpVFzg0zLvGl+B+Q+bNQs4=
From: =?UTF-8?Q?Benjamin_Esquivel?= <code@esquibits.com>
To: =?UTF-8?Q?poky=40yoctoproject=2Eorg?= <poky@yoctoproject.org>
Date: Sun, 23 Jul 2017 07:19:26 +0000
Mime-Version: 1.0
X-Mailer: Amazon WorkMail
Thread-Index: AQHTA4QDV295zWPVRq6ri6HUtXNebw==
X-Original-Mailer: git-send-email 2.13.3
Message-ID: <0101015d6e50a87b-bd1ba10c-324c-47a8-b3fb-d4cdb9252183-000000@us-west-2.amazonses.com>
X-SES-Outgoing: 2017.07.23-54.240.27.17
Feedback-ID: 1.us-west-2.An468LAV0jCjQDrDLvlZjeAthld7qrhZr+vow8irkvU=:AmazonSES
Subject: [PATCH] add fedora-26 to the SANITY_TESTED_DISTROS
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
X-List-Received-Date: Sun, 23 Jul 2017 07:23:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

tested the quickstart guide on Fedora 26 and confirmed that it=0D=0Acan b=
uild a core-image-sato and run the image via runqemu.=0D=0A=0D=0ASigned-o=
ff-by: Benjamin Esquivel <code@esquibits.com>=0D=0A---=0D=0A meta-poky/co=
nf/distro/poky.conf | 1 +=0D=0A 1 file changed, 1 insertion(+)=0D=0A=0D=0A=
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
=2Econf=0D=0Aindex 62ec96f850..6018828039 100644=0D=0A--- a/meta-poky/con=
f/distro/poky.conf=0D=0A+++ b/meta-poky/conf/distro/poky.conf=0D=0A@@ -77=
,6 +77,7 @@ SANITY_TESTED_DISTROS =3F=3D " \=0D=0A             ubuntu-16.=
10 \n \=0D=0A             fedora-24 \n \=0D=0A             fedora-25 \n \=
=0D=0A+            fedora-26 \n \=0D=0A             centos-7 \n \=0D=0A  =
           debian-8 \n \=0D=0A             opensuse-42.1 \n \=0D=0A--=20=0D=
=0A2.13.3=0D=0A=0D=0A

