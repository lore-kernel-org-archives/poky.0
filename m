Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 702B6E0059A
	for <poky@yoctoproject.org>; Fri, 24 Feb 2012 02:19:34 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1OAJNYf004180;
	Fri, 24 Feb 2012 10:19:23 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03283-05; Fri, 24 Feb 2012 10:19:17 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1OAJCeD004174
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 24 Feb 2012 10:19:13 GMT
Message-ID: <1330078754.32006.3.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 24 Feb 2012 10:19:14 +0000
In-Reply-To: <20120224080118.GC2479@sakrah.homelinux.org>
References: <0BB3B561D7068A4E89FD8E9ABFB538BEB0B9F942C2@PG-ITMSG03.altera.priv.altera.com>
	<1329985869.32110.50.camel@ted>
	<20120224080118.GC2479@sakrah.homelinux.org>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "'poky@yoctoproject.org'" <poky@yoctoproject.org>,
	Chin Huat Ang <chang@altera.com>
Subject: Re: Using non-distro gcc
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
X-List-Received-Date: Fri, 24 Feb 2012 10:19:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2012-02-24 at 00:01 -0800, Khem Raj wrote:
> On (23/02/12 08:31), Richard Purdie wrote:
> > On Wed, 2012-02-22 at 16:00 +0800, Chin Huat Ang wrote:
> > > My Centos 5.6’s gcc is a bit outdated and I’m seeing compiler bugs
> > > when compiling elfutils-native. As such I’ve rolled my own gcc 4.5.3
> > > with MPC/MPFR/GMP all installed to /opt, my intention is to make the
> > > new toolchain self-contained and reusable on other machines/distros.
> > >  
> > > The problem is that, in order to use this gcc I will need to set
> > > LD_LIBRARY_PATH so that it can picks up MPC/MPFR/GMP from /opt. 
> > >  
> > > Poky seems to always build with pristine environment (i.e. no
> > > LD_LIBRARY_PATH), so my new toolchain is unusable. This problem will
> > > not happen on distro gcc as MPC et al are always installed
> > > in /usr/lib.
> > >  
> > > Is there a way to tell Poky to set LD_LIBRARY_PATH whenever it uses
> > > the non-distro toolchain? Or is it the right thing to do at all?
> > 
> > You can set "export LD_LIBRARY_PATH=xxx" in your local.conf and that
> > will make bitbake always set the variable. I'm not sure you can do it
> > for just the target gcc.
> > 
> > Another alternative would be to put wrapper scripts around your
> > toolchain binaries and ensure they get found in PATH first and the
> > scripts setup the environment correctly.
> > > 
> > Its certainly possible to make this work but it might require a little
> > bit of experimentation. I'm surprised your toolchain doesn't set the
> > RPATHs of the binaries correctly to find the libs its linked to.
> 
> I think it would be safer to provide gcc-native for such cases 

Which you would compile with what?

Cheers,

Richard



