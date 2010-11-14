Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 934A24C80BCF
	for <poky@yoctoproject.org>; Sun, 14 Nov 2010 07:04:45 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAED4fjl004899;
	Sun, 14 Nov 2010 13:04:41 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04841-01; Sun, 14 Nov 2010 13:04:37 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAED4ZC3004893
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 14 Nov 2010 13:04:35 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D2A9B4E64@shsmsx502.ccr.corp.intel.com>
References: <AANLkTinE-MSLQ4FGC-2QA3QyNpmxKtdJAPET67bRkyHM@mail.gmail.com>
	<4CDD8FFF.6090707@intel.com>
	<AANLkTikQqNmh-zk1iBuGp+gcRNXiJcgQru6J78eRW9JN@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D2A9B4E64@shsmsx502.ccr.corp.intel.com>
Date: Sun, 14 Nov 2010 13:04:34 +0000
Message-ID: <1289739874.1272.4579.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: newbie recipe question
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
X-List-Received-Date: Sun, 14 Nov 2010 13:04:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-11-14 at 08:56 +0800, Tian, Kevin wrote:
> From: Marc
> Sent: Sunday, November 14, 2010 12:29 AM
> 
> > Yes it works on files but not on subdirectories
> 
> Then I think Darren's suggestion is what you expect: write a install script which
> contains all the tricks you want (subdirectory, *, ...), and then have do_install
> invoke that script directly...

Its not something I'd encourage but you could just do a cp -r (recursive
copy). You would then need to be careful about owners and permissions
though (which is why you'll see install being used most often).

Cheers,

Richard


