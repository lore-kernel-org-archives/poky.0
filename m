Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E440C4C80546;
	Mon, 28 Feb 2011 14:47:42 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1SKlZGP028251;
	Mon, 28 Feb 2011 20:47:35 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27846-07; Mon, 28 Feb 2011 20:47:32 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1SKlSHK028245
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 28 Feb 2011 20:47:28 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D6BEF31.1030400@linux.intel.com>
References: <cover.1298429140.git.bruce.ashfield@windriver.com>
	<4D6BEF31.1030400@linux.intel.com>
Date: Mon, 28 Feb 2011 20:47:14 +0000
Message-ID: <1298926034.26736.7859.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/1] linux-yocto: enable audio for qemux86 and qemux86-64
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
X-List-Received-Date: Mon, 28 Feb 2011 20:47:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-28 at 10:53 -0800, Darren Hart wrote:
> On 02/22/2011 06:49 PM, Bruce Ashfield wrote:
> > Richard/Saul,
> 
> Hi Bruce, I'm a little late to the party, but was wondering what your 
> thoughts are on the whole OSS thing. It seems we should be as consistent 
> as possible in our various Yocto Linux kernel images. Do we want to 
> support OSS? I recall several years ago that OSS had drivers that Alsa 
> did not and was needed for some boards - is that still the case? My 
> feeling is, if possible, I'd like to just have alsa in our kernels and 
> help reduce the raging redundancy in the audio API space.

I'd wondered about this too. In general I'd suggest Yocto's position is
to push for alsa drivers and see OSS as a legacy thing. As the author of
chunks of ALSA SoC code, I've put that into practise myself too! :)

Cheers,

Richard


