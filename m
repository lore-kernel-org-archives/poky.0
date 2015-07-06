Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEA13E009FA; Mon,  6 Jul 2015 11:58:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 514 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 Jul 2015 11:58:34 PDT
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE5EE00978
	for <poky@yoctoproject.org>; Mon,  6 Jul 2015 11:58:34 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t66IntM0019676; Mon, 6 Jul 2015 19:49:55 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id PAkWPx-dZRP3; Mon,  6 Jul 2015 19:49:55 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t66InfkV019670
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 6 Jul 2015 19:49:52 +0100
Message-ID: <1436208581.27597.67.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tanu Kaskinen <tanu.kaskinen@linux.intel.com>
Date: Mon, 06 Jul 2015 19:49:41 +0100
In-Reply-To: <1436202135.2486.7.camel@tkkaskin-mobl3.ger.corp.intel.com>
References: <1436200247-9112-1-git-send-email-tanu.kaskinen@linux.intel.com>
	<559AAE9D.5010500@linux.intel.com>
	<1436202135.2486.7.camel@tkkaskin-mobl3.ger.corp.intel.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] maintainers.inc: reassign audio recipe maintainership
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
X-List-Received-Date: Mon, 06 Jul 2015 18:58:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2015-07-06 at 20:02 +0300, Tanu Kaskinen wrote:
> On Mon, 2015-07-06 at 19:36 +0300, Alexander Kanavin wrote:
> > On 07/06/2015 07:30 PM, Tanu Kaskinen wrote:
> > b) will you continue to maintain the recipes?
> 
> I'd like to, but I haven't agreed about it with anyone. If the Yocto
> project wishes to keep the recipe maintenance within Intel/Windriver,
> that's fine by me.

There is no rule which says maintainers have to be Intel/Windriver. We
have several people who are not and the Yocto Project actively
encourages that (Khem comes to mind as a good example but there are
others). What we do ask is that people involved as maintainers do look
after the recipes they're associated with. 

I'd also add that if at any point they can't, please do tell us so we
know, we'd prefer to than the alternatives.

Cheers,

Richard


