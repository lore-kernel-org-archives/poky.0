Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 267474C803E4
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 08:22:51 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6RDMip8030067;
	Wed, 27 Jul 2011 14:22:44 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29338-04; Wed, 27 Jul 2011 14:22:40 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6RDMdkA030061
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 27 Jul 2011 14:22:39 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <CA073376-0D42-400B-95A7-1A8D420353C1@dominion.thruhere.net>
References: <4E3008DA.8090401@freyther.de>
	<CA073376-0D42-400B-95A7-1A8D420353C1@dominion.thruhere.net>
Date: Wed, 27 Jul 2011 14:22:28 +0100
Message-ID: <1311772948.2344.356.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Another story of a non upstream user of poky
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
X-List-Received-Date: Wed, 27 Jul 2011 13:22:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-27 at 14:53 +0200, Koen Kooi wrote:
> Op 27 jul. 2011, om 14:47 heeft Holger Hans Peter Freyther het volgende geschreven:
> > todays story is adding a 'interfaces' to netbase.
> > 
> > 
> > $ touch sysmocom/recipes-core/netbase/netbase-4.45/alix/interfaces
> > 
> > $ vi sysmocom/recipes-core/netbase/netbase_4.45.bbappend
> > FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}-${PV}"], d)}:"
> > PRINC = "1"
> > 
> > $ bitbake netbase
> > 
> > 
> > So does it work? The answer is no. Why doesn't it work? meta-yocto already has
> > a bbappend file? How to solve it? Use different names? Automatically add
> > FILESPATH for bbappends?
> 
> 
> touch oe-core/meta/recipes-core/netbase/netbase_4.45.bb to force a reparse. bbappends only get parsed if the main recipe changed.

Wrong, that bug has been fixed in bitbake! :)

Cheers,

Richard


