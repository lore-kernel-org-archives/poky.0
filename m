Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 205004C80878
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 10:55:32 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p17GtXlR018796;
	Mon, 7 Feb 2011 16:55:33 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18536-04; Mon,  7 Feb 2011 16:55:29 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p17GtOWO018790
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 7 Feb 2011 16:55:24 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D501DFC.6020206@windriver.com>
References: <4D500535.3070505@mlbassoc.com>
	<1297094804.1350.16816.camel@rex> <4D501B82.4080505@mlbassoc.com>
	<4D501DFC.6020206@windriver.com>
Date: Mon, 07 Feb 2011 16:55:20 +0000
Message-ID: <1297097720.1350.17211.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: eglibc configurability
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
X-List-Received-Date: Mon, 07 Feb 2011 16:55:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-07 at 10:29 -0600, Mark Hatle wrote:
> Could you find the related init script and point me to the contents.  I don't
> see any initscripts in the eglibc integration.  The only thing I see is a switch
> in the locale generation between on target, on host and via QEMU.  I'm wondering
> if maybe this is being triggered?

See the .bbclass file, that contains the postinsts script code but it
should be getting disabled.

Cheers,

Richard


