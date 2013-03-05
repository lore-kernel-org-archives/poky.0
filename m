Return-Path: <prvs=769a27b0a=sgrunza@ctdi.com>
Received: from smtp.ctdi.com (smtp.ctdi.com [65.213.88.7])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB7EFE014E2
	for <poky@yoctoproject.org>; Tue,  5 Mar 2013 06:14:31 -0800 (PST)
X-SBRS: None
X-SenderGroup: EXCHANGE_RELAY
Received: from unknown (HELO WCEXCH3.ctdi.com) ([192.168.173.73])
	by smtp.ctdi.com with ESMTP; 05 Mar 2013 09:14:30 -0500
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Tue, 5 Mar 2013 09:14:25 -0500
Message-ID: <6A40B310D7EFC840A22CBF165D914E2902BE9264@WCEXCH3.ctdi.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Is there a guide for adding a board to the yocto system?
Thread-Index: Ac4Zq73ebsSVOmYxS6KhbP6fP9JWlA==
From: "Steven Grunza" <sgrunza@ctdi.com>
To: <poky@yoctoproject.org>
Subject: Is there a guide for adding a board to the yocto system?
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
X-List-Received-Date: Tue, 05 Mar 2013 14:14:32 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I would like to add a board to the yocto system such that instead of
having a line in build/conf/local.conf that reads=20

MACHINE ?=3D "beagleboard"

It would be

MACHINE ?=3D "my_board_name"


Is there a guide on how to do this?

------------------------------------------------------------------------
---------------------------

Steven Grunza


