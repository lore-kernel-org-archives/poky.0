Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE975E0124B
	for <poky@yoctoproject.org>; Tue, 30 Aug 2011 02:34:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7U9Ygvw017739;
	Tue, 30 Aug 2011 10:34:42 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15446-07; Tue, 30 Aug 2011 10:34:38 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7U9Ya3i017733
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 30 Aug 2011 10:34:37 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Akshat Saha <akshat.embedded@gmail.com>
In-Reply-To: <CAJrrM567cYtH6C--o=eZtsObmkqfUU=MROTvKnquDEY=o2-N0Q@mail.gmail.com>
References: <CAJrrM567cYtH6C--o=eZtsObmkqfUU=MROTvKnquDEY=o2-N0Q@mail.gmail.com>
Date: Tue, 30 Aug 2011 10:34:26 +0100
Message-ID: <1314696866.5939.306.camel@rex>
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
X-List-Received-Date: Tue, 30 Aug 2011 09:34:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-08-30 at 11:41 +0530, Akshat Saha wrote:
> HI,
> 
> I am facing the following error while trying to execute some
> dynamically linked binaries. Also find the readelf, strace and ldd
> logs attached with respect to "file" command.
> 
> ERROR: -sh: file: not found
> 
> 
> Please help me find the solution. 

A long shot but does /lib64/ld-linux-x86-64.so.2 exist on your system?

Cheers,

Richard



