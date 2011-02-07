Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E3F274C80878
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 09:40:02 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p17Fe27j017886
	for <poky@yoctoproject.org>; Mon, 7 Feb 2011 15:40:02 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 17438-08 for <poky@yoctoproject.org>;
	Mon,  7 Feb 2011 15:39:58 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p17FdpPs017877
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@yoctoproject.org>; Mon, 7 Feb 2011 15:39:54 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@yoctoproject.org>
Date: Mon, 07 Feb 2011 15:39:48 +0000
Message-ID: <1297093188.1350.16599.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Fetcher Issues
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
X-List-Received-Date: Mon, 07 Feb 2011 15:40:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I can only apologise for the disruption with the fetchers at the moment.
There are some serious bugs floating around and its not the user
experience I'd like to be presenting to users.

The reason for the problems is that some corner cases were found in
wider testing that individual testing didn't show up and when we've
tried to fix those, the integrity of the whole fetcher has crumbled
apart :(.

This reinforces my belief that we need to improve the code in question
before the next release and I'm continuing to work on that.

As a result this morning I merged in several further chunks of updates
and am now busy iterating through resolving the fallout from those
changes. The code is getting cleaner and more understandable but there
are so many corner cases and optimisations involved its a complex
problem to unravel.

Thanks for the patience whilst we get this resolved.

Cheers,

Richard


