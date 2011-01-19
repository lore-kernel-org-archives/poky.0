Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D86A4C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 14:07:07 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0JK8pBd013659; Wed, 19 Jan 2011 20:08:51 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id YzMEvZMubLML; Wed, 19 Jan 2011 20:08:51 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0JK8jDY013650
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 19 Jan 2011 20:08:47 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>
	<20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>
Date: Wed, 19 Jan 2011 20:06:44 +0000
Message-ID: <1295467604.14388.23028.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 0/3] util-linux: split out libuuid and libblkid
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
X-List-Received-Date: Wed, 19 Jan 2011 20:07:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-01-19 at 20:51 +0100, Koen Kooi wrote:
> Tangent: have you considered switching to util-linux-ng?

util-linux *is* util-linux-ng :/

We probably should rename the recipe to be more clear about this...

Cheers,

Richard



