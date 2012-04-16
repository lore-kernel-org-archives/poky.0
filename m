Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E92BFE0044D
	for <poky@yoctoproject.org>; Mon, 16 Apr 2012 09:46:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3GGkUsg002202;
	Mon, 16 Apr 2012 17:46:30 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01663-04; Mon, 16 Apr 2012 17:46:26 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3GGkMhf002195
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 16 Apr 2012 17:46:23 +0100
Message-ID: <1334594785.616.10.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bob Cochran <yocto@mindchasers.com>
Date: Mon, 16 Apr 2012 17:46:25 +0100
In-Reply-To: <4F8C482B.7020808@mindchasers.com>
References: <cover.1334562500.git.dongxiao.xu@intel.com>
	<4fed98c4af3f78a7c76e92a57f714f4d93b3dd1f.1334562500.git.dongxiao.xu@intel.com>
	<4F8C482B.7020808@mindchasers.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-yocto: Move OELAYOUT_ABI definition to poky.conf
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
X-List-Received-Date: Mon, 16 Apr 2012 16:46:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-04-16 at 12:26 -0400, Bob Cochran wrote:
> On 04/16/2012 03:52 AM, Dongxiao Xu wrote:
> > The ABI version definition should go along with the DISTRO variable
> > since it impact the TMPDIR definition.
> >
> > Otherwise, if a user used to work with pure OE-Core, and then he/she
> > added meta-yocto layer, it will report ABI version incompatibility
> > issue. This is because ABI is changed to "8" by adding meta-yocto layer,
> > however the DISTRO variable is not defined and TMPDIR is still
> > "tmp-eglibc".
> 
> I'm having trouble understanding what was accomplished with these 
> changes and the motivation for them.  Didn't poky do it's job of 
> complaining when the user first built without the meta-yocto layer and 
> then added it back in, which caused OELAYOUT_ABI to change?
> 
> Before and after the change, OELAYOUT_ABI="8" was defined in 
> meta-yocto/conf.  The setting of the variable was only moved between 
> files in this layer (abi_version.conf to poky.conf).    Regardless, 
> neither of these files are going to be found by the "include" inside 
> bitbake.conf once meta-yocto is removed from BBPATH.
> 
> When OELAYOUT_ABI was previously set in abi_version.conf, poky depended 
> on meta-yocto being in front of meta in BBPATH for the variable to be 
> picked up correctly, so it seems that moving the variable to poky.conf 
> and reordering the includes / requires in bitbake.conf removes the path 
> dependency, but I don't see this motivation anywhere in the commit 
> comments.
> 
> I'm certainly not a seasoned poky user, but it seems to me that this 
> change isn't explained well.
> 
> 
> >
> > Defining the OELAYOUT_ABI variable in poky.conf could fix this issue.
> >
> > This fixes [YOCTO #2303]
> 
> 
> Going into the bug description, it is stated in item #5 that the 
> meta-yocto layer was added back in, but it doesn't state whether DISTRO 
> was set again in local.conf to poky.  I'm thinking that was part of the 
> test procedure, but left out?
> 
> Any clarifications would be greatly appreciated.  Thanks!


The issue was that you could add the meta-yocto layer without setting
DISTRO="poky" but instead leave DISTRO unset. This would leave things in
an inconsistent state.

The change moves OELAYOUT_ABI alongside the change that uses it and
hence makes things consistent.

Cheers,

Richard






