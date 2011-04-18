Return-Path: <richard.purdie@linuxfoundation.org>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7EB0A4C80A47
	for <poky@lists.pokylinux.org>; Mon, 18 Apr 2011 03:46:55 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id 6CF8412EC105; Mon, 18 Apr 2011 03:46:25 -0500 (CDT)
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 0E4AA12EC072
	for <poky@o-hand.com>; Mon, 18 Apr 2011 03:46:24 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I8krBE010356;
	Mon, 18 Apr 2011 09:46:53 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09965-09; Mon, 18 Apr 2011 09:46:49 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I8kjNT010350
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Apr 2011 09:46:45 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joe Sauer <jsauer@vernier.com>
In-Reply-To: <BANLkTikxXCxeCfqnSC9kKRqVvCgF5=Ju+Q@mail.gmail.com>
References: <BANLkTikxXCxeCfqnSC9kKRqVvCgF5=Ju+Q@mail.gmail.com>
Date: Mon, 18 Apr 2011 09:46:36 +0100
Message-ID: <1303116396.5518.79.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@o-hand.com
Subject: Re: requesting input on specs for a new Poky build server
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
X-List-Received-Date: Mon, 18 Apr 2011 08:46:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Joe,

On Mon, 2011-04-11 at 14:50 -0700, Joe Sauer wrote:
> I have the pleasure of spec'ing out a new server for doing Poky builds
> (we are at Green 3.3.1).  As a reference point, my desktop machine is
> a quad-Xeon @ 2.5 GHz with 4GB of RAM and SATA disk.  I can do a full
> "clean" build for our LabQuest (armv5te) in 2 hours.
> 
> Here are some questions I would like to get feedback on regarding a
> build server:
> 
> 1.  Would I get better build time going with more procs (8?) or faster
> procs (3+ GHz)?
> 
> 2.  Are SATA drives OK, or should I go with RAID to get better R/W
> performance?
> 
> 3.  If I have to choose one or the other, should I go with faster
> procs or faster disk I/O?

Good questions and I'm not sure I have a definitive answer for you. Some
parts of the build are I/O bound, some are CPU bound and I think you
could see benefits by improving both at this point in time. I'd suspect
CPU still wins as the bigger bottleneck though. Disk I/O can partly be
worked around by a little more RAM.

Cheers,

Richard


