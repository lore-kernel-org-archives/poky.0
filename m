Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D002E009E6; Mon, 20 Jul 2015 01:58:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C964E00A26
	for <poky@yoctoproject.org>; Mon, 20 Jul 2015 01:58:05 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t6K8vxbF026871; Mon, 20 Jul 2015 09:57:59 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Gdy_wCrRnOdN; Mon, 20 Jul 2015 09:57:59 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t6K8viLw026865
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 20 Jul 2015 09:57:55 +0100
Message-ID: <1437382664.27687.1.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Clay D. Montgomery" <clay@montgomery1.com>
Date: Mon, 20 Jul 2015 09:57:44 +0100
In-Reply-To: <55AAB89C.20601@montgomery1.com>
References: <55AAB89C.20601@montgomery1.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: What happened to update-rc.d?
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
X-List-Received-Date: Mon, 20 Jul 2015 08:58:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2015-07-18 at 15:35 -0500, Clay D. Montgomery wrote:
> Hello,
> 
>      I just updated to the Dizzy release 1.7.2 (from Daisy 1.6.3) and I 
> am surprised to find that update-rc.d is missing from the file system. 
> Can someone please tell me if it was removed intentionally and if so, 
> what am I supposed to use instead?

update-rc.d is still very much part of the system so no, it wasn't
intentionally removed. Its hard to say why your image wouldn't contain
it unless nothing in the image needed it (e.g. with systemd?).

Cheers,

Richard

>     Perhaps I caused this problem by making changes to my kernel 
> configuration with menuconfig, but I don't think so.
> 
> I build Poky for the Freescale Wandboard-quad platform detailed here:  
> http://freescale.github.io/doc/release-notes/1.7/
> 
> Thanks, Clay Montgomery



