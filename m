Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CEF5E4C80908
	for <poky@pokylinux.org>; Tue, 15 Feb 2011 16:06:03 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1FM63Js031101
	for <poky@pokylinux.org>; Tue, 15 Feb 2011 22:06:03 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 30590-08 for <poky@pokylinux.org>;
	Tue, 15 Feb 2011 22:05:59 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1FM5sOX031095
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@pokylinux.org>; Tue, 15 Feb 2011 22:05:54 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@pokylinux.org>
Date: Tue, 15 Feb 2011 22:05:50 +0000
Message-ID: <1297807550.11289.171.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Further build profiling info
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
X-List-Received-Date: Tue, 15 Feb 2011 22:06:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I'm sending these notes to the list since they might be useful to others
and it archives them.

Timing a build with license.bbclass:
consisting of 4847 tasks:

real 107m23.857s
user 376m31.640s
sys 46m51.020s

Without license.bbclass:
4409 tasks:

real 107m46.881s
user 369m6.670s
sys 46m19.890s

Without the setscene task and without license.bbclass:

3970 tasks:

real	105m36.940s
user	364m6.900s
sys	45m33.950s

which makes sense as setscene is a critical path dependency whilst the
license checks are not.

So a 120 second reduction for a drop of 439 tasks so a 0.27 second
overhead per task assuming they were all critical path. Numbers from the
graph suggested a 0.5 second task overhead so perhaps 50% were critical
path.

Interesting numbers and it suggests the situation isn't as bad as the
graph makes out though.

Cheers,

Richard



