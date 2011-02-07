Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 93A864C80097
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 10:57:53 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p17GvsHh018841;
	Mon, 7 Feb 2011 16:57:54 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18536-05; Mon,  7 Feb 2011 16:57:50 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p17GvlJu018835
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 7 Feb 2011 16:57:47 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D5023D8.7090106@mlbassoc.com>
References: <4D500535.3070505@mlbassoc.com>
	<1297094804.1350.16816.camel@rex> <4D501B82.4080505@mlbassoc.com>
	<4D501DFC.6020206@windriver.com>  <4D5023D8.7090106@mlbassoc.com>
Date: Mon, 07 Feb 2011 16:57:43 +0000
Message-ID: <1297097863.1350.17229.camel@rex>
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
X-List-Received-Date: Mon, 07 Feb 2011 16:57:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-07 at 09:54 -0700, Gary Thomas wrote:
> On 02/07/2011 09:29 AM, Mark Hatle wrote:
> > Could you find the related init script and point me to the contents.  I don't
> > see any initscripts in the eglibc integration.  The only thing I see is a switch
> > in the locale generation between on target, on host and via QEMU.  I'm wondering
> > if maybe this is being triggered?
> 
> This could be what I'm seeing.  I have ENABLE_BINARY_LOCALE_GENERATION disabled
> in my local.conf (I had troubles with QEMU-ARM on Fedora in the past and this
> was the way around it).  It looks like that may be pushing the locale compilation
> to the target.

Correct. The locales have to be generated somewhere!

You turned them off on the build machine so they run on the target. All
is functioning as it should.

FWIW, cross locale gen doesn't use qemu now and is a lot faster so
perhaps you could turn it back on ;-).

Cheers,

Richard




