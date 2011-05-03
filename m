Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD6CE4C80A46
	for <poky@yoctoproject.org>; Tue,  3 May 2011 18:15:54 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p43NFgis023242;
	Wed, 4 May 2011 00:15:42 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22736-08; Wed,  4 May 2011 00:15:38 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p43NFaH8023236
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 4 May 2011 00:15:37 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Colin Walters <walters@verbum.org>
In-Reply-To: <BANLkTi=N_hm-qCo0Gi+zoAH4mH+dszpRdA@mail.gmail.com>
References: <BANLkTimaSk6vz1AeoRoT63T24XX=w1TuaA@mail.gmail.com>
	<1304419011.21461.98.camel@rex>
	<BANLkTi=N_hm-qCo0Gi+zoAH4mH+dszpRdA@mail.gmail.com>
Date: Wed, 04 May 2011 00:15:35 +0100
Message-ID: <1304464535.21461.145.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@yoctoproject.org>
Subject: Re: post-image-creation postinsts
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
X-List-Received-Date: Tue, 03 May 2011 23:15:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-05-03 at 19:01 -0400, Colin Walters wrote:
> On Tue, May 3, 2011 at 6:36 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >
> >> It seems to me we could add some mechanism for mounting the image
> >> filesystem and running a script in there (guestfs?), or maybe an
> >> automated QEMU boot, run the postinsts, and sync/shutdown?
> >>
> > force the script to run on the target device. If there is a way to run
> > this at image generation time (cross safe), tell us what it is and we
> > can make it happen at image generation time!
> 
> See the bit I quoted from my original mail.  I think the most general
> solution is simply "run qemu, then shutdown", and I can look at
> automating this inside OE, but was just curious if anyone had any
> better ideas.
> 
> Would a patch to do this by default for image.bbclass make sense?

Well, we've been trying to remove the dependencies on qemu rather than
add them. I'm still not convinced we need qemu for all these cases...

Cheers,

Richard


