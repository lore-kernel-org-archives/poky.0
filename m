Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4506E0055C;
	Sun, 30 Mar 2014 05:38:35 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2UCc6Xs009323; Sun, 30 Mar 2014 13:38:06 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id k_DS4muetYpC; Sun, 30 Mar 2014 13:38:05 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2UCc17J009319
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Sun, 30 Mar 2014 13:38:02 +0100
Message-ID: <1396183076.14790.47.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Sun, 30 Mar 2014 13:37:56 +0100
In-Reply-To: <1396134758.14790.32.camel@ted>
References: <1396031047.14790.24.camel@ted> <5335D450.1030007@windriver.com>
	<1396134758.14790.32.camel@ted>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: yocto-builds <yocto-builds@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	"saul.wold" <saul.wold@intel.com>, Denys Dmytriyenko <denys@ti.com>
Subject: Re: meta-yocto-bsp changes and 3.14
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
X-List-Received-Date: Sun, 30 Mar 2014 12:38:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2014-03-29 at 23:12 +0000, Richard Purdie wrote:
> One remaining issue is that u-boot may be breaking for beaglebone. I'm
> hoping Denys can help there.

http://autobuilder.yoctoproject.org/main/builders/nightly-arm/builds/21/steps/BuildImages_1/logs/stdio
http://autobuilder.yoctoproject.org/main/builders/nightly-arm-lsb/builds/21/steps/BuildImages_1/logs/stdio

Cheers,

Richard


