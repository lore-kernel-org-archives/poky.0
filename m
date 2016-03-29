Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC4DDE008EE; Tue, 29 Mar 2016 15:05:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47AA2E00566
	for <poky@yoctoproject.org>; Tue, 29 Mar 2016 15:05:46 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u2TM5iAY025812; Tue, 29 Mar 2016 23:05:44 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id onywsm95TYG9; Tue, 29 Mar 2016 23:05:43 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u2TM5fxB025808
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 29 Mar 2016 23:05:42 +0100
Message-ID: <1459289141.21672.41.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Freyther <holger@freyther.de>, poky@yoctoproject.org
Date: Tue, 29 Mar 2016 23:05:41 +0100
In-Reply-To: <541E63F7-405C-4FB4-A264-074F8BB31E62@freyther.de>
References: <541E63F7-405C-4FB4-A264-074F8BB31E62@freyther.de>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: uninnative and md5 checksum?
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
X-List-Received-Date: Tue, 29 Mar 2016 22:05:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2016-03-23 at 12:23 +0100, Holger Freyther wrote:
> Hi,
> 
> our jenkins started to fail with yocto-master and I started to take a
> look. I noticed that uninative binaries are being downloaded from the
> network. It is not great to download binaries from the network and
> execute but fair enough there is a checksum.
> 
> But the choice of md5 as checksum is a bit odd (md5 and sha1 are
> effectively broken), can this be moved to sha3 or sha256sum?

We use the fetcher's checksuming support so I guess sha256 would be the
better choice. It can be changed, at the expense of a bit of pain
making sure all the changes work smoothly.

Cheers,

Richard

