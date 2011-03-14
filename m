Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id EDC344C80A73
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 12:26:32 -0500 (CDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1PzBXM-0001Qu-EF from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Mon, 14 Mar 2011 10:26:32 -0700
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 14 Mar 2011 10:26:21 -0700
Received: from [172.30.80.14] (147.34.91.1) by svr-orw-fem-05 (147.34.97.43)
	with Microsoft SMTP Server id 14.1.270.1;
	Mon, 14 Mar 2011 10:26:31 -0700
Message-ID: <4D7E4FB9.2060203@mentor.com>
Date: Mon, 14 Mar 2011 10:26:17 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4D7A08BF.80303@mlbassoc.com> <1299863594.1445.2875.camel@rex>
	<4D7A59DC.6070900@mlbassoc.com> <4D7A5AFA.7080107@mentor.com>
	<4D7A5CB8.8000701@mlbassoc.com>
	<20110312001053.GF5603@sakrah.homelinux.org>
In-Reply-To: <20110312001053.GF5603@sakrah.homelinux.org>
X-OriginalArrivalTime: 14 Mar 2011 17:26:21.0537 (UTC)
	FILETIME=[EFA90D10:01CBE26C]
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
X-List-Received-Date: Mon, 14 Mar 2011 17:26:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/11/2011 05:10 PM, Khem Raj wrote:

> I think having some buildhost/native packages (based on distro/version) trusted and assume provided or even
> installed using the build host package management could be one approach
> in modern distros I think we could use lot of host packages as is. or
> may be trust all and keep a list of blacklisted packages for a given
> distro might be something useful

I've been thinking about this a bit and at least at the high level there 
is an argument for making it easy to opt out of a big class of host 
tools, on a modern distro and trade reprodicibility / reliability for 
faster initial build times.  And on the flip side, opt out of a bit more 
of our host tool dependencies.

-- 
Tom Rini
Mentor Graphics Corporation

