Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17F444C80093
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 04:18:21 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1OAILrU026367
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 10:18:21 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 26326-01 for <poky@yoctoproject.org>;
	Thu, 24 Feb 2011 10:18:17 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1OAIDo9026361
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 10:18:13 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 24 Feb 2011 10:12:23 +0000
Message-ID: <1298542343.26736.104.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Autobuilder performance
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
X-List-Received-Date: Thu, 24 Feb 2011 10:18:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Just as a quick note on performance of builds, the autobuilder managed
to build:

qemux86:       image-minimal, image-sato, image-sato-sdk, image-lsb
               meta-toolchain-sdk (32) meta-toolchain-sdk (64)
qemux86-64:    image-minimal, image-sato, image-sato-sdk, image-lsb
               meta-toolchain-sdk (32) meta-toolchain-sdk (64)
emenlow:       image-minimal-live, image-sato-live, image-sato-sdk-live
atom-pc:       image-minimal-live, image-sato-live, image-sato-sdk-live

in 9 hours.

Given this is 3 complete full builds (emenlow and atom-pc share
optimisation flags) and it includes two flavours of toolchain (1.5
hours) and sanity testing (15 mins), the timescales aren't too bad.

They could always be better of course but we did seem to be doing a lot
worse than this.

Cheers,

Richard



