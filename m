Return-Path: <mail@webthatworks.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70C2CE00E25; Thu,  8 Oct 2015 14:28:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp206.alice.it (smtp206.alice.it [82.57.200.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51128E006F1
	for <poky@yoctoproject.org>; Thu,  8 Oct 2015 14:28:36 -0700 (PDT)
Received: from caronte.home.webthatworks.it (79.25.128.165) by
	smtp206.alice.it (8.6.060.28)
	id 56139B8300860CB0 for poky@yoctoproject.org;
	Thu, 8 Oct 2015 23:28:34 +0200
Received: from gloom.home.webthatworks.it (gloom.home.webthatworks.it
	[192.168.1.14])
	by caronte.home.webthatworks.it (Postfix) with ESMTP id 3AD186FE039D
	for <poky@yoctoproject.org>; Thu,  8 Oct 2015 23:28:34 +0200 (CEST)
Received: from [IPv6:::1] (localhost [IPv6:::1])
	by gloom.home.webthatworks.it (Postfix) with ESMTP id 1080A5E01C3
	for <poky@yoctoproject.org>; Thu,  8 Oct 2015 23:27:41 +0200 (CEST)
To: poky@yoctoproject.org
References: <5616CE9C.2040001@webthatworks.it> <5616D645.2030308@mlbassoc.com>
From: Ivan Sergio Borgonovo <mail@webthatworks.it>
Organization: http://www.WebThatWorks.it
Message-ID: <5616DFCC.2050107@webthatworks.it>
Date: Thu, 8 Oct 2015 23:27:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.2.0
MIME-Version: 1.0
In-Reply-To: <5616D645.2030308@mlbassoc.com>
Subject: Re: check gcc parameters without recompiling
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
X-List-Received-Date: Thu, 08 Oct 2015 21:28:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/08/2015 10:47 PM, Gary Thomas wrote:

> Have you looked at the logs?  Complete build logs are found
> in ${TMPDIR}/work/*/<package>/<version>/temp/, where '*' is
> your target architecture or platform name.  In this directory
> you'll find a file 'log.do_compile' which should show you the
> output generated from the compile step.

Thanks

-- 
Ivan Sergio Borgonovo
http://www.webthatworks.it


