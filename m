Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id DF48A4C80FA4;
	Wed,  8 Dec 2010 06:49:24 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8CnO9H020350;
	Wed, 8 Dec 2010 12:49:24 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20231-02; Wed,  8 Dec 2010 12:49:20 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8CnHTN020344
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 8 Dec 2010 12:49:17 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: yocto <yocto@yoctoproject.org>, poky <poky@yoctoproject.org>
Date: Wed, 08 Dec 2010 12:49:08 +0000
Message-ID: <1291812548.1554.475.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Adding extra metadata to Yocto/Poky
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
X-List-Received-Date: Wed, 08 Dec 2010 12:49:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

We're in a position where we have people wanting to extend Poky but
wondering exactly how to add their own layer and make Poky useful for
their specific use cases.

This is a topic I want to work with the OE community on and have
discussion about but equally, people are interested at the moment and we
need something people can experiment with now so we can see what works
and what doesn't.

With this in mind I'm proposing we create a "poky-extras" repository
which contains multiple user contributed layers.

My proposed ground rules are:

* it has the OE style open contributions model
* consists of a set of layers, each clearly identified at the top level
* each layer has a clearly named maintainer or maintainers
* people respect the layer maintainers
* layers are split into logical "topics" where at all possible

Ultimately, the repo structure and some of the details could change but
I'd like to experiment and see what we can come up with which is
probably the only way we're going to move forward.

Any comments, objections or better ideas? :)

Cheers,

Richard



