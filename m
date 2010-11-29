Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 03F594C80039
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 05:57:55 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATBvrJM031994;
	Mon, 29 Nov 2010 11:57:53 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31803-04; Mon, 29 Nov 2010 11:57:49 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATBvf76031988
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 29 Nov 2010 11:57:43 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Qing He <qing.he@intel.com>
In-Reply-To: <20101129081747.GA10141@qhe2-db>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>  <20101129081747.GA10141@qhe2-db>
Date: Mon, 29 Nov 2010 03:57:26 -0800
Message-ID: <1291031846.14277.907.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Mon, 29 Nov 2010 11:57:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-29 at 16:17 +0800, Qing He wrote:
> On Sun, 2010-11-28 at 22:22 +0800, Richard Purdie wrote:
> > On Wed, 2010-11-17 at 16:26 +0800, Qing He wrote:
> > > @@ -25,6 +24,10 @@ EXTRA_OECONF = "--with-zlib=${STAGING_LIBDIR}/../ \
> > >  		--enable-crypto-auth \
> > >  		"
> > >  
> > > +EXTRA_OECONF_append = " --with-gnutls=${STAGING_LIBDIR}/../"
> > > +EXTRA_OECONF_virtclass-native_append = " --without-gnutls"
> > > +EXTRA_OECONF_virtclass-nativesdk_append = " --without-gnutls"
> > > +
> > >  do_configure_prepend() {
> > >  	sed -i s:OPT_GNUTLS/bin:OPT_GNUTLS:g configure.ac
> > >  }
> > 
> > I'm going to push a fix but I wanted to note that the above is not
> > correct. Let me walk through this since I expect various people find
> > this confusing.
> 
> Thanks for the explanation.
> 
> In fact, at first, I also tried to use
> EXTRA_OECONF_append_virtclass-native, in the hope to override variable
> EXTRA_OECONF_append for different virtual classes. However, the
> log.do_configure still showed "--with-gnutls=...", that's why I then
> changed to the form in the patch, and it looked working.
> 
> 
> And I also see something in the smart data implementation:
>     __setvar_regexp__ = re.compile('(?P<base>.*?)(?P<keyword>_append|_prepend)(_(?P<add>.*))?')
> 
> Does that mean append/prepend is expected to appear before everything
> else?

It means append and prepend only work if they're the last part of the
variable name.

e.g. XXX_append = "YYY"

so XXX_append_ZZZ = "YYY" won't do anything

of course if ZZZ is an override, it will be peeled off but the append
only happens after its been overridden and it becomes XXX_append

Cheers,

Richard


