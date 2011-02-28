Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 611454C80510
	for <poky@pokylinux.org>; Mon, 28 Feb 2011 09:19:41 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1SFJfXi024707;
	Mon, 28 Feb 2011 15:19:41 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24292-07; Mon, 28 Feb 2011 15:19:37 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1SFJVjI024701
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 28 Feb 2011 15:19:32 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto <yocto@yoctoproject.org>
Date: Mon, 28 Feb 2011 15:19:18 +0000
Message-ID: <1298906358.26736.7523.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@pokylinux.org>
Subject: OE-Core - What this means for Yocto/Poky and what we need to do
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
X-List-Received-Date: Mon, 28 Feb 2011 15:19:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

As most have gathered, there are changes afoot in the OE world and we
want to start increasing collaboration between Yocto and OE through the
creation of an OE-Core repository which both projects share.

This was going to be too much change for inclusion for the 1.0 release
but now that has branched we need to start working on this. I appreciate
that people have a number of different priorities but I'd ask that
people do read this email, take time to understand these changes and
bare with the inevitable disruption this change is going to cause.
Obviously we'll try and keep disruption to a minimum.

The implication for Yocto/Poky is that what is currently the meta
directory in the Poky repo is going to get split into two pieces. One
will be a mirror of the OE-Core repo (meta), the other will be yocto
specific pieces (meta-yocto). Each of these will be a layer.

For anything within the OE-Core directory, the patches need to be
submitted on the OE-Core mailing list. Patches to the other components
need to be separate and on the Poky list as things are today. I expect
the distro team to subscribe to the OE-Core list and participate there
on for discussions on core components:

http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core

meta-yocto patches and discussion should continue on the poky list as
today.

I am prepared for now to help out getting user submitted patches for
Yocto/Poky, split up and submitted to OE-Core as needed. Ultimately, I'm
hoping we can enhance the tooling to understand layers and be able to
put send patches to the right places but we don't have such tools yet
and its a chicken and egg problem.

I also want to change the Poky repo so all the pieces contained within
are mirror copies of the appropriate upstreams. I've been working on
resolving the delta with upstream bitbake and for some components (docs,
meta-yocto, yocto-glue) we'll need to create them.

I'm going to start making these changes on the master branch as we're
under a lot of pressure from OE to start doing this *now*. I want to be
clear these changes are not destined for the 1.0 release.

Cheers,

Richard






