Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F26DE01408
	for <poky@yoctoproject.org>; Tue, 15 May 2012 11:16:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4FIGa4w009885;
	Tue, 15 May 2012 19:16:36 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09639-02; Tue, 15 May 2012 19:16:32 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4FIGS1J009878
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 May 2012 19:16:30 +0100
Message-ID: <1337105788.2711.46.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Tornel <petertornel@yahoo.com>
Date: Tue, 15 May 2012 19:16:28 +0100
In-Reply-To: <1337097794.60983.YahooMailNeo@web122202.mail.ne1.yahoo.com>
References: <1337097794.60983.YahooMailNeo@web122202.mail.ne1.yahoo.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: building packages in a general recipe without adding to rootfs
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
X-List-Received-Date: Tue, 15 May 2012 18:16:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-05-15 at 09:03 -0700, Peter Tornel wrote:
> I want a single recipe that contains some core packages to install in
> rootfs using IMAGE_INSTALL, and I also want to specify a number of
> packages to be built in deploy/rpm so I can install them later to my
> hard drive without having them included in my rootfs. 
>
> What's the best way to specify the additional packages in my recipe
> without having them included in my rootfs?
>
> I believe EXTRA_IMAGEDEPENDS gets the job done, but it's intended to
> be used to specify a dependency, which isn't the case here.   Is there
> something else I should be using?

I'd create a recipe which lists them as DEPENDS and then simply include
the name of that recipe on the commandline along with your image.

Cheers,

Richard



