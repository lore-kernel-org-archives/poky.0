Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 712E14C8108C
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 06:56:54 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9CumWj006961;
	Thu, 9 Dec 2010 12:56:48 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06877-03; Thu,  9 Dec 2010 12:56:40 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9Cubv4006950
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Dec 2010 12:56:37 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: poky <poky@yoctoproject.org>
Date: Thu, 09 Dec 2010 12:56:26 +0000
Message-ID: <1291899386.1554.827.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Performance regression in bitbake and exec() vs fork()
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
X-List-Received-Date: Thu, 09 Dec 2010 12:56:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I'd like to update people on where this is at. Just to be clear this has
largely been done by the Pseudo maintainer and Mark Hatle, I just agreed
to summarise things.

A branch of pseudo with the needed updates to be able to enable/disable
upon fork/exec/clone is available in poky-contrib on branch
mhatle/pseudo_git. To build this you need to do something like:

./configure --prefix=<poky dir>/pseudo --bits=64
make
make install
(make test)
go to the poky dir
PSEUDO_DISABLED=1 ./pseudo/bin/pseudo
. ./poky-init-env .....
run bitbake commands as normal

Mark's version of a patch I quickly hacked together to change bitbake to
use fork() again rather than exec is:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=mhatle/pseudo_fork&id=aa64a80540ea236d8c1e8439dd236badc068749c

The changes in lib/bb/siggen.py are known to be a hack to work around
certain problems and this patch is a work in progress.

Also, I'd like to make it clear, some of the pseudo changes have not yet
been reviewed/accepted by the pseudo maintainer so everything is subject
to change. This email is just to summarise where we're at with this and
bring everyone up to speed and invite others to look at the changes.

The good news is that it appears to roughly work and we get a suitable
speedup back.

Cheers,

Richard


