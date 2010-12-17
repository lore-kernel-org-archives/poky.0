Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 052624C80B71
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 16:44:25 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBHMjgZR014199
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 22:45:43 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id M4w3t6RoLtWu for <poky@yoctoproject.org>;
	Fri, 17 Dec 2010 22:45:42 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBHMjd7W014195
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 22:45:41 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@yoctoproject.org>
In-Reply-To: <1291899386.1554.827.camel@rex>
References: <1291899386.1554.827.camel@rex>
Date: Fri, 17 Dec 2010 22:44:05 +0000
Message-ID: <1292625845.25087.586.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: Re: Performance regression in bitbake and exec() vs fork()
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
X-List-Received-Date: Fri, 17 Dec 2010 22:44:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

To update on the current status of bitbake exec() vs fork(), we now have
the following branch:

http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rpurdie/newpseudo

which changes Poky to use the new version of pseudo, adds in an
appropriate wrapper script for bitbake and starts enabling/disabling
pseudo as appropriate as well as switching back to fork() instead of
exec().

We've still trying to work out exactly what this means for performance.
Things 'feel' very much faster and I've at least one use case showing a
double in speed showing the increase in task execution speed of fairly
empty tasks. My test was:

rm 'sstate-*qemu-config*'
MACHINE=qemux86 bitbake qemu-config -c clean
time MACHINE=qemux86 bitbake qemu-config

On the current master branch the timings were:

real 1m8.529s
user 0m58.870s
sys 0m4.690s

Whilst with newpseudo:

real 0m34.264s
user 0m26.200s
sys 0m2.340s

This is good as it gets us back to a much snappier feeling bitbake.

Mark has some numbers which don't quiet add up with improvements in read
and sys but an increase in user too, we're still looking to understand
them. I'd like to give the autobuilder a pass over these changes when we
have the opportunity and see what that real world performance looks
like.

Its likely that the speedups will be greatest on machines with small
numbers of cores which are primarily cpu bound. The benefits will
decrease on disk IO bound systems with large number of cores.

Cheers,

Richard



