Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAD6FE0044D
	for <poky@yoctoproject.org>; Mon,  7 May 2012 01:06:27 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4786Ma0001825;
	Mon, 7 May 2012 09:06:22 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01723-01; Mon,  7 May 2012 09:06:18 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4786BsB001819
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 7 May 2012 09:06:12 +0100
Message-ID: <1336377976.23777.63.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Zhai, Edwin" <edwin.zhai@intel.com>
Date: Mon, 07 May 2012 09:06:16 +0100
In-Reply-To: <4FA71D92.4060704@intel.com>
References: <cover.1335944480.git.edwin.zhai@intel.com>
	<1555a6151b58fb142606f7e6cda23f0c95ac0c87.1335944480.git.edwin.zhai@intel.com>
	<4FA4A56E.8050602@linux.intel.com> <1336294096.23777.55.camel@ted>
	<4FA71D92.4060704@intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] pango: Fix modules load failure in multilib environment
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
X-List-Received-Date: Mon, 07 May 2012 08:06:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-05-07 at 08:55 +0800, Zhai, Edwin wrote:
> On 05/06/2012 04:48 PM, Richard Purdie wrote:
> > There is a missing FILES_${PN}-dbg += "${bindir}/${baselib}/.debug".
> >
> > I am left wondering if we would be better doing something like:
> >
> > do_install_append () {
> > 	if [ "${MLPREFIX}" != "" ]; then
> > 		mv ${bindir}/pango-querymodules ${bindir}/${MLPREFIX}pango-querymodules
> > 	fi
> > }
> 
> Does it makes others hard to find the util if changing the name?
> 
> >
> > It would also be worth cosidering if the patch would be any neater if we
> > pass ${MLPREFIX} in as an extra variable?
> 
> Change the pango-querymodules command line to accept an extra parameter 
> to indicate where to query? I can have a check to see if it works.
>
> Regarding the lib, the path is hard coded, so we can't pass ${MLPREFIX} in.

Sorry, I meant pass in ${MLPREFIX} as an option to configure so it would
be compiled in.

Cheers,

Richard


