Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAC2BE013A6
	for <poky@yoctoproject.org>; Tue, 17 Apr 2012 14:20:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HLKsZm023226;
	Tue, 17 Apr 2012 22:20:54 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20408-03; Tue, 17 Apr 2012 22:20:50 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HLKkhu023217
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 17 Apr 2012 22:20:47 +0100
Message-ID: <1334697649.616.138.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 17 Apr 2012 22:20:49 +0100
In-Reply-To: <4F8DA181.9070005@mlbassoc.com>
References: <4F8493BB.5070400@mlbassoc.com> <1334100422.10826.99.camel@ted>
	<4F84CCE3.1060504@mlbassoc.com> <4F84E00D.7030302@mlbassoc.com>
	<4F8D5F61.1010002@mlbassoc.com> <1334674913.616.98.camel@ted>
	<4F8D8A73.3030408@mlbassoc.com> <1334677494.616.101.camel@ted>
	<4F8D934D.9070704@mlbassoc.com> <1334679589.616.106.camel@ted>
	<4F8DA181.9070005@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: SRC checksum checking broken
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
X-List-Received-Date: Tue, 17 Apr 2012 21:20:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-17 at 10:59 -0600, Gary Thomas wrote:
> On 2012-04-17 10:19, Richard Purdie wrote:
> Well, it seems that the checksums are encouraged, if not required, these days.
> I was just making sure that they actually work & in my opinion, it shouldn't
> matter how you got the file, the checksums should still be checked and match.

You can argue this both ways. I'm leaning that direction although it has
its risks.

> Sadly, this is much worse.  It even [somehow] reached "through" my
> mirror setup and deleted the file on the backing store (i.e. the
> file /work/misc/Poky/sources/busybox-1.19.4.tar.bz2 gets deleted
> when the checksum fails even though it's part of the own-mirror)

Was that the only issue? I can see how it managed to do that, I agree it
shouldn't :/.

Cheers,

Richard


