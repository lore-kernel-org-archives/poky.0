Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.1344.1579039280218129327
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 14:01:20 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 696BD40BEF;
	Tue, 14 Jan 2020 22:01:19 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-gQUUf1rZox; Tue, 14 Jan 2020 22:01:19 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 4959840A52;
	Tue, 14 Jan 2020 22:01:17 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id F2BC5174383; Tue, 14 Jan 2020 17:01:16 -0500 (EST)
Date: Tue, 14 Jan 2020 17:01:16 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Steven Walter <stevenrwalter@gmail.com>
Cc: Ross Burton <ross.burton@intel.com>, poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] Allow original $GPG_AGENT_INFO into do_fetch
Message-ID: <20200114220116.GT4735@denix.org>
References: <20200114190707.4260-1-stevenrwalter@gmail.com>
 <964b1d58-74b9-b874-f8eb-9241931c255f@intel.com>
 <CAK8d-aJ3OHyxQsusujOcfWwO2GM-Cy7VR9aZwLP+aJhTYX=ZOw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8d-aJ3OHyxQsusujOcfWwO2GM-Cy7VR9aZwLP+aJhTYX=ZOw@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 14, 2020 at 04:43:12PM -0500, Steven Walter wrote:
> That seems... byzantine.  I don't see any repos matching that description
> on git.yoctoproject.org; can you point me in the right direction so I can
> generate proper git patches against those repositories?

Those are OpenEmbedded repos, which Yocto Project builds on top of:
https://git.openembedded.org/
https://git.openembedded.org/bitbake/
https://git.openembedded.org/openembedded-core/

Why is it "byzantine". Poky is just one of many OpenEmbedded distros. And 
Linux distros do incorporate thousands of different Open Source components - 
you don't expect Debian, RHEL or Ubuntu to implement own kernel, own shell 
interpretor, own C compiler, etc. Moreover, Yocto Project implements layered 
architecture and layers can come from different places...

Denys


> On Tue, Jan 14, 2020 at 4:30 PM Ross Burton <ross.burton@intel.com> wrote:
> 
> > On 14/01/2020 19:07, Steven Walter wrote:
> > > subversion 1.9 uses gpg to encrypt authentication details that are
> > > stored in ~/.subversion.  This means that GPG_AGENT_INFO needs to be
> > > available when svn is run by do_fetch, or else svn will not be able to
> > > authenticate to the remote server.  Treat GPG_AGENT_INFO like
> > > SSH_AUTH_SOCK, including it in the fetch environment and
> > BB_ENV_EXTRAWHITE
> > > ---
> > >   bitbake/lib/bb/fetch2/__init__.py | 1 +
> > >   meta/conf/bitbake.conf            | 2 +-
> > >   scripts/oe-buildenv-internal      | 3 ++-
> >
> > Poky is a constructed repository, the bitbake change needs to go the the
> > bitbake list and the meta/ and scripts/ changes the openembedded-core list.
> >
> > Ross
> >
> > 
> >
> 
> 
> -- 
> -Steven Walter <stevenrwalter@gmail.com>

> 

