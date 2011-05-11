Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CEC924C80FA8
	for <poky@yoctoproject.org>; Wed, 11 May 2011 12:41:07 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BHendL022745;
	Wed, 11 May 2011 18:40:49 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22628-03; Wed, 11 May 2011 18:40:45 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BHeiIG022739
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 11 May 2011 18:40:44 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <BANLkTintvgFGKUUUdvq2M7Q=m+gYuzs2-A@mail.gmail.com>
References: <4DCAB609.8030601@linux.intel.com>
	<BANLkTintvgFGKUUUdvq2M7Q=m+gYuzs2-A@mail.gmail.com>
Date: Wed, 11 May 2011 18:40:37 +0100
Message-ID: <1305135637.30391.455.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Otavio Salvador <otavio@ossystems.com.br>,
	Darren Hart <dvhart@linux.intel.com>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	Tom Rini <tom_rini@mentor.com>
Subject: Re: RFC: create-pull-request / send-pull-request updates
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
X-List-Received-Date: Wed, 11 May 2011 17:41:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 10:01 -0700, Khem Raj wrote:
> On Wed, May 11, 2011 at 9:15 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> >
> > Thoughts/Comments?
> >
> 
> I would suggest to alter the process a bit and get rid of the scripts
> completely. Patches are sent to mailing list for review once reviewed
> the final patches are
> sent as git pull-request. It would simplify things.

I'd argue that it doesn't. It just means the requests come in different
formats, sometimes with key pieces of information missing which means
the people trying to handle the requests (like me) get frustrated.

I find it easiest to deal with requests that have come through those
scripts.

Cheers,

Richard


