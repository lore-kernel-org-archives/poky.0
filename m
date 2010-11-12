Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96DA64C8108C
	for <poky@lists.pokylinux.org>; Fri, 12 Nov 2010 17:31:34 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oACNVXCt016361;
	Fri, 12 Nov 2010 23:31:33 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15599-10; Fri, 12 Nov 2010 23:31:29 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oACNVF0b016355
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 12 Nov 2010 23:31:20 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CDCFC57.20909@mlbassoc.com>
References: <4CDB2A52.6060400@mlbassoc.com> <1289539963.1272.3055.camel@rex>
	<4CDCF848.9020703@mlbassoc.com> <1289550656.1272.3179.camel@rex>
	<4CDCFC57.20909@mlbassoc.com>
Date: Sat, 13 Nov 2010 07:31:12 +0800
Message-ID: <1289604672.1272.4108.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: SSTATE builds more broken than I thought
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
X-List-Received-Date: Fri, 12 Nov 2010 23:31:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-11-12 at 01:35 -0700, Gary Thomas wrote:
> On 11/12/2010 01:30 AM, Richard Purdie wrote:
> > On Fri, 2010-11-12 at 01:18 -0700, Gary Thomas wrote:
> >>> Are these all files or are they symlinks? Are they just present for
> >>> deploy-ipk or are there others?
> >>
> >> They are files.
> >>
> >> Sorry, but I don't understand your other question.  These are the only
> >> extra files polluting the tree, except for Python *.py? object files
> >> which are also always created.
> >
> > Are there any files related to other sstate tasks such as
> > populate-sysroot*.tgz or package*.tgz or is there just *deploy-ipk*.tgz?
> >
> > In other words I'm wondering if this is something specific to the
> > deploy-ipk sstate task...
> 
> The only extra files created are *deploy-ipk*.tgz
> This most certainly is restricted to the deploy-ipk sstate task and only
> happens if SSTATE_MIRRORS is defined.

This should be fixed in ae98f7eacb9e61fe086d88dc694b4c651af9fee3, it
turns out to be an issue with the local fetcher not searching DL_DIR.

Cheers,

Richard


