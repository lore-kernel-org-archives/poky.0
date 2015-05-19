Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71279E009D8; Tue, 19 May 2015 00:32:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 919B8E0099B
	for <poky@yoctoproject.org>; Tue, 19 May 2015 00:32:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t4J7WYpO024649; Tue, 19 May 2015 08:32:34 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 2RwuIiBQ32BM; Tue, 19 May 2015 08:32:34 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t4J7WKOT024639
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 19 May 2015 08:32:31 +0100
Message-ID: <1432020740.11357.111.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Randy Witt <randy.e.witt@linux.intel.com>, Scott Rifenbark
	<srifenbark@gmail.com>
Date: Tue, 19 May 2015 08:32:20 +0100
In-Reply-To: <555A26FC.3030304@linux.intel.com>
References: <CACj2azs1yrQ0fVuJhrgkDTj_kk5G=z4pqmNLjiLeNZFpQv-Lxg@mail.gmail.com>
	<555A26FC.3030304@linux.intel.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org, Nithyakala Sainath <nithisai@gmail.com>
Subject: Re: Multiple versions of libx11 are due to be built
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
X-List-Received-Date: Tue, 19 May 2015 07:32:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2015-05-18 at 10:53 -0700, Randy Witt wrote:
> On 05/17/2015 01:23 PM, Nithyakala Sainath wrote:
> > Hello,
> >
> > I want to understand the process of choosing a recipe by bitbake
> >
> > There is a libx11_1.3.2.bb in a layer called A with higher priority of 6.
> >
> > There is another libx11_1.4.0.bb in a layer called B with priority of 5.
> >
> > So bitbake sshould automatically pick up libx11  from A right ? Why is it
> > giving me error like:
> 
> " The precedence established through this variable stands regardless of a 
> recipe's version (PV variable). For example, a layer that has a recipe with a 
> higher PV value but for which the BBFILE_PRIORITY is set to have a lower 
> precedence still has a lower precedence."
> 
> The documentation definitely makes it sound like this is the case. However, it 
> sounds like the layer priority is most likely only taking effect when the 
> recipes are the same version.
> 
> Richard, does this sound like the documentation needs to be clarified or is this 
> a bug?

The docs likely need to be clarified that this applies if the two
recipes provide identical things. If one provides something and the
other does not, the behaviour is very different. Here, that message
means they are providing different things.

Cc: Scott in case he wants to clarify this in the docs and/or add more
information about this error message (see my other reply to this
thread).

Cheers,

Richard






