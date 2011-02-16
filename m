Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B9A24C80093
	for <poky@pokylinux.org>; Wed, 16 Feb 2011 14:49:15 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1GKnEhl014836
	for <poky@pokylinux.org>; Wed, 16 Feb 2011 20:49:14 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 14624-03 for <poky@pokylinux.org>;
	Wed, 16 Feb 2011 20:49:10 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1GKn4Ck014830
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@pokylinux.org>; Wed, 16 Feb 2011 20:49:08 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@pokylinux.org>
In-Reply-To: <1297807550.11289.171.camel@rex>
References: <1297807550.11289.171.camel@rex>
Date: Wed, 16 Feb 2011 20:49:02 +0000
Message-ID: <1297889342.11289.302.camel@rex>
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
X-List-Received-Date: Wed, 16 Feb 2011 20:49:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-15 at 22:05 +0000, Richard Purdie wrote:
> I'm sending these notes to the list since they might be useful to others
> and it archives them.
> 
> Timing a build with license.bbclass:
> consisting of 4847 tasks:
> 
> real 107m23.857s
> user 376m31.640s
> sys 46m51.020s
> 
> Without license.bbclass:
> 4409 tasks:
> 
> real 107m46.881s
> user 369m6.670s
> sys 46m19.890s
> 
> Without the setscene task and without license.bbclass:
> 
> 3970 tasks:
> 
> real	105m36.940s
> user	364m6.900s
> sys	45m33.950s
> 
> which makes sense as setscene is a critical path dependency whilst the
> license checks are not.

We've had some fixes into master which:

* improve the pseudo-native build time (worth 2 minutes)
* shorten the rpm rootfs creation times
* enabling parallel builds for some packages
* Improve the task processing/creation latency (worth 1-2 minutes)

The time for the same build as above is now taking:

real	97m1.204s
user	385m24.460s
sys	48m30.990s
(4848 tasks)

and this is despite adding in some extra documentation generation pieces
too (which accounts for the extra user time) so quite a nice
improvement. Nice work but I think there is further low hanging fruit to
gain a little more time back too! :)

Cheers,

Richard


