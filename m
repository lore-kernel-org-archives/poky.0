Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B63304C80579
	for <poky@yoctoproject.org>; Mon, 18 Jul 2011 09:28:48 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6IESh8j028600;
	Mon, 18 Jul 2011 15:28:43 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21333-05; Mon, 18 Jul 2011 15:28:39 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6IESbRZ028594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Jul 2011 15:28:38 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANnQ9J9DDdVMgjbF2nKwcwOBcMp9XyHyBDwRyiHAYvu=iA@mail.gmail.com>
References: <4E243A67.3090400@mlbassoc.com>
	<CABcZANmcWYoF4wb6Nx=w9LDhaRdzSdhc9XOHD7n8w_NfskGThA@mail.gmail.com>
	<4E243DA5.4090207@mlbassoc.com>
	<CABcZANnQ9J9DDdVMgjbF2nKwcwOBcMp9XyHyBDwRyiHAYvu=iA@mail.gmail.com>
Date: Mon, 18 Jul 2011 15:28:26 +0100
Message-ID: <1310999306.20015.1267.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Order of .conf processing?
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
X-List-Received-Date: Mon, 18 Jul 2011 14:28:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-07-18 at 07:12 -0700, Chris Larson wrote:
> On Mon, Jul 18, 2011 at 7:05 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> > On 07/18/2011 07:59 AM, Chris Larson wrote:
> >>
> >> On Mon, Jul 18, 2011 at 6:51 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
> >>>
> >>> What's the order of processing of the various .conf files?
> >>>
> >>> It seems to me that bitbake.conf must be first as it seems
> >>> impossible to override settings in that file using a soft
> >>> assignment.  In particular, local.conf often has soft settings
> >>> but these dont' seem to change what's in bitbake.conf
> >>
> >> BitBake only parses one global configuration file, bitbake.conf. It's
> >> bitbake.conf that includes/requires all the other configuration files.
> >> You can see the order by reading those inclusions in bitbake.conf.
> >> Historically, the intention was for the configuration file load order
> >> to be relatively parallel to the overrides order -- two different
> >> mechanisms for implementing what is essentially a layered architecture
> >> for the metadata, allowing, generally, more specific information to
> >> override more general information. The configuration file order
> >> differs slightly from that, however, as it's not possible to load the
> >> distro or machine config files after local.conf, as local.conf is
> >> generally where DISTRO and MACHINE are defined.
> >
> > In that case, isn't using ?= assignments in bitbake.conf a bit misleading?
> 
> First, there is one place variables can come from before the
> configuration files, and that's the process environment, for variables
> which aren't filtered out. Second, it could use ?= sanely after the
> configuration files are included, as well.

It does this second part pretty clearly:

[...]
require conf/xxx.conf
require conf/yyy.conf

TUNE_ARCH ?= "INVALID"
TUNE_FEATURES ?= "${TUNE_FEATURES_tune-${TUNENAME}}"

##################################################################
# Weak variables (usually to retain backwards compatibility)
##################################################################

DL_DIR ?= "${TOPDIR}/downloads"
[...]

so most of the ?= variables are after the includes.

Looking at the file, there are some good candidates for either = or ??=
though, including I suspect the console ones which are likely what
prompted this?

Cheers,

Richard


