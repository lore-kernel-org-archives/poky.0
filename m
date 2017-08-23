Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA431E00CAB; Wed, 23 Aug 2017 13:39:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 458 seconds by postgrey-1.32 at yocto-www;
	Wed, 23 Aug 2017 13:39:33 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01BD7E00C01
	for <poky@yoctoproject.org>; Wed, 23 Aug 2017 13:39:33 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 1AF711837B
	for <poky@yoctoproject.org>; Wed, 23 Aug 2017 22:31:55 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id uNVIDhjVH9MJ for <poky@yoctoproject.org>;
	Wed, 23 Aug 2017 22:31:54 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 7B53A18153
	for <poky@yoctoproject.org>; Wed, 23 Aug 2017 22:31:54 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 66DE91E086
	for <poky@yoctoproject.org>; Wed, 23 Aug 2017 22:31:54 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5BF031E084
	for <poky@yoctoproject.org>; Wed, 23 Aug 2017 22:31:54 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP
	for <poky@yoctoproject.org>; Wed, 23 Aug 2017 22:31:54 +0200 (CEST)
Received: from XBOX03.axis.com (xbox03.axis.com [10.0.5.17])
	by thoth.se.axis.com (Postfix) with ESMTP id 4FEA11B5D
	for <poky@yoctoproject.org>; Wed, 23 Aug 2017 22:31:54 +0200 (CEST)
Received: from xbox11.axis.com (10.0.5.25) by XBOX03.axis.com (10.0.5.17) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Wed, 23 Aug 2017 22:31:54 +0200
Received: from XBOX02.axis.com (10.0.5.16) by xbox11.axis.com (10.0.5.25) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Wed, 23 Aug 2017 22:31:54 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1263.000; Wed, 23 Aug 2017 22:31:54 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Why is DISTRO_CODENAME still pyro?
Thread-Index: AdMcTkfdVbGqAVksT1+evIS0OY/GTg==
Date: Wed, 23 Aug 2017 20:31:54 +0000
Message-ID: <c61c19a50d8740f19f3b95ecc9c7d8bf@XBOX02.axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: Why is DISTRO_CODENAME still pyro?
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
X-List-Received-Date: Wed, 23 Aug 2017 20:39:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is there any particular reason DISTRO_CODENAME still says "pyro"=20
on master of meta-poky/conf/distro/poky.conf? Looking back through=20
the history of poky.conf, it has always been updated to "master"=20
immediately after each release before. Similarly for DISTRO_VERSION.

//Peter


