Return-Path: <442-103-8455@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF4E5E00E02; Thu, 22 Feb 2018 12:13:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FROM_STARTS_WITH_NUMS,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.7 FROM_STARTS_WITH_NUMS From: starts with several
	numbers
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [64.59.136.137 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Feb 2018 12:13:31 PST
Received: from smtp-out-so.shaw.ca (smtp-out-so.shaw.ca [64.59.136.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BAC4E00DB1
	for <poky@yoctoproject.org>; Thu, 22 Feb 2018 12:13:31 -0800 (PST)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id oxEBeEIvrLkozoxECevVeN; Thu, 22 Feb 2018 13:12:30 -0700
X-Authority-Analysis: v=2.3 cv=OeS28CbY c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=Op4juWPpsa0A:10 a=iGHA9ds3AAAA:8
	a=6vuWUUzYep4EBI8H1wgA:9 a=QEXdDO2ut3YA:10 a=9ZJ3Dt6qWd4A:10
	a=nM-MV4yxpKKO9kiQg6Ot:22
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <442-103-8455@kylheku.com>) id 1eoxEB-00053F-HR
	for poky@yoctoproject.org; Thu, 22 Feb 2018 12:12:27 -0800
To: poky@yoctoproject.org
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Date: Thu, 22 Feb 2018 12:12:27 -0800
From: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>
Message-ID: <39eb519f917df2f8fffea9038ddeaa4c@mail.kylheku.com>
X-Sender: 442-103-8455@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfDwW663ICuCF69lIwi2oY9JQQaXUDTNkenx+al/v+gHQGPuUKYVhvuF1ZkQ8+ye/qOmNkK6KtQ4Z/Mx82qcACTtKlliJNVFlusTt7g5rp8L5N5XbTVFM
	UVKuZ/0fsJ+JcLv/k5TOkFr7CBFjajpC4TsVBUNEO4I9y/S7THagv56+qnAoZCwuiy/G4S+VA7aI+g==
Subject: Recompiles of "externalsrc" package in Yocto/Poky: root cause?
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
X-List-Received-Date: Thu, 22 Feb 2018 20:13:31 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

Hi All,

This is in reference to this 2016 thread, regarding the behavior of the=20
externalsrc .bbclass:

https://lists.yoctoproject.org/pipermail/poky/2016-June/010572.html

I have run into the problem (using Yocto 2.2).

There definitely are not any files in the source tree being regenerated=20
by the build. How I know that is that the build is done in a separate=20
build directory, where those files are placed. (The package in question=20
is the kernel; it does things like increment the .version file.)

Here is a possible root cause:

I have noticed that during the build of the package, BitBake creates a=20
file called "singletask.lock" right in the source tree. This may be what=20
is picked up into the build.

The "externalsrc" class performs a "git add ." to create a temporary git=20
index which contains all local changes which is then hashed (clever=20
trick). However, it seems to be picking up that lock file!

When I add "singletask.lock" to the repo's .gitignore file, the build=20
stabilizes. If I then bitbake the tree, the kernel rebuilds one more=20
time (understandably, due to the change in .gitignore) but then=20
subsequent bitbakes no longer exhibit the rebuilding.

Cheers ...






