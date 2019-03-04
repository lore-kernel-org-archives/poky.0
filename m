Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91365E00D14; Mon,  4 Mar 2019 11:06:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 420 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Mar 2019 11:06:43 PST
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85F38E00D11
	for <poky@yoctoproject.org>; Mon,  4 Mar 2019 11:06:43 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44Cq8F3T9mz6g;
	Mon,  4 Mar 2019 19:59:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1551725982;
	bh=deDLbKTdMIkHd3ph3ofMHT0vBJRCGLsfCPAaSc9uLnA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VaMx1kjSs2fX+pB8Pt9QaG24AnaIDdwJ/XLNvHtu/SRQsPFq1o0jO+zhIfbsednat
	g8C9y/ZNMV5aoGvM2cMTy8TuIOBkmTff2eNKeqRD/3VOjjn1yJkeE2jcYPYmlOb5MD
	+7y9853a/6lRwMy3SkBeqCphhpKcF38Gy9kJzdgaMreS0P+qREw+ZwvClEcoq/LMks
	UssKgHxFAsyy8fQ4UFuT1katX1U0NeBWHWV4D0m+W0tvnuDbbnCJSeu2hTyvPVDDa7
	z0tiLck3U46svf2jd8SrC0z7Hi5OD2WJi3bAKj6vLhFGOYV+wyOzYxEXhFdUZ+G8zC
	whgZbXx3tSvFfuFZBsPrggaFAUH5EjddNf9QJN7/8djl+LvY46wxBv8O/2vvEjVBn1
	GNg7m5E3oYaT7QQqgJoTR3JQ7WG9U59MgnliMYRZf0/EqRs0j9IGWOlo5imujPqYB6
	1ldnaced22GH7JzK1cDTmua8D4j4/AUUfsAl083ARuvTJNOexeTXCWcbmjDDe3TlD5
	pmsIMUta0bJLCkZ4+yKN5kgDLwXYmrXP5bIsKezxFeKfnVa0IClPTNlvbBJO3rbZaZ
	/09/o4XVR8N7K3mHgriGGXccWey7kHMhEcDYf5jVSohFAQY6vENEJB2KrCqU9yTFQf
	4q0hLk/To5U9tqUTr86PB0Ic=
Date: Mon, 4 Mar 2019 20:59:37 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Message-ID: <20190304185937.GC1170@localhost>
References: <D67743D4-7A14-4AB5-AAC4-CC5E4999EB6D@gmail.com>
MIME-Version: 1.0
In-Reply-To: <D67743D4-7A14-4AB5-AAC4-CC5E4999EB6D@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: paul.eggleton@linux.intel.com, Poky Project <poky@yoctoproject.org>
Subject: Re: /usr/include/libnl3 or /usr/include
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Mar 2019 19:06:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon, Mar 04, 2019 at 11:50:43AM -0500, Jean-Francois Dagenais wrote:
> Hi guys,
> 
> There's been a couple of time when I've hit snags where packages use their version numbers in the paths of stuff they provide. This poses a small challenge where dependent recipes might have to specifically account for this "special" path.
> 
> For example, libnl is using /usr/include/libnl3 and wpa_supplicant has to specifically "hack" its configure process to be able to find the libnl headers.
> 
> Since libnl does explicitly that it cannot co-exist with it's previous versions:
> RREPLACES_${PN} = "libnl2"
> RCONFLICTS_${PN} = "libnl2"
> 
> what is the point of the sub-path?

It's where upstream installs their headers.

> Would you receive a patchset which moves libnl's headers files back at /usr/include (or rather: ${includedir}) ?
> 
> I suspect this would also set a precedent.

Diverging libnl from upstream does not sound good to me.

The correct fix would be for wpa_supplicant to use
"pkg-config --cflags libnl-3.0", and the upstream
sources are already doing that.

If this is not working without the hack in wpa_supplicant then it should 
be fixed there, but it is also possible that this hack is just a leftover
from ancient wpa_supplicant versions and can simply be removed.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


