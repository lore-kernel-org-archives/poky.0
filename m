Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 09D354C800C0
	for <poky@yoctoproject.org>; Wed, 18 May 2011 05:17:00 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4IADoIm026756;
	Wed, 18 May 2011 11:13:50 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26619-03; Wed, 18 May 2011 11:13:46 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4IADixV026750
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 18 May 2011 11:13:45 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gerard van den Bosch <gerard@de-haardt.com>
In-Reply-To: <4DD39237.7040304@de-haardt.com>
References: <4DD39237.7040304@de-haardt.com>
Date: Wed, 18 May 2011 11:13:41 +0100
Message-ID: <1305713621.3424.309.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@yoctoproject.org>
Subject: Re: Disable screen standby
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
X-List-Received-Date: Wed, 18 May 2011 10:17:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-18 at 11:32 +0200, Gerard van den Bosch wrote:
> My display is always going black after ~10 minutes, I assume this is
> standby.
> In which recipe can I disable this or change the timeout?

Its the kernel terminal/console screen blanking which does this. A quick
google found:

http://www.cyberciti.biz/tips/linux-disable-screen-blanking-screen-going-blank.html

which shows how to disable it on the device. I think you might have to
patch the kernel to disable it by default. There may be an option in the
kernel config, I'm not sure.

Hopefully this at least gives you information on where to start looking.
If you do figure it out please report back so others can benefit! :)

Cheers,

Richard





