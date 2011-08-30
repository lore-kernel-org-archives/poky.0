Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 437C1E0124B
	for <poky@yoctoproject.org>; Tue, 30 Aug 2011 04:38:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7UBcnVR018334;
	Tue, 30 Aug 2011 12:38:49 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15446-09; Tue, 30 Aug 2011 12:38:45 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7UBcb0p018328
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 30 Aug 2011 12:38:41 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Akshat Saha <akshat.embedded@gmail.com>
In-Reply-To: <CAJrrM54=ERn4W-KRLUS408p2YYL7Y4SVHJ8gVJeUTcHJriw0=g@mail.gmail.com>
References: <CAJrrM567cYtH6C--o=eZtsObmkqfUU=MROTvKnquDEY=o2-N0Q@mail.gmail.com>
	<1314696866.5939.306.camel@rex>
	<CAJrrM54=ERn4W-KRLUS408p2YYL7Y4SVHJ8gVJeUTcHJriw0=g@mail.gmail.com>
Date: Tue, 30 Aug 2011 12:38:26 +0100
Message-ID: <1314704306.5939.325.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Error Executing Binaries in Sugarbay Machine
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
X-List-Received-Date: Tue, 30 Aug 2011 11:38:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-08-30 at 15:57 +0530, Akshat Saha wrote:
> Yes, ld-linux-x86-64.so.2 is present but in /lib. There is no
> directory as /lib64.

That is your problem as the binaries have the /lib64 path encoded in
them. I suspect that if you created a symlink from /lib64 to /lib,
things would start working.

Are you using master and if so, which revision and was it a build from
scratch?

There have been a number of bugs in this area recently but they should
be fixed now...

Cheers,

Richard


