Return-Path: <jonathan@jonmasters.org>
Received: from edison.jonmasters.org (edison.jonmasters.org [173.255.233.168])
	by mx1.pokylinux.org (Postfix) with ESMTP id B57954C811F6
	for <poky@pokylinux.org>; Wed,  8 Dec 2010 00:38:41 -0600 (CST)
Received: from boston.jonmasters.org ([74.92.29.237] helo=[192.168.1.2])
	by edison.jonmasters.org with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.71)
	(envelope-from <jonathan@jonmasters.org>) id 1PQDfk-0007ng-P4
	for poky@pokylinux.org; Wed, 08 Dec 2010 06:38:41 +0000
From: Jon Masters <jonathan@jonmasters.org>
To: poky@pokylinux.org
Organization: World Organi[sz]ation Of Broken Dreams
Date: Wed, 08 Dec 2010 01:39:44 -0500
Message-ID: <1291790384.2779.124.camel@constitution.bos.jonmasters.org>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 (2.30.3-1.fc13) 
X-SA-Exim-Connect-IP: 74.92.29.237
X-SA-Exim-Mail-From: jonathan@jonmasters.org
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	edison.jonmasters.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	T_RP_MATCHES_RCVD autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Sun, 08 Nov 2009 07:31:22 +0000)
X-SA-Exim-Scanned: Yes (on edison.jonmasters.org)
Subject: local.conf template
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
X-List-Received-Date: Wed, 08 Dec 2010 06:38:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello,

Can I suggest that the local.conf be updated to include MACHINE targets
like beagleboard under "Other supported machines". It's listed neither
in the 4.0 laverne release nor in the latest git tree. Alternatively,
since I'm new here, would you accept a git pull request or two?

Jon.



