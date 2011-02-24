Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 239DA4C8004D
	for <poky@pokylinux.org>; Thu, 24 Feb 2011 09:40:41 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1OFef6p029861
	for <poky@pokylinux.org>; Thu, 24 Feb 2011 15:40:41 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 29467-07 for <poky@pokylinux.org>;
	Thu, 24 Feb 2011 15:40:37 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1OFeXHf029855
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@pokylinux.org>; Thu, 24 Feb 2011 15:40:36 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@pokylinux.org>
In-Reply-To: <1297889342.11289.302.camel@rex>
References: <1297807550.11289.171.camel@rex> <1297889342.11289.302.camel@rex>
Date: Thu, 24 Feb 2011 15:40:30 +0000
Message-ID: <1298562030.26736.194.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Re: Further build profiling info
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Feb 2011 15:40:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-16 at 20:49 +0000, Richard Purdie wrote:
> We've had some fixes into master which:
> 
> * improve the pseudo-native build time (worth 2 minutes)
> * shorten the rpm rootfs creation times
> * enabling parallel builds for some packages
> * Improve the task processing/creation latency (worth 1-2 minutes)
> 
> The time for the same build as above is now taking:
> 
> real	97m1.204s
> user	385m24.460s
> sys	48m30.990s
> (4848 tasks)
> 
> and this is despite adding in some extra documentation generation pieces
> too (which accounts for the extra user time) so quite a nice
> improvement. Nice work but I think there is further low hanging fruit to
> gain a little more time back too! :)

I've just run a test of Poky master and we've regressed to:

real	106m46.524s
user	385m28.050s
sys	47m30.990s
(4948 tasks)

At this point I can only think its the extra documentation dependencies
that have changed things. I'm more than a little disappointed in
this :(.

Cheers,

Richard





