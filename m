Return-Path: <mail@webthatworks.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DAFDE00BC2; Thu, 15 Oct 2015 15:01:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp205.alice.it (smtp205.alice.it [82.57.200.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78D30E00B9E
	for <poky@yoctoproject.org>; Thu, 15 Oct 2015 15:01:17 -0700 (PDT)
Received: from caronte.home.webthatworks.it (87.8.144.45) by smtp205.alice.it
	(8.6.060.28) id 55F973570704FEEF for poky@yoctoproject.org;
	Fri, 16 Oct 2015 00:00:43 +0200
Received: from gloom.home.webthatworks.it (gloom.home.webthatworks.it
	[192.168.1.14])
	by caronte.home.webthatworks.it (Postfix) with ESMTP id 5604B6FE06A0
	for <poky@yoctoproject.org>; Fri, 16 Oct 2015 00:00:43 +0200 (CEST)
Received: from [IPv6:::1] (localhost [IPv6:::1])
	by gloom.home.webthatworks.it (Postfix) with ESMTP id 51A275E018F
	for <poky@yoctoproject.org>; Thu, 15 Oct 2015 23:59:43 +0200 (CEST)
References: <561FD3FB.9080606@webthatworks.it>
	<2253318.UlfHrrQpEp@peggleto-mobl.ger.corp.intel.com>
	<56201CA1.1010506@webthatworks.it>
	<CABcZAN=j2XWpw1M8=CDTt1bH7Sr1+YV23qg_xnFQjY9D2F18Ew@mail.gmail.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
From: Ivan Sergio Borgonovo <mail@webthatworks.it>
Organization: http://www.WebThatWorks.it
Message-ID: <562021CF.1030305@webthatworks.it>
Date: Thu, 15 Oct 2015 23:59:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.3.0
MIME-Version: 1.0
In-Reply-To: <CABcZAN=j2XWpw1M8=CDTt1bH7Sr1+YV23qg_xnFQjY9D2F18Ew@mail.gmail.com>
Subject: Re: [SOLVED]? Re: listing PACKAGES for a certain layer
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
X-List-Received-Date: Thu, 15 Oct 2015 22:01:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/2015 11:42 PM, Christopher Larson wrote:
> https://github.com/kergoth/bb 's search subcommand may also be of use.

bb contents seems the thing that is most likely what I'm looking for but 
giving a quick glance to the code it seems to relay on things to be 
already compiled in /tmp/work

thanks

-- 
Ivan Sergio Borgonovo
http://www.webthatworks.it


