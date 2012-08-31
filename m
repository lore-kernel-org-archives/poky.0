Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68C09E0044A
	for <poky@yoctoproject.org>; Thu, 30 Aug 2012 22:47:41 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7V5lc9r009154;
	Fri, 31 Aug 2012 06:47:38 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05772-06; Fri, 31 Aug 2012 06:47:33 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7V5lTlB009148
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Fri, 31 Aug 2012 06:47:31 +0100
Message-ID: <1346392048.16485.22.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 Aug 2012 22:47:28 -0700
In-Reply-To: <C593113E-E444-4463-BC0B-ED638A2963B0@gmail.com>
References: <C593113E-E444-4463-BC0B-ED638A2963B0@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: state broken
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
X-List-Received-Date: Fri, 31 Aug 2012 05:47:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-08-30 at 21:18 -0700, Khem Raj wrote:
> Hello
> 
> I am getting following errors today
> 
> ERROR: Error executing a python function in /work/yocto/poky/meta/recipes-devtools/m4/m4-native_1.4.16.bb:
> IOError: [Errno 2] No such file or directory: '/work/yocto/poky/build/tmp/sstate-control/master.list'

Sorry, I knew about this and had the fix but failed to squash it into
the commit when I merged it. A fix is in master now.

Cheers,

Richard


