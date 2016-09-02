Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33CD4E00EBB; Fri,  2 Sep 2016 07:35:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB32BE00EAF
	for <poky@yoctoproject.org>; Fri,  2 Sep 2016 07:35:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u82EY5bf014648; Fri, 2 Sep 2016 15:35:10 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id KLtivKwCUtvO; Fri,  2 Sep 2016 15:35:10 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u82EZ6eG014737
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 2 Sep 2016 15:35:07 +0100
Message-ID: <1472826906.29583.167.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Evade Flow <evadeflow@gmail.com>, Christopher Larson <clarson@kergoth.com>
Date: Fri, 02 Sep 2016 15:35:06 +0100
In-Reply-To: <CAMAb8ZOEiy_u4MtGF7xXMR9w8AYFwCPSTmbOZ70mBj7_e1gbSQ@mail.gmail.com>
References: <CAMAb8ZPvCV1N_BYEC_XoVsfeUH1a3fy7eMe8Vffg-yPQveyFyg@mail.gmail.com>
	<CABcZANmtT7NNLNJOq=pBAnN5K6OjF-XyHS4OOPgnbHyDP6LK_g@mail.gmail.com>
	<CAMAb8ZOEiy_u4MtGF7xXMR9w8AYFwCPSTmbOZ70mBj7_e1gbSQ@mail.gmail.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: Poky <poky@yoctoproject.org>
Subject: Re: When SRCREV is set to AUTOREV, what triggers (re-)fetching?
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
X-List-Received-Date: Fri, 02 Sep 2016 14:35:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-09-02 at 10:08 -0400, Evade Flow wrote:
> > Add ${SRCPV} to your PV (see various recipes in oe-core for
> examples), then it’ll know to re-run the tasks when srcrev changes.
> 
> Thanks for confirming that this is 'supposed' to work, that's great
> news! Actually, I've already included SRCPV in PV. Here's my recipe,
> shorn of comments and an uninteresting do_install_append() function:

You don't have BB_SRCREV_POLICY set to cache anywhere do you? It
defaults to clear which is what you want...

Does "rm tmp/cache -r" 'fix' make it see new revisions? Knowing that
would at least help track down the kind of problem you're seeing.

What does the full PV look like after expansion? Does it contain an
older truncated SRCREV ?

Cheers,

Richard

