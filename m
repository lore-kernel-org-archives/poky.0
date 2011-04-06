Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 53C404C80044
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 13:43:28 -0500 (CDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1Q7XhP-000642-N1 from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Wed, 06 Apr 2011 11:43:27 -0700
Received: from SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Wed, 6 Apr 2011 11:43:27 -0700
Received: from [172.30.80.151] (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.1.270.1;
	Wed, 6 Apr 2011 11:43:26 -0700
Message-ID: <4D9CB446.1040308@mentor.com>
Date: Wed, 6 Apr 2011 11:43:18 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <1302001365.24596.459.camel@rex>	<BANLkTim4ouc6ssOhfU4Dd8OfEq81MfC_gQ@mail.gmail.com>
	<1302100143.22904.68.camel@rex>
In-Reply-To: <1302100143.22904.68.camel@rex>
X-Enigmail-Version: 1.1.1
X-OriginalArrivalTime: 06 Apr 2011 18:43:27.0572 (UTC)
	FILETIME=[847E3940:01CBF48A]
Subject: Re: [OE-core] Proposed Multilib Implementation Brainstorming
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
X-List-Received-Date: Wed, 06 Apr 2011 18:43:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 04/06/2011 07:29 AM, Richard Purdie wrote:
> On Wed, 2011-04-06 at 10:47 +0200, Frans Meulenbroeks wrote:
>> I think most embedded systems would only use one lib. To take your
>> lib/lib64 example:
>> If I am developing for an embedded system I know whether it will run
>> as 32 or 64 bit, so there is no need to have both.
> 
> I agree that this is the most common usecase and that remains unchanged.
> 
>> multilib has its merits when it comes to supporting multiple hardware systems.
>> However as in the embedded world one is typically targeting a specific
>> hardware configuration.
>> (actually I don't recall having seen requests for multilib on the ML
>> before, although I could have missed it).
> 
> These have been requests I've received verbally in general but you'll
> see from the replies on the mailing list, Montavista is interested, Koen
> is as are a number of others.

While we're jumping on, Mentor is also interested in this.

-- 
Tom Rini
Mentor Graphics Corporation

