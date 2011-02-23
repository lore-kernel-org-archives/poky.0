Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5C304C80A7D;
	Wed, 23 Feb 2011 10:23:24 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1NGNJjH016465;
	Wed, 23 Feb 2011 16:23:19 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 16323-03; Wed, 23 Feb 2011 16:23:15 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1NGN7c9016424
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 23 Feb 2011 16:23:10 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <f2ce752b4053f9b7d0327d2316432906f459f92f.1298429140.git.bruce.ashfield@windriver.com>
References: <cover.1298429140.git.bruce.ashfield@windriver.com>
	<f2ce752b4053f9b7d0327d2316432906f459f92f.1298429140.git.bruce.ashfield@windriver.com>
Date: Wed, 23 Feb 2011 16:23:02 +0000
Message-ID: <1298478182.26736.37.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/1] linux-yocto: enable audio for selected qemu targets
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
X-List-Received-Date: Wed, 23 Feb 2011 16:23:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-22 at 21:49 -0500, Bruce Ashfield wrote:
> Fixes [BUGID #488 #734]
> 
> Enable audio for qemux86/qemux86-64 via the following kernel
> configuration options.
> 
>   CONFIG_SOUND_OSS_CORE=y
>   CONFIG_SOUND_OSS_CORE_PRECLAIM=y
>   CONFIG_SND_RAWMIDI=m
>   CONFIG_SND_SEQUENCER=y
>   CONFIG_SND_OSSEMUL=y
>   CONFIG_SND_MIXER_OSS=y
>   CONFIG_SND_PCM_OSS=y
>   CONFIG_SND_PCM_OSS_PLUGINS=y
>   CONFIG_SND_SEQUENCER_OSS=y
>   CONFIG_SND_RAWMIDI_SEQ=m
>   CONFIG_SND_AC97_CODEC=m
>   CONFIG_SND_ENS1370=m
>   CONFIG_SND_INTEL8X0=m
>   CONFIG_AC97_BUS=m
> 
> The mechanism to trigger these options is in the form of an
> optional kernel feature that is only appended for qemux86
> and qemux86-64, but is contained within the kernel tree.
> 
> This allows several things:
> 
>   - the options to be available/shared for all boards
>   - the options to be in tree
>   - to not add the options to every board, which unecessarily
>     bloats the default configuration.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

Merged to master, thanks Bruce.

Cheers,

Richard


