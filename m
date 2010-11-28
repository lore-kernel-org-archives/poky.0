Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 718A24C811E1
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 15:19:55 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJqdW021077;
	Sun, 28 Nov 2010 21:19:52 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20810-06; Sun, 28 Nov 2010 21:19:48 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJhA0021064
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 28 Nov 2010 21:19:46 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <cover.1290405852.git.dongxiao.xu@intel.com>
References: <cover.1290405852.git.dongxiao.xu@intel.com>
Date: Sun, 28 Nov 2010 14:27:45 +0000
Message-ID: <1290954465.27143.226.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1][RFC] Optimize file parsing speed
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
X-List-Received-Date: Sun, 28 Nov 2010 21:19:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Dongxiao,

On Mon, 2010-11-22 at 14:04 +0800, Dongxiao Xu wrote:
> I found that when parsing bitbake files, most of the variables in
> d.keys() are in distro_tracking_fields.inc, and they are not used in
> normal build.
> 
> This pull request moves some distro related functions in
> utility-tasks.bbclass into distrodata.bbclass, and remove the inclusion
> of distro_tracking_fields.inc from poky.conf. This could gain about 25%
> parsing time saving.

I'm going to take the patch but I'd like to be clear where the speed
gains come from with this change. I suspect some are due to a smaller
number of keys but I also suspect the smaller number of tasks involved
helps too!

Also, a lot of those keys are override keys so perhaps its speeding up
update_data() calls and some of the gain is from there too?

Anyhow, its a good move :)

Cheers,

Richard


