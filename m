Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FFE0E006F9
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 07:43:33 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA3EhTcu028621;
	Thu, 3 Nov 2011 14:43:29 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28034-05; Thu,  3 Nov 2011 14:43:25 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA3EhLY0028615
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 3 Nov 2011 14:43:21 GMT
Message-ID: <1320331401.20107.57.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
Date: Thu, 03 Nov 2011 14:43:21 +0000
In-Reply-To: <e5f24b1ad532a40b74e4e6453604af1d6a8d67ee.1320261024.git.josh@linux.intel.com>
References: <cover.1320261024.git.josh@linux.intel.com>
	<e5f24b1ad532a40b74e4e6453604af1d6a8d67ee.1320261024.git.josh@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] machine/atom-pc: enable sound
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
X-List-Received-Date: Thu, 03 Nov 2011 14:43:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-11-02 at 12:25 -0700, Joshua Lock wrote:
> Add alsa to the MACHINE_FEATURES - looks like this was an oversight.
> 
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
>  meta-yocto/conf/machine/atom-pc.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Merged to master, thanks.

Richard


