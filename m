Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6BFAB4C81065
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 08:15:50 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0LEHfVS005634; Fri, 21 Jan 2011 14:17:41 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Qc0TCutPT89v; Fri, 21 Jan 2011 14:17:41 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0LEGL3o005553
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 21 Jan 2011 14:16:22 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D386573.5020309@mlbassoc.com>
References: <4D3850B3.2030100@mlbassoc.com> <1295539103.2487.4.camel@scimitar>
	<0778F003-B27E-402C-BDE2-D7B3B7CA8CE9@dominion.thruhere.net>
	<4D386417.2040506@mlbassoc.com>  <4D386573.5020309@mlbassoc.com>
Date: Fri, 21 Jan 2011 14:14:18 +0000
Message-ID: <1295619259.14388.30696.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: What's taking so long??
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
X-List-Received-Date: Fri, 21 Jan 2011 14:15:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-20 at 09:40 -0700, Gary Thomas wrote:
> Note: I got tired of waiting for this (I needed to rebuild
> anyway) and typed ^C.  I got this dump which I don't understand:
> 
> NOTE: Sending SIGTERM to remaining 1 tasks
> Warning, worker left partial message: <event>(ilogging
> LogRecord
> p1
> (dp2
> S'taskpid'
> p3
> I23606
> sS'threadName'
> p4
> S'MainThread'
> p5
> sS'name'
> p6
> S'BitBake'
> p7
> sS'thread'
> p8
> I-1216357584
> sS'created'
> p9
> F1295541481.8053031
> sS'process'
> p10
> I23606
> sS'processName'
> p11
> S'MainProcess'
> p12
> sS'args'
> p13
> (tsS'module'
> p14
> S'__init__'
> p15
> sS'filename'
> p16
> S'__init__.py'
> p17
> sS'levelno'
> p18
> I20
> sS'exc_text'
> p19
> NsS'pathname'
> p20
> S'/home/local/poky-amltd/bitbake/lib/bb/__init__.py'
> p21
> sS'lineno'
> p22
> I85
> sS'msg'
> p23
> S'  /kernel/arch/arm/plat-s3c64xx/dev-audio.c'
> p24
> sS'exc_info'
> p25
> NsS'funcName'
> p26
> S'note'
> p27
> 
> What does it mean?  Maybe it helps understand the problem.

Its the internal representation of what you see as messages on the
bitbake console (output of a pickled LogRecord). The worker didn't
complete its queue so there was a partial message, it doesn't help work
out where the time is being spent sadly.

Cheers,

Richard


