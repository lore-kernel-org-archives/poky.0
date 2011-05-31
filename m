Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A75804C800FB
	for <poky@yoctoproject.org>; Tue, 31 May 2011 16:26:15 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4VLQ6WA021503;
	Tue, 31 May 2011 22:26:06 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18425-08; Tue, 31 May 2011 22:26:02 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4VLPuYp021489
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 31 May 2011 22:25:57 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
In-Reply-To: <4DE546AE.1090301@intel.com>
References: <cover.1306865217.git.scott.a.garman@intel.com>
	<79A1BC44-8268-4177-BBC5-4A5B08BDC8B7@dominion.thruhere.net>
	<4DE53C21.7020000@linux.intel.com>  <4DE546AE.1090301@intel.com>
Date: Tue, 31 May 2011 22:25:40 +0100
Message-ID: <1306877140.27470.378.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org Project" <poky@yoctoproject.org>
Subject: Re: [OE-core] [PATCH 0/7] User/group creation at preinstall
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
X-List-Received-Date: Tue, 31 May 2011 21:26:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-05-31 at 12:51 -0700, Scott Garman wrote:
> On 05/31/2011 12:06 PM, Saul Wold wrote:
> > On 05/31/2011 11:45 AM, Koen Kooi wrote:
> >> Shouldn't patches like this be sent to the oe-core list? It wouldn't
> >> have saved me from the selinux bug in shadow, though :)
> >>
> > Scott,
> >
> > I would agree with Koen, this is a oe-core change, not a Poky only
> > change, please resend this request to the oe-core list.
> 
> Sure, I'll resend it to oe-core.
> 
> That said, I have no idea what criteria should be used to determine 
> which list to send things to, and I'm sure I'm not the only one. Is this 
> documented anywhere?

We're trying to make this simpler over time:

bitbake changes -> bitbake-devel
Any code in oe-core -> oe-core list
Anything in poky not in oe-core/bitbake -> poky list

Cheers,

Richard



