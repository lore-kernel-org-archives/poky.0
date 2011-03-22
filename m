Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F1214C80050
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 17:59:23 -0500 (CDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Q2AXr-0006Y0-20 from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Tue, 22 Mar 2011 15:59:23 -0700
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Tue, 22 Mar 2011 15:58:29 -0700
Received: from [172.30.80.248] (147.34.91.1) by svr-orw-fem-05 (147.34.97.43)
	with Microsoft SMTP Server id 14.1.270.1;
	Tue, 22 Mar 2011 15:59:22 -0700
Message-ID: <4D8929B2.6060101@mentor.com>
Date: Tue, 22 Mar 2011 15:58:58 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4D876DD3.5070106@mlbassoc.com>		<1300722848.30423.3751.camel@rex>	<4D877E6B.9000007@mlbassoc.com>		<1300730269.30423.3975.camel@rex>	<4D879883.5010501@linux.intel.com>		<4D879A14.7040104@mlbassoc.com>	<4D87AAF2.3010108@linux.intel.com>		<4D87B30F.90802@mlbassoc.com>
	<4D87B434.1070404@windriver.com>	<1300741361.3049.18.camel@elmorro>
	<4D87D815.6090404@mlbassoc.com>
In-Reply-To: <4D87D815.6090404@mlbassoc.com>
X-OriginalArrivalTime: 22 Mar 2011 22:58:29.0849 (UTC)
	FILETIME=[A92A2490:01CBE8E4]
Subject: Re: Using RPM with Poky
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
X-List-Received-Date: Tue, 22 Mar 2011 22:59:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/21/2011 03:58 PM, Gary Thomas wrote:

> Now, if I can just figure out how to make the [live] image larger...
> (free space)
> I can get on with the real testing I need to do.

Have you fiddled with IMAGE_OVERHEAD_FACTOR ?  If I read 
meta/classes/image.bbclass right setting that to 2 might give you enough 
free space.  And time to reconcile openembedded.master and oe-core on 
some image creation bits...


-- 
Tom Rini
Mentor Graphics Corporation

