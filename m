Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A7FD4C800A4
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 10:34:10 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1SGY97X000422
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 08:34:09 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 28 Feb 2011 08:34:09 -0800
Message-ID: <4D6BCE80.1030501@windriver.com>
Date: Mon, 28 Feb 2011 10:34:08 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <1298906358.26736.7523.camel@rex>
In-Reply-To: <1298906358.26736.7523.camel@rex>
X-Originating-IP: [172.25.36.227]
Subject: Re: OE-Core - What this means for Yocto/Poky and what we need to	do
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
X-List-Received-Date: Mon, 28 Feb 2011 16:34:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

I've seen a few questions on this outside of the mailing list.  Let me try to
state it in a different way.

The existing "meta" layer within Yocto is being split into two layers.  An
"oe-core" layer and a "meta-yocto" layer.

This means you will need to determine where the software you are working on
lives -- if it's a new component, assume "meta-yocto".

The "oe-core" layer will be shared with the Open Embedded projected, and under
the control of the Open Embedded Technical Steering committee.  While the
"meta-yocto" continues to be owned by the Yocto project.  This is why it's two
different mailing lists will be required for patches.

(The goal of all of this work is to sync up with the Open Embedded community.
Including distributions that use Open Embedded as a basis for their work.)

--Mark

On 2/28/11 9:19 AM, Richard Purdie wrote:
> Hi,
> 
> As most have gathered, there are changes afoot in the OE world and we
> want to start increasing collaboration between Yocto and OE through the
> creation of an OE-Core repository which both projects share.
> 
> This was going to be too much change for inclusion for the 1.0 release
> but now that has branched we need to start working on this. I appreciate
> that people have a number of different priorities but I'd ask that
> people do read this email, take time to understand these changes and
> bare with the inevitable disruption this change is going to cause.
> Obviously we'll try and keep disruption to a minimum.
> 
> The implication for Yocto/Poky is that what is currently the meta
> directory in the Poky repo is going to get split into two pieces. One
> will be a mirror of the OE-Core repo (meta), the other will be yocto
> specific pieces (meta-yocto). Each of these will be a layer.
> 
> For anything within the OE-Core directory, the patches need to be
> submitted on the OE-Core mailing list. Patches to the other components
> need to be separate and on the Poky list as things are today. I expect
> the distro team to subscribe to the OE-Core list and participate there
> on for discussions on core components:
> 
> http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core
> 
> meta-yocto patches and discussion should continue on the poky list as
> today.
> 
> I am prepared for now to help out getting user submitted patches for
> Yocto/Poky, split up and submitted to OE-Core as needed. Ultimately, I'm
> hoping we can enhance the tooling to understand layers and be able to
> put send patches to the right places but we don't have such tools yet
> and its a chicken and egg problem.
> 
> I also want to change the Poky repo so all the pieces contained within
> are mirror copies of the appropriate upstreams. I've been working on
> resolving the delta with upstream bitbake and for some components (docs,
> meta-yocto, yocto-glue) we'll need to create them.
> 
> I'm going to start making these changes on the master branch as we're
> under a lot of pressure from OE to start doing this *now*. I want to be
> clear these changes are not destined for the 1.0 release.
> 
> Cheers,
> 
> Richard
> 
> 
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


