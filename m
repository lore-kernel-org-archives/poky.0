Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACAF1E006DD
	for <poky@yoctoproject.org>; Wed,  4 Jan 2012 08:19:24 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q04GJ4i2020758;
	Wed, 4 Jan 2012 16:19:04 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19758-08; Wed,  4 Jan 2012 16:19:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q04GIsxq020752
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 4 Jan 2012 16:18:56 GMT
Message-ID: <1325693934.20759.19.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Colin Walters <walters@verbum.org>
Date: Wed, 04 Jan 2012 16:18:54 +0000
In-Reply-To: <1325643628.24646.13.camel@lenny>
References: <1325634627.24646.0.camel@lenny>
	<4F03A316.2070305@linux.intel.com> <1325643628.24646.13.camel@lenny>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: openembedded-core <openembedded-core@lists.openembedded.org>,
	poky <poky@yoctoproject.org>
Subject: Re: [PATCH] flex/bison: Don't hardcode M4 path
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
X-List-Received-Date: Wed, 04 Jan 2012 16:19:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-01-03 at 21:20 -0500, Colin Walters wrote:
> On Tue, 2012-01-03 at 16:53 -0800, Saul Wold wrote:
> > > The flex and bison configure scripts use AC_PATH_PROG to get a
> > > full path to m4 and embed this in config.h (and then to the
> > > generated binary), but this blows up when the m4 binary is in a
> > > temporary staging directory.
> > >
> > > Since we are always shipping GNU m4, just set M4=m4 at configure
> > > time so we don't use a hardcoded path.
> > >
> > > This is an equivalent to what already exists in autoconf.bb.
> > >
> > >
> > This should really be posted to openembedded-core@lists.openembedded.org.
> 
> I CC'd, hopefully won't be rejected as I'm not yet a subscriber.
> 
> > Don't you loose the setting of BISON_PKGDATADIR in this case?  Does that 
> > need to be poart of the EXTRA_OECONF?
> 
> Good catch - I'll double check, but I doubt it's necessary.  From the
> bison source:
> 
> char const *
> compute_pkgdatadir (void)
> {
>   char const *pkgdatadir = getenv ("BISON_PKGDATADIR");
>   return pkgdatadir ? pkgdatadir : PKGDATADIR;
> }
> 
> For us though PKGDATADIR should be enough I think.

For on target device development, yes. For use in bison-native, its not
enough unfortunately as it gets added into the sstate packages and those
may end up installed at a different location.

I like the idea of simplifying looking for m4 though.

Cheers,

Richard


