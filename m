Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92D064C80287
	for <poky@lists.pokylinux.org>; Sat, 30 Oct 2010 01:18:11 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9U6IAcF020038;
	Sat, 30 Oct 2010 07:18:10 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19541-07; Sat, 30 Oct 2010 07:18:06 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9U6HuAN020032
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 30 Oct 2010 07:17:58 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CCB3EF4.9010604@mlbassoc.com>
References: <4CCB3DC4.6070604@mlbassoc.com>  <4CCB3EF4.9010604@mlbassoc.com>
Date: Sat, 30 Oct 2010 07:17:55 +0100
Message-ID: <1288419475.1285.2648.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: RPM vs IPK
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Sat, 30 Oct 2010 06:18:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-10-29 at 15:39 -0600, Gary Thomas wrote:
> On 10/29/2010 03:33 PM, Gary Thomas wrote:
> > I notice that in the latest master, rpm-native is always built,
> > even if I'm using ipk style packaging.
> >
> > * Why?
> > * Why should I choose one over the other? I'm happy using rpm
> > (been using it for 15 years!) but I wonder why the switch?
> > Is rpm to become the de-facto packaging for Poky builds?
> 
> Also, if it's to be rpm, will there be a yum (or equivalent)?
> Otherwise, what tool will be used to manage dependency tracking, etc?

This was covered in some emails that were sent a couple of months ago. 

Poky continues to support multiple packaging backends including ipk. We
do however plan to use the best tools for the job and there is a tool
called something like rpmdeps which does some dependency calculations
really well. This tool is therefore used during do_package and the
results are shared between all the packaging backends. As an example of
the kind of dependency it can provide, it will look for scripts using
python/perl/bash and then add the appropriate dependencies but there are
other things as well.

So the dependency on rpm-native is expected, it doesn't mean we're going
rpm only, just that we use the best tools for the job.

Also, since we do support packaging management with rpm, we did add
zypper as our yum equivalent for the rpm use case.

Cheers,

Richard



