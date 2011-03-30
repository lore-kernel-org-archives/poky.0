Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E808B4C800A0
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 09:47:41 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2UElZsp008230;
	Wed, 30 Mar 2011 15:47:35 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07262-06; Wed, 30 Mar 2011 15:47:31 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2UElSvT008207
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 30 Mar 2011 15:47:29 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, openembedded-core
	<openembedded-core@lists.openembedded.org>
Date: Wed, 30 Mar 2011 15:47:27 +0100
Message-ID: <1301496447.24596.100.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: lconfig-native is not endian safe
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
X-List-Received-Date: Wed, 30 Mar 2011 14:47:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

Poky has had a ldconfig-native recipe in for a while. Back in the times
our RPATHS were totally broken adding in an ld.so.cache was useful. In
modern times I'm having trouble working out when this would be useful on
a standard system as libraries are pretty much always in one of the two
default search locations.

ldconfig-native is 32/64 bit safe. I've just been looking at PPC and it
is certainly not endian safe though. The endianess of the target system
need to match that of the build system for it to work. It wouldn't be
much work to make it endian safe though although the codebase will
diverge further from that in (e)glibc though.

Short term we need to disable it at least for ppc, longer term what
should we do?

Cheers,

Richard


