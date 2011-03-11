Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 283CD4C8009A
	for <poky@lists.pokylinux.org>; Fri, 11 Mar 2011 16:25:33 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2BMPTXO002793;
	Fri, 11 Mar 2011 22:25:29 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02565-05; Fri, 11 Mar 2011 22:25:25 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2BMPBvR002774
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 11 Mar 2011 22:25:16 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1505770D74928@shsmsx502.ccr.corp.intel.com>
References: <4D7996EE.80005@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D748C8@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A335C9B62@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D748EA@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A335C9B6F@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D74928@shsmsx502.ccr.corp.intel.com>
Date: Fri, 11 Mar 2011 14:25:10 -0800
Message-ID: <1299882310.1445.3004.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Problems adding native support packages
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
X-List-Received-Date: Fri, 11 Mar 2011 22:25:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-11 at 13:52 +0800, Tian, Kevin wrote:
> From: Xu, Dongxiao:
> > Tian, Kevin wrote:
> > >>
> > >> atk's SRC_URI is assigned like:
> > >>
> > >> SRC_URI =
> > >> "http://download.gnome.org/sources/atk/1.32/${PN}-${PV}.tar.bz2"
> > >>
> > >> After introducing native to atk, PN is changed to atk-native, thus
> > >> no resouce is found in the repo.
> > >>
> > >> I will make a fix to that. But for your quick workaournd, you can
> > >> change the atk's SRC_URI to:
> > >>
> > >> SRC_URI =
> > >> "http://download.gnome.org/sources/atk/1.32/atk-${PV}.tar.bz2"
> > >>
> > >
> > > use ${BPN}-${PV} instead.
> > 
> > Yes. This is the right approach.
> > 
> > I checked in current poky meta recipes, there are about 67 recipes which
> > directly uses ${PN} in the SRC_URI line.
> > 
> > Do we need to change all of them to ${BPN}?
> > 
> 
> I think it's a cleaner way to use BPN, or even simple BP. This would avoid an error
> alarm when extending some recipes to native. :-)

This is exactly the use case for the BPN variable so yes, making
standardised use of that would be good.

Cheers,

Richard


