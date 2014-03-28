Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7908E00BCA;
	Fri, 28 Mar 2014 11:34:44 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2SIYDu8002137; Fri, 28 Mar 2014 18:34:13 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Q7GzJg5rFoAC; Fri, 28 Mar 2014 18:34:13 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2SIY9es002134
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 28 Mar 2014 18:34:10 GMT
Message-ID: <1396031644.14790.26.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 28 Mar 2014 18:34:04 +0000
In-Reply-To: <5335BF6A.8080404@windriver.com>
References: <1396031047.14790.24.camel@ted> <5335BF1C.9030902@windriver.com>
	<5335BF6A.8080404@windriver.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: yocto-builds <yocto-builds@yoctoproject.org>,
	Denys Dmytriyenko <denys@ti.com>, "Hart, Darren" <darren.hart@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	"saul.wold" <saul.wold@intel.com>
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
X-List-Received-Date: Fri, 28 Mar 2014 18:34:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-03-28 at 14:28 -0400, Bruce Ashfield wrote:
> On 14-03-28 02:27 PM, Bruce Ashfield wrote:
> > On 14-03-28 02:24 PM, Richard Purdie wrote:
> >> I've merged Bruce's 3.14 patches into master-next. With the yocto-bsp
> >> parts that I could pull together, there seemed to be some pieces
> >> missing, specifically:
> >>
> >> * the yocto-linux-dev.bbappend was underpopulated
> >> * the yocto-linux-3.14.bbappend was missing
> >
> > I have one of these, I was hoping the BSP developers would submit
> > it, but I can commit and send mine.
> >
> >> * no removal of beagleboard
> >
> > I was keeping this around, for the 3.10 and older trees.
> >
> >> * no addition to the README for beaglebone
> >
> > Denys and I talked about this, one should be pending.
> >
> >> * local.conf.sample needs updates
> >> * missing edgerouter configuration in linux-yocto*
> >
> > Hmm. no, it's definitely there, so I'm not sure
> 
> I forgot to finish this. This is all here for me, what exactly are you
> seeing that is missing ?

Specifically, I had to add:

http://git.yoctoproject.org/cgit.cgi/meta-yocto/commit/?h=master-next&id=21f04021a62248bdb827e7d7acc103deb9136b5d

http://git.yoctoproject.org/cgit.cgi/meta-yocto/commit/?h=master-next&id=c94b1e4dc6af0848a30b4275f3cc2bc894f5e267

http://git.yoctoproject.org/cgit.cgi/meta-yocto/commit/?h=master-next&id=03bdb1421e51fa2a4da4bae42ff0b42a92c5acce

So I can't help feeling I'm missing some patches from somewhere or
something.

With regard to beagleboard, whilst the kernel may have support for it,
I'd like to remove it from meta-yocto-bsp.

Cheers,

Richard


