Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1A60E0059E
	for <poky@yoctoproject.org>; Wed, 30 Nov 2011 07:46:37 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAUFkYfK001259;
	Wed, 30 Nov 2011 15:46:34 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01005-02; Wed, 30 Nov 2011 15:46:31 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAUFkPwl001253
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 30 Nov 2011 15:46:27 GMT
Message-ID: <1322667994.17484.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
Date: Wed, 30 Nov 2011 15:46:34 +0000
In-Reply-To: <cover.1321402302.git.josh@linux.intel.com>
References: <cover.1321402302.git.josh@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [RFC PATCH 0/1] Can we drop Clutter bbappends?
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
X-List-Received-Date: Wed, 30 Nov 2011 15:46:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-11-15 at 16:16 -0800, Joshua Lock wrote:
> All,
> 
> The subject says it all. My reading of recent changes in oe-core around X and
> clutter lead me to believe that our bbappend is redundant so I'm proposing we
> drop it.
> 
> Both virtual/libgl being in DEPENDS and passing the --with-flavour=glx option
> are part of the standard clutter.inc now.
> 
> I may well be wrong but I like patches as a way to start discussion.
> 
> Cheers,
> Joshua
> 
> Please review the following changes for suitability for inclusion. If you have
> any objections or suggestions for improvement, please respond to the patches. If
> you agree with the changes, please provide your Acked-by.
> 
> The following changes since commit fa81f8dfb7a342e355b608aa4204cf23ed2b251c:
> 
>   mime.bbclass: fix typo (2011-11-15 12:05:30 +0000)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/poky-contrib josh/work
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=josh/work
> 
> Joshua Lock (1):
>   clutter: drop unneeded bbappends

I've went ahead and merged this.

Cheers,

Richard


