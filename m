Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A6014C80A74
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 07:03:31 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7D3S0o003301;
	Tue, 7 Dec 2010 13:03:28 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03093-03; Tue,  7 Dec 2010 13:03:24 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7D3KE8003295
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 7 Dec 2010 13:03:20 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1291651199.git.josh@linux.intel.com>
References: <cover.1291651199.git.josh@linux.intel.com>
Date: Tue, 07 Dec 2010 13:03:14 +0000
Message-ID: <1291726994.1554.5.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/10] BitBake GUI fixes
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
X-List-Received-Date: Tue, 07 Dec 2010 13:03:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-12-06 at 15:59 +0000, Joshua Lock wrote:
> This series of patches fixes the BitBake GUI's and some of the code they
> interact with such that I can now successfully use the goggle UI with the
> XMLRPC server.
> 
> The series is currently pretty useless due to bug#561
> (http://bugzilla.pokylinux.org/show_bug.cgi?id=561) preventing use of the
> goggle UI with the none server however I would appreciate review on the patch
> set before it becomes to large.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master
> 
> Thanks,
>     Joshua Lock <josh@linux.intel.com>

I merged these apart from:

http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=josh/master&id=69396fc01d7401d6a110ba30e7a06d2abd45e007

which as you say in the commit, I'm not sure if this is a cooker or a
server problem. I think we need to dig into and clearly define that.

Cheers,

Richard


