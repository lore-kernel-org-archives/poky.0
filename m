Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 056584C8120A
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 07:42:07 -0600 (CST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1PQKHX-0005dy-EM from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Wed, 08 Dec 2010 05:42:07 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	svr-orw-fem-01.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Wed, 8 Dec 2010 05:42:07 -0800
Received: from [172.30.80.80] ([172.30.80.80]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Wed, 8 Dec 2010 06:42:06 -0700
Message-ID: <4CFF8B2A.20003@mentor.com>
Date: Wed, 08 Dec 2010 06:42:02 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Lightning/1.0b1 Thunderbird/3.0.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1291791085.2779.125.camel@constitution.bos.jonmasters.org>
	<1291806770.1554.304.camel@rex>
In-Reply-To: <1291806770.1554.304.camel@rex>
X-OriginalArrivalTime: 08 Dec 2010 13:42:06.0446 (UTC)
	FILETIME=[B42518E0:01CB96DD]
Subject: Re: distcc/ccache?
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
X-List-Received-Date: Wed, 08 Dec 2010 13:42:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/08/2010 04:12 AM, Richard Purdie wrote:
> On Wed, 2010-12-08 at 01:51 -0500, Jon Masters wrote:
>> Anyone happen to know if poky plays nicely with distcc?
>
> I think most success has been with icecc in the past and there is a
> icecc class which has code to enable that. It turns out that compiling
> isn't the main bottleneck in builds though and icecc isn't something we
> test in Poky at this time, we just provide the same class OE has which
> may or may not work.

The openembedded class has been working recently but indeed, that's not 
the bottleneck you're likely to run into anymore.

-- 
Tom Rini
Mentor Graphics Corporation

