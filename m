Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A41934C80050
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 12:40:38 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2EHeYo0004397;
	Mon, 14 Mar 2011 17:40:34 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03959-08; Mon, 14 Mar 2011 17:40:30 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2EHeRWU004391
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 14 Mar 2011 17:40:28 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Rini <tom_rini@mentor.com>
In-Reply-To: <4D7E4FB9.2060203@mentor.com>
References: <4D7A08BF.80303@mlbassoc.com> <1299863594.1445.2875.camel@rex>
	<4D7A59DC.6070900@mlbassoc.com> <4D7A5AFA.7080107@mentor.com>
	<4D7A5CB8.8000701@mlbassoc.com>
	<20110312001053.GF5603@sakrah.homelinux.org>
	<4D7E4FB9.2060203@mentor.com>
Date: Mon, 14 Mar 2011 17:40:21 +0000
Message-ID: <1300124421.30423.311.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Native vs not
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
X-List-Received-Date: Mon, 14 Mar 2011 17:40:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-14 at 10:26 -0700, Tom Rini wrote:
> On 03/11/2011 05:10 PM, Khem Raj wrote:
> 
> > I think having some buildhost/native packages (based on distro/version) trusted and assume provided or even
> > installed using the build host package management could be one approach
> > in modern distros I think we could use lot of host packages as is. or
> > may be trust all and keep a list of blacklisted packages for a given
> > distro might be something useful
> 
> I've been thinking about this a bit and at least at the high level there 
> is an argument for making it easy to opt out of a big class of host 
> tools, on a modern distro and trade reprodicibility / reliability for 
> faster initial build times.  And on the flip side, opt out of a bit more 
> of our host tool dependencies.

This is what ASSUME_PROVIDED is there for :)

Cheers,

Richard



