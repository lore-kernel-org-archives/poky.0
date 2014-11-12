Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA060E008E3; Wed, 12 Nov 2014 05:21:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B0A7E008CA
	for <poky@yoctoproject.org>; Wed, 12 Nov 2014 05:21:25 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sACDKmSc003808; Wed, 12 Nov 2014 13:20:48 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id pMz_DelwFp17; Wed, 12 Nov 2014 13:20:48 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sACDKZxK003805
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 12 Nov 2014 13:20:46 GMT
Message-ID: <1415798471.2820.49.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Hans Peter Freyther <holger@freyther.de>
Date: Wed, 12 Nov 2014 13:21:11 +0000
In-Reply-To: <20141107165823.GV15403@xiaoyu.lan>
References: <20141102200530.GE6886@xiaoyu.lan> <1414965815.5111.1.camel@ted>
	<20141103072256.GB6154@xiaoyu.lan> <1415001899.5111.3.camel@ted>
	<20141103151218.GD6154@xiaoyu.lan> <1415029029.5111.21.camel@ted>
	<20141107165823.GV15403@xiaoyu.lan>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: gcc 4.9.1 and stdint.h
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
X-List-Received-Date: Wed, 12 Nov 2014 13:21:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-11-07 at 17:58 +0100, Holger Hans Peter Freyther wrote:
> On Mon, Nov 03, 2014 at 03:37:09PM +0000, Richard Purdie wrote:
> 
> > We prefer deterministic builds rather than some toolchain installations
> > that work and some that don't.
> 
> Do you intend to create a script like the current environment that
> could work with "bare" apps (like u-boot, linux kernel, initial
> bootloaders, etc.)?

I'd like to understand what differences such an environment script would
have but would be happy to consider it...

Cheers,

Richard


