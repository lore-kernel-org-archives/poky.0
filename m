Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BC4B4C80335
	for <poky@yoctoproject.org>; Thu, 26 May 2011 04:46:24 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4Q9hF0W011334;
	Thu, 26 May 2011 10:43:15 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10928-05; Thu, 26 May 2011 10:43:11 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4Q9h5s7011323
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 26 May 2011 10:43:07 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gerard van den Bosch <gerard@de-haardt.com>
In-Reply-To: <4DDE01BB.3000109@de-haardt.com>
References: <4DDE01BB.3000109@de-haardt.com>
Date: Thu, 26 May 2011 10:43:01 +0100
Message-ID: <1306402981.27470.97.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@yoctoproject.org>
Subject: Re: wrong rpm name qt package
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
X-List-Received-Date: Thu, 26 May 2011 09:46:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-05-26 at 09:31 +0200, Gerard van den Bosch wrote:
> I have developed a shared library using Qt, it compiles without any
> problems but it goes wrong with rpm packaging.
> When it packages it should create a rpm package with the name
> "libxmlpcpqt" but it creates a package with "libxmlpcpqt1".
> My question is where does the '1' come from?
> 
> The install part from the recipe is as follows:
> do_install() {
>      install -d ${D}${libdir}
>      install -m 0755 ${S}/${PN}.so ${D}${libdir}
> }
> 
> In
> the /tmp/work/armv7a-poky-linux-gnueabi/libxmlpcpqt-0.1-r1/image/usr/lib the libxmlpcpqt.so file correctly exists.

This happens as debian style package naming is enabled (debian.bbclass
is inherited).

Cheers,

Richard


