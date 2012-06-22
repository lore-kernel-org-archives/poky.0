Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16281E006D9
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 07:57:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5MEvIvn002709;
	Fri, 22 Jun 2012 15:57:18 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02530-02; Fri, 22 Jun 2012 15:57:13 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5MEvA5d002703
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 22 Jun 2012 15:57:11 +0100
Message-ID: <1340377031.394.52.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jun 2012 15:57:11 +0100
In-Reply-To: <CAMKF1soPhy2n4O9+cFU4hWTXcJDy63zJ=5W_hX9S3RawJsjavA@mail.gmail.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
	<3a231c484aaa511b95f9232d000b1190327b4626.1340038494.git.scott.a.garman@intel.com>
	<CAMKF1sp4KvDtK68NQNtOhSmCF6WK738Yr9cXOA0ntkHJ9wpYUQ@mail.gmail.com>
	<CAK18fxEp=CsaCPXBocP3PCb9dnxBTR_jb_Qv+oUSKn6qwM7acQ@mail.gmail.com>
	<CAK18fxGm5_7xMHpOOUpWWjkAaq33hN-fqeJwrFDDvB5XgekmYA@mail.gmail.com>
	<20120621211416.GI9352@jama.jama.net>
	<CAK18fxHhSDnqyqbfnwKYLZJJf7z_m9Zt47e+zpkPgot-eYppzg@mail.gmail.com>
	<20120622053904.GJ9352@jama.jama.net>
	<CAMKF1soPhy2n4O9+cFU4hWTXcJDy63zJ=5W_hX9S3RawJsjavA@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/8] sanity.bbclass: warn the user if BBPATH contains wrong entries
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
X-List-Received-Date: Fri, 22 Jun 2012 14:57:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-06-21 at 22:58 -0700, Khem Raj wrote:
> On Thu, Jun 21, 2012 at 10:39 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> >
> > bblayers.conf:
> > BBPATH ?= "${TOPDIR}"
> >
> > BBFILES ?= ""
> 
> yeah I guess a way is to always have BBPATH non empty by default and
> then layers append their respective
> BBPATHS to it and all falls into place.
> 
> In OE-Core it still wont work since there BBPATH is empty by default
> and we can not assume some initial value for
> it since user may place OE-Core anywhere in his layer heirarchy

I've proposed a patch for this on the OE-Core list. It uses BBPATH ?=
"${TOPDIR}" which I came to independently but matches what Martin is
doing :). We need the local build directory in BBPATH for local.conf

Cheers,

Richard


