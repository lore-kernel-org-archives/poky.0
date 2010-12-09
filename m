Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9625D4C80039
	for <poky@lists.pokylinux.org>; Thu,  9 Dec 2010 08:45:06 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9Ej6vG008201;
	Thu, 9 Dec 2010 14:45:06 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07945-06; Thu,  9 Dec 2010 14:45:01 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9EiwS6008185
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Dec 2010 14:45:00 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CFF8418.6060901@mlbassoc.com>
References: <4CFF8418.6060901@mlbassoc.com>
Date: Thu, 09 Dec 2010 14:44:47 +0000
Message-ID: <1291905887.1554.869.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: [PATCH] Making using layers even friendlier
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
X-List-Received-Date: Thu, 09 Dec 2010 14:45:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-08 at 06:11 -0700, Gary Thomas wrote:
> I'm building poky for a number of unique platforms which I
> want to keep logically separate.  By using the new BBLAYERS
> support, this is working out quite well.
> 
> However, I find it cumbersome to start a new build for a given
> platform.  This is because conf/local.conf and conf/bblayers.conf
> need to be tailored for that platform.  In particular, the file
> conf/bblayers.conf needs to be modified to incorporate the
> meta layers used by the given platform.
> 
> By incorporating the attached patch, this can now be done easily
> on the initial build tree setup.  Just run something like this:
>    % POKYCONF=meta-board1/conf . <POKYBASE>/poky-init-build-env my_build_tree
> As the build tree is set up, the files from <POKYBASE>/meta-board1/conf
> will be used to populate the <BUILD>/conf directory.  These can then
> be adjusted as necessary.  The patch allows for the provided config
> files to be either <POKYBASE> relative or absolute, allowing even
> more flexibility.
> 
> Comments?

I think its a reasonable idea and I've added it to master.

Cheers,

Richard


