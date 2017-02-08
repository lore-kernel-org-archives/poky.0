Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84639E0093F; Wed,  8 Feb 2017 11:50:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.180 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CE39E006C6
	for <poky@yoctoproject.org>; Wed,  8 Feb 2017 11:50:49 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id u25so133710620qki.2
	for <poky@yoctoproject.org>; Wed, 08 Feb 2017 11:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=NDUVFZmQuneRRxMg68LXBtoLo/SMJcsNmsp4WrvvR88=;
	b=kzmoSCuZACUwBXw6ON2VjVrpRGVmFB2BmeRV7dr83E+RvqOaA17+ot+3lqSTw4XMta
	QD3wXu4HGCxIp1fohFWSXEJL4zJrdf2ft0UUeOJR1lxc0nMUcDwqoQetlUmzFzCtGU6r
	n+/jHr0ls33p/S4fFx2Vsu4B+Y/koC58I0p8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=NDUVFZmQuneRRxMg68LXBtoLo/SMJcsNmsp4WrvvR88=;
	b=Mkk9zrxvfZA0+C+u16S3bUDlJQshgIEYgBu3TnwkuYYxCocir6dNpmFTXUHDgQNwHs
	a9sAvq1ICPTcqWdvTWRP5RNbDgcP3yRc3l5fGxY+DVCHYpkvFJzE+uVGELtyu+e3NPeB
	LYaWt6Y6Z7dONWzhTAYtovlNIfZZlE8Oz7TpET0v3iVgaQTVyXidwShmztMDa4d4mAnB
	+l/zVuPK/UguFKchUR2ANOH8VQtcX/STHRkNffbjmJ29X2CUVMxDcSQ03u6FUN/ZTqye
	lUsGAhEOQYfsUE6KhJ6uCHDo4AQIqWFv18jiSaHhmq3pKw3N51NqkODXs0PJUICYSatn
	REew==
X-Gm-Message-State: AMke39njEEvJyqGETcBBzi/fDpGwKdp/32RsIDO+5BOBm4675t9Q6xPiYI5Df5GOTL0wBA==
X-Received: by 10.55.91.197 with SMTP id p188mr22978421qkb.197.1486583448951; 
	Wed, 08 Feb 2017 11:50:48 -0800 (PST)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133]) by smtp.gmail.com with ESMTPSA id
	d15sm7026065qtg.22.2017.02.08.11.50.48
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Wed, 08 Feb 2017 11:50:48 -0800 (PST)
Date: Wed, 8 Feb 2017 14:50:53 -0500
From: Tom Rini <trini@konsulko.com>
To: "Lock, Joshua G" <joshua.g.lock@intel.com>
Message-ID: <20170208195053.GV26129@bill-the-cat>
References: <20170124130413.24928-1-joshua.g.lock@intel.com>
	<20170124150400.GG22316@bill-the-cat>
	<1485344411.4626.8.camel@intel.com>
	<20170125122517.GE22316@bill-the-cat>
	<1486565201.3754.17.camel@intel.com>
MIME-Version: 1.0
In-Reply-To: <1486565201.3754.17.camel@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: prune SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 08 Feb 2017 19:50:52 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Feb 08, 2017 at 02:46:43PM +0000, Lock, Joshua G wrote:
> On Wed, 2017-01-25 at 07:25 -0500, Tom Rini wrote:
> > On Wed, Jan 25, 2017 at 11:40:13AM +0000, Lock, Joshua G wrote:
> > > On Tue, 2017-01-24 at 10:04 -0500, Tom Rini wrote:
> > > > On Tue, Jan 24, 2017 at 01:04:13PM +0000, Joshua Lock wrote:
> > > > > Remove several old/untested distros from the list:
> > > > > * poky-1.8 and poky-2.0 are no longer supported releases
> > > > > * ubuntu-14.04 is an LTS but we plan to remove it from the
> > > > >   project's autobuilder cluster as the kernel is old and
> > > > >   it doesn't use systemd -- therefore this will no longer
> > > > >   be tested.
> > > > 
> > > > Can you elaborate a bit more on the pain involved with supporting
> > > > Ubuntu
> > > > 14.04? 
> > > 
> > > The pain is purely from a sysadmin perspective. The Ubuntu 14.04
> > > worker
> > > is causing issues for us today (it's OOMing quite a bit). We also
> > > have
> > > to manage it differently because it's the only system in the
> > > cluster
> > > that's not systemd-based.
> > > 
> > > That being said I confess I've been a bit narrow-minded with this
> > > patch. The SANITY_TESTED_DISTROS list is the list of distributions
> > > we
> > > are validating against, where validation is both build testing on
> > > the
> > > autobuilder and QA testing.
> > > 
> > > If Yocto Project QA are testing the 14.04 LTS then we should leave
> > > it
> > > in the list, if not we should remove it because we aren't testing
> > > it
> > > (not because we have issues, beyond manpower, with supporting it).
> > > 
> > > >  Or, do you expect to drop Ubuntu 16.04 in favour of 18.04 at
> > > > around this point in 2019 and continue only supporting the latest
> > > > LTS
> > > > for Ubuntu?  I ask because supported hosts are an important part
> > > > of
> > > > companies being able to plan their use and upgrade
> > > > strategies.  Thanks!
> > > 
> > > Understood. Unfortunately I don't have a good answer, but I'm
> > > trying to
> > > better understand QA's strategy to provide one.
> > > 
> > > At the end of the day we only have limited resources as a project
> > > and
> > > can only commit to testing a relatively small number of distros.
> > 
> > I can understand the conundrum here.  My main request is that we have
> > clear and documented requirements here.  If we're only going to
> > support
> > the latest LTS from Ubuntu (and latest 2 non-LTS) as well as $X for
> > Debian, $Y for Fedora Core and $Z for openSuSE we just need to have
> > that
> > documented in public so companies using us can coordinate the rest of
> > their Linux host support requirements.
> 
> We've documented our distro support plans:
> 
> https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan
> 
> They are easily summarised as:
> - Fedora: most recent 2 releases
> - Ubuntu: most recent LTS and latest release, unless they are the same
> in which case the most recent 2 releases
> - CentOS: latest release
> - openSUSE: latest release

Great, thanks.  Can you please re-spin the patch with a pointer to the
above wiki page in the conf file?  That'll make it really clear where to
find what the policy is.  Thanks!

-- 
Tom

