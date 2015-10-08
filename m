Return-Path: <mail@webthatworks.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D1C5E00C9D; Thu,  8 Oct 2015 13:15:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp206.alice.it (smtp206.alice.it [82.57.200.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74C28E0086D
	for <poky@yoctoproject.org>; Thu,  8 Oct 2015 13:15:17 -0700 (PDT)
Received: from caronte.home.webthatworks.it (79.25.128.165) by
	smtp206.alice.it (8.6.060.28)
	id 56139B8300843792 for poky@yoctoproject.org;
	Thu, 8 Oct 2015 22:15:14 +0200
Received: from gloom.home.webthatworks.it (gloom.home.webthatworks.it
	[192.168.1.14])
	by caronte.home.webthatworks.it (Postfix) with ESMTP id 2E58F6FE039D
	for <poky@yoctoproject.org>; Thu,  8 Oct 2015 22:15:14 +0200 (CEST)
Received: from [IPv6:::1] (localhost [IPv6:::1])
	by gloom.home.webthatworks.it (Postfix) with ESMTP id 063F75E01C3
	for <poky@yoctoproject.org>; Thu,  8 Oct 2015 22:14:21 +0200 (CEST)
To: poky@yoctoproject.org
From: Ivan Sergio Borgonovo <mail@webthatworks.it>
Organization: http://www.WebThatWorks.it
Message-ID: <5616CE9C.2040001@webthatworks.it>
Date: Thu, 8 Oct 2015 22:14:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.2.0
MIME-Version: 1.0
Subject: check gcc parameters without recompiling
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
X-List-Received-Date: Thu, 08 Oct 2015 20:15:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'd like to check how some stuff has been compiled after I've already 
generated an image.

How can I check it without forcing an actual rebuild?
If not how can I at least restrict the rebuilt to something specific and 
enable some sort of log just to test if gcc option where set as I expect?

Is this the right list for asking such kind of questions?

thanks

-- 
Ivan Sergio Borgonovo
http://www.webthatworks.it


