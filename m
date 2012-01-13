Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 342EDE00307
	for <poky@yoctoproject.org>; Fri, 13 Jan 2012 08:28:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0DGS5cr023189;
	Fri, 13 Jan 2012 16:28:05 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22915-03; Fri, 13 Jan 2012 16:28:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0DGRt2X023181
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 13 Jan 2012 16:27:56 GMT
Message-ID: <1326472079.15389.43.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Fri, 13 Jan 2012 16:27:59 +0000
In-Reply-To: <CAEsOVNeuCt3aqoTm_LG=8TLKZtXQwg+ptYPX8+rc1UaBkfOkDw@mail.gmail.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net> <4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net> <4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
	<CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
	<4F0F4B94.3020604@mlbassoc.com>
	<CABcZAN=HJjD8uq-00s0=_ho6DXRbEFHBEpF-jQQk0J=qGFFq8A@mail.gmail.com>
	<4F104C72.8010605@mlbassoc.com>
	<CAEsOVNeuCt3aqoTm_LG=8TLKZtXQwg+ptYPX8+rc1UaBkfOkDw@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Chris Larson <clarson@kergoth.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
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
X-List-Received-Date: Fri, 13 Jan 2012 16:28:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-01-13 at 15:40 +0000, McClintock Matthew-B29882 wrote:
> On Fri, Jan 13, 2012 at 9:23 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> >>
> >> You can't just override DATE in local.conf? I don't see the point in
> >> holding off, unless your builds will take till tomorrow to finish?
> >
> >
> > Actually, I didn't think of that.  I also didn't see this message
> > until Friday (the next day) due to some network issues, so it's moot.
> >
> > That notwithstanding, I tried it today (new DATE) and it behaved as
> > I would like.  The only problem was that dbus-1 is still being rebuilt.
> > I compared the siginfo files between the two builds and they are
> > identical, so I don't know why.
> 
> Are the hashes the same too?

I've found the root cause of this problem and have posted a fix on the
OE-Core mailing list.

Cheers,

Richard


