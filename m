Return-Path: <mail@webthatworks.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93753E0088C; Wed,  4 Nov 2015 07:54:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp207.alice.it (smtp207.alice.it [82.57.200.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55BBEE00343
	for <poky@yoctoproject.org>; Wed,  4 Nov 2015 07:54:22 -0800 (PST)
Received: from caronte.home.webthatworks.it (87.9.4.118) by smtp207.alice.it
	(8.6.060.28) id 562CAA6901982A99 for poky@yoctoproject.org;
	Wed, 4 Nov 2015 16:54:13 +0100
Received: from gloom.home.webthatworks.it (gloom.home.webthatworks.it
	[192.168.1.14])
	by caronte.home.webthatworks.it (Postfix) with ESMTP id 655F06FE24C7
	for <poky@yoctoproject.org>; Wed,  4 Nov 2015 16:54:16 +0100 (CET)
Received: from [IPv6:::1] (localhost [IPv6:::1])
	by gloom.home.webthatworks.it (Postfix) with ESMTP id 314295E03C0
	for <poky@yoctoproject.org>; Wed,  4 Nov 2015 16:54:10 +0100 (CET)
To: poky@yoctoproject.org
From: Ivan Sergio Borgonovo <mail@webthatworks.it>
Organization: http://www.WebThatWorks.it
Message-ID: <563A2A22.7010202@webthatworks.it>
Date: Wed, 4 Nov 2015 16:54:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.3.0
MIME-Version: 1.0
Subject: avoid to download kernel when bitbake -c configure virtual/kernel
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
X-List-Received-Date: Wed, 04 Nov 2015 15:54:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I've learnt that to develop kernel patches I should

bitbake -c cleanall virtual/kernel
bitbake -c configure virtual/kernel
...

bitbake -c configure virtual/kernel
wants to download the kernel once more

Did I do something wrong or is there a way to avoid to download the 
kernel over and over other than setting up a proxy?

thanks

-- 
Ivan Sergio Borgonovo
http://www.webthatworks.it


