Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAD924C811F8
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 02:22:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Nov 2010 00:22:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,275,1288594800"; d="scan'208";a="578500716"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by orsmga002.jf.intel.com with ESMTP; 29 Nov 2010 00:22:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PMyvj-000560-RI; Mon, 29 Nov 2010 16:17:47 +0800
Date: Mon, 29 Nov 2010 16:17:47 +0800
From: Qing He <qing.he@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Message-ID: <20101129081747.GA10141@qhe2-db>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1290954166.27143.217.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
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
X-List-Received-Date: Mon, 29 Nov 2010 08:22:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, 2010-11-28 at 22:22 +0800, Richard Purdie wrote:
> On Wed, 2010-11-17 at 16:26 +0800, Qing He wrote:
> > @@ -25,6 +24,10 @@ EXTRA_OECONF = "--with-zlib=${STAGING_LIBDIR}/../ \
> >  		--enable-crypto-auth \
> >  		"
> >  
> > +EXTRA_OECONF_append = " --with-gnutls=${STAGING_LIBDIR}/../"
> > +EXTRA_OECONF_virtclass-native_append = " --without-gnutls"
> > +EXTRA_OECONF_virtclass-nativesdk_append = " --without-gnutls"
> > +
> >  do_configure_prepend() {
> >  	sed -i s:OPT_GNUTLS/bin:OPT_GNUTLS:g configure.ac
> >  }
> 
> I'm going to push a fix but I wanted to note that the above is not
> correct. Let me walk through this since I expect various people find
> this confusing.

Thanks for the explanation.

In fact, at first, I also tried to use
EXTRA_OECONF_append_virtclass-native, in the hope to override variable
EXTRA_OECONF_append for different virtual classes. However, the
log.do_configure still showed "--with-gnutls=...", that's why I then
changed to the form in the patch, and it looked working.


And I also see something in the smart data implementation:
    __setvar_regexp__ = re.compile('(?P<base>.*?)(?P<keyword>_append|_prepend)(_(?P<add>.*))?')

Does that mean append/prepend is expected to appear before everything
else?

Thanks,
Qing

