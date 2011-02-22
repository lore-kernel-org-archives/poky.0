Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A5DB34C800B2
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 02:34:18 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1M8YD2v026948;
	Tue, 22 Feb 2011 08:34:13 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26500-03; Tue, 22 Feb 2011 08:34:09 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1M8Y4Ad026942
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 22 Feb 2011 08:34:04 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Rini <tom_rini@mentor.com>
In-Reply-To: <4D631BF6.7040205@mentor.com>
References: <cover.1298340269.git.edwin.zhai@intel.com>
	<31a41b85a0a81f7a6318aaaee1f19333e6497c9a.1298340269.git.edwin.zhai@intel.com>
	<4D631BF6.7040205@mentor.com>
Date: Tue, 22 Feb 2011 08:34:02 +0000
Message-ID: <1298363642.11289.3261.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] qemu: enable audio support
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
X-List-Received-Date: Tue, 22 Feb 2011 08:34:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-21 at 19:14 -0700, Tom Rini wrote:
> On 02/21/2011 07:06 PM, Zhai Edwin wrote:
> > From: Zhai Edwin<edwin.zhai@intel.com>
> >
> > On qemux86, export ac97&  es1370 emulated device to guest, and enable host oss&alsa
> > driver. So end user can get sound from qemux86 guest if the sound card
> > driver installed.
> 
> Is there a reason to limit this to qemux86/x86_64?  Or are you assuming 
> they won't work on other platforms (I have vague memories of putting an 
> actual es1370 card in a powerpc platform, a long long time ago...)?  Or 
> have you confirmed elsewhere it's not supported outside these platforms? 

I think this is a case of one step at a time. Getting sound working on
any of the qemu platforms is a step forward and once we get things
working (and merged) for that, we can think about others which might be
trickier.

Cheers,

Richard


