Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99C33E0030B
	for <poky@yoctoproject.org>; Sun, 11 Dec 2011 14:12:26 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBBMCL8B022433;
	Sun, 11 Dec 2011 22:12:21 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22269-01; Sun, 11 Dec 2011 22:12:18 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBBMCCjE022427
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 11 Dec 2011 22:12:14 GMT
Message-ID: <1323641532.2731.5.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 11 Dec 2011 22:12:12 +0000
In-Reply-To: <4EE4D5FA.3050604@gherzan.ro>
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Sun, 11 Dec 2011 22:12:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-12-11 at 18:10 +0200, Andrei Gherzan wrote:
> I tried something else today.
> 
> I created from scratch a new image-minimal and i added wpa-supplicant to 
> IMAGE_INSTALL - rpm's names are wpa-supplicant-[stuff]. After finishing 
> this image i could see that gnutls-extra is again in rootfs even if i 
> excluded GPLv3 from build. After searching a little i could see that 
> gnutls is a dependency for wpa-supplicant and, in the generated gnutls 
> spec, that gnutls-extra is required by gnutls-bin.
> 
> If bin requires extra than this build should have ended with an error... 
> no provider as GPLv3 excluded. Am i right?

Are you running a build which includes GPLv3, then running a build
excluding GPLv3? I suspect doing that could confuse the system a little
but I'm not sure exactly what the issue would be.

If on the other hand you always exclude GPLv3 from a given build
directory, there shouldn't be any way for it to become contaminated.

There are various changes in master which are working towards making the
license checking a build and runtime check rather than the build time
check in 1.1.

Cheers,

Richard


