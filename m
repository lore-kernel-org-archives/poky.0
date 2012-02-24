Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4A72E0059A
	for <poky@yoctoproject.org>; Fri, 24 Feb 2012 00:00:30 -0800 (PST)
Received: by dadp13 with SMTP id p13so2670038dad.35
	for <poky@yoctoproject.org>; Fri, 24 Feb 2012 00:00:30 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.68.194.65 as permitted sender) client-ip=10.68.194.65; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.68.194.65 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.68.194.65])
	by 10.68.194.65 with SMTP id hu1mr4382749pbc.75.1330070430678 (num_hops
	= 1); Fri, 24 Feb 2012 00:00:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=R4CkMYqAwLzyOpMc7894UpXRugloeuDMST0eX2iY5XA=;
	b=bpDgBNm4gi6sAB7AiWbCojBi4lFKHusz/ENCDofr7JrLnlIjeo6Q146gvKhOJ2j/zG
	ssfHqNS2BkWJaLU1M3+g4DyOm4o56WTGZ1rU+q0POrJlojD5mKO8o7eNUPQ9wu7Zkl6v
	XfU+XJ1VKvmpe4Crmb+IMRmHTgOLolGcMs8Rg=
Received: by 10.68.194.65 with SMTP id hu1mr3639103pbc.75.1330070430575;
	Fri, 24 Feb 2012 00:00:30 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id q8sm3725187pbn.20.2012.02.24.00.00.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 24 Feb 2012 00:00:28 -0800 (PST)
Date: Fri, 24 Feb 2012 00:01:18 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20120224080118.GC2479@sakrah.homelinux.org>
Mail-Followup-To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Chin Huat Ang <chang@altera.com>,
	"'poky@yoctoproject.org'" <poky@yoctoproject.org>
References: <0BB3B561D7068A4E89FD8E9ABFB538BEB0B9F942C2@PG-ITMSG03.altera.priv.altera.com>
	<1329985869.32110.50.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1329985869.32110.50.camel@ted>
User-Agent: Mutt/1.5.20 (2009-06-14)
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
X-List-Received-Date: Fri, 24 Feb 2012 08:00:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On (23/02/12 08:31), Richard Purdie wrote:
> On Wed, 2012-02-22 at 16:00 +0800, Chin Huat Ang wrote:
> > My Centos 5.6’s gcc is a bit outdated and I’m seeing compiler bugs
> > when compiling elfutils-native. As such I’ve rolled my own gcc 4.5.3
> > with MPC/MPFR/GMP all installed to /opt, my intention is to make the
> > new toolchain self-contained and reusable on other machines/distros.
> >  
> > The problem is that, in order to use this gcc I will need to set
> > LD_LIBRARY_PATH so that it can picks up MPC/MPFR/GMP from /opt. 
> >  
> > Poky seems to always build with pristine environment (i.e. no
> > LD_LIBRARY_PATH), so my new toolchain is unusable. This problem will
> > not happen on distro gcc as MPC et al are always installed
> > in /usr/lib.
> >  
> > Is there a way to tell Poky to set LD_LIBRARY_PATH whenever it uses
> > the non-distro toolchain? Or is it the right thing to do at all?
> 
> You can set "export LD_LIBRARY_PATH=xxx" in your local.conf and that
> will make bitbake always set the variable. I'm not sure you can do it
> for just the target gcc.
> 
> Another alternative would be to put wrapper scripts around your
> toolchain binaries and ensure they get found in PATH first and the
> scripts setup the environment correctly.
> > 
> Its certainly possible to make this work but it might require a little
> bit of experimentation. I'm surprised your toolchain doesn't set the
> RPATHs of the binaries correctly to find the libs its linked to.

I think it would be safer to provide gcc-native for such cases 

