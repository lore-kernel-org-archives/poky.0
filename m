Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8825E0044D
	for <poky@yoctoproject.org>; Sun,  6 May 2012 17:53:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 May 2012 17:53:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="137634485"
Received: from edwin-gen.sh.intel.com (HELO [10.239.36.17]) ([10.239.36.17])
	by orsmga001.jf.intel.com with ESMTP; 06 May 2012 17:53:44 -0700
Message-ID: <4FA71D92.4060704@intel.com>
Date: Mon, 07 May 2012 08:55:46 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1335944480.git.edwin.zhai@intel.com>	
	<1555a6151b58fb142606f7e6cda23f0c95ac0c87.1335944480.git.edwin.zhai@intel.com>	
	<4FA4A56E.8050602@linux.intel.com> <1336294096.23777.55.camel@ted>
In-Reply-To: <1336294096.23777.55.camel@ted>
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
X-List-Received-Date: Mon, 07 May 2012 00:53:45 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/06/2012 04:48 PM, Richard Purdie wrote:
> There is a missing FILES_${PN}-dbg += "${bindir}/${baselib}/.debug".
>
> I am left wondering if we would be better doing something like:
>
> do_install_append () {
> 	if [ "${MLPREFIX}" != "" ]; then
> 		mv ${bindir}/pango-querymodules ${bindir}/${MLPREFIX}pango-querymodules
> 	fi
> }

Does it makes others hard to find the util if changing the name?

>
> It would also be worth cosidering if the patch would be any neater if we
> pass ${MLPREFIX} in as an extra variable?

Change the pango-querymodules command line to accept an extra parameter 
to indicate where to query? I can have a check to see if it works.

Regarding the lib, the path is hard coded, so we can't pass ${MLPREFIX} in.

>
> Cheers,
>
> Richard


