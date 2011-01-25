Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id BAFD34C81118
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 16:50:21 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PMqAqQ006672; Tue, 25 Jan 2011 22:52:10 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 79WpRCSG83Nn; Tue, 25 Jan 2011 22:52:10 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PMq0Ib006635
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 25 Jan 2011 22:52:02 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20110125090904.21681BB0B9@gemini.denx.de>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
	<1295296178-18590-5-git-send-email-aalonso@secretlab.ca>
	<4D3884A0.8030602@linux.intel.com>
	<20110120230537.5CF85D301D7@gemini.denx.de>
	<1295565854.14388.27977.camel@rex>
	<20110122144831.609C3B335@gemini.denx.de>
	<1295741513.14388.37111.camel@rex>
	<20110125090904.21681BB0B9@gemini.denx.de>
Date: Tue, 25 Jan 2011 22:49:43 +0000
Message-ID: <1295995783.27814.240.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Adrian Alonso <aalonso@secretlab.ca>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 05/25] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Tue, 25 Jan 2011 22:50:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-25 at 10:09 +0100, Wolfgang Denk wrote:
> In message <1295741513.14388.37111.camel@rex> you wrote:
> >
> > > > Its not so much not supported, its that gcc 4.5 seems to have totally
> > > > broken it and for better or worse, we're on that gcc version. Until we
> > > > have a toolchain where the option works what do we do?
> ...
> > Right, I'm aware that recent versions of gcc have issues sadly :(. I'm
> > unaware of any resource available to Yocto with the right combination
> > of time/experience to fix that problem at source at this time though :(.
> 
> Do you happen do have a list of GCC bugs that bite us here?  At the
> moment I am aware of # 44392 and # 45052, but it seems there are fixes
> available for these two.
> 
> Are there any others that need fixing?

I'm afraid I don't but creating a list (maybe on the wiki) would be a
good move for this. I know there are some other issues we could do with
filing bugs upstream for and some we already have.

Cheers,

Richard



