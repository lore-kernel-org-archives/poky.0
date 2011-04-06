Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 584D64C80044
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 09:29:21 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p36ETICp019235;
	Wed, 6 Apr 2011 15:29:18 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19202-01; Wed,  6 Apr 2011 15:29:14 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p36ET8eo019229
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 6 Apr 2011 15:29:11 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
In-Reply-To: <BANLkTim4ouc6ssOhfU4Dd8OfEq81MfC_gQ@mail.gmail.com>
References: <1302001365.24596.459.camel@rex>
	<BANLkTim4ouc6ssOhfU4Dd8OfEq81MfC_gQ@mail.gmail.com>
Date: Wed, 06 Apr 2011 07:29:03 -0700
Message-ID: <1302100143.22904.68.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [OE-core] Proposed Multilib Implementation Brainstorming
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
X-List-Received-Date: Wed, 06 Apr 2011 14:29:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-06 at 10:47 +0200, Frans Meulenbroeks wrote:
> I think most embedded systems would only use one lib. To take your
> lib/lib64 example:
> If I am developing for an embedded system I know whether it will run
> as 32 or 64 bit, so there is no need to have both.

I agree that this is the most common usecase and that remains unchanged.

> multilib has its merits when it comes to supporting multiple hardware systems.
> However as in the embedded world one is typically targeting a specific
> hardware configuration.
> (actually I don't recall having seen requests for multilib on the ML
> before, although I could have missed it).

These have been requests I've received verbally in general but you'll
see from the replies on the mailing list, Montavista is interested, Koen
is as are a number of others.

> Also I'm somewhat worried by the actual complexity this adds (to the
> build process and the recipes, and timewise probably also to the
> bootstrap process as additional packages have to be built).
> 
> Not sure if that is a desirable route forward, but if we (we as in OE
> members + developers) feel that OE should go that way, I would
> sugggest to have a way to opt-in or opt-out

Multilib will be opt-in. Things will operate just as they do today
unless you specify you want a multilib configuration.

Cheers,

Richard


