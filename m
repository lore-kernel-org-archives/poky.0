Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD8C6E01275
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 02:26:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q989Nwb2017631;
	Mon, 8 Oct 2012 10:23:58 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17236-02; Mon,  8 Oct 2012 10:23:53 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q989NmNA017625
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Mon, 8 Oct 2012 10:23:49 +0100
Message-ID: <1349688232.15658.104.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Eric =?ISO-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Date: Mon, 08 Oct 2012 10:23:52 +0100
In-Reply-To: <20121008102455.02a03cd3@eb-e6520>
References: <cover.1349666145.git.bruce.ashfield@windriver.com>
	<af84c18279bdf7c2c7f5ee5d5e88f7ce666f3a29.1349666145.git.bruce.ashfield@windriver.com>
	<20121008102455.02a03cd3@eb-e6520>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: mark.asselstine@windriver.com, poky@yoctoproject.org
Subject: Re: [PATCH 1/1] linux-yocto-bsps: update hardware reference BSPs to v3.4.11
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
X-List-Received-Date: Mon, 08 Oct 2012 09:26:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2012-10-08 at 10:24 +0200, Eric Bénard wrote:
> Hi Bruce,
> 
> Le Sun,  7 Oct 2012 23:41:31 -0400,
> Bruce Ashfield <bruce.ashfield@windriver.com> a écrit :
> 
> > The hardware reference BSPs are missing the update to 3.4.11
> > that the qemu* machines received several weeks ago.
> > 
> > Bumping to 3.4.11 specifically addresses the segfaults being
> > seen with rpm on the beagleboard.
> > 
> 3.4.13 is out maybe worth to directly update to the latest stable ?

At this point, 3.4.11 has had some testing, we've not done any testing
with 3.4.13.

The trouble is we're due -rc4 tomorrow which is our final build for the
release. I'm extremely reluctant to make *any* kernel changes at this
point but it looks like this segfault issue is going to force my hand
and I'm going to have to take the update.

I'm already doing some mitigation type work of pretesting the builds in
advance to try and ensure -rc4 is successful and we can take this
change. Adding 3.4.13 into the mix sounds nice in theory but
substantially increases the risk. Keep in mind this bug we're trying to
fix crept in through the "stable" updates in the first place :(

Cheers,

Richard




