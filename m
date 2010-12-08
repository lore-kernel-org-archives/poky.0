Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B38DB4C811F8
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 19:16:38 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Dec 2010 17:16:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,313,1288594800"; d="scan'208";a="634165900"
Received: from unknown (HELO [10.255.13.6]) ([10.255.13.6])
	by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2010 17:16:38 -0800
Message-ID: <4CFEDC75.6060207@intel.com>
Date: Tue, 07 Dec 2010 17:16:37 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Stewart, David C" <david.c.stewart@intel.com>
References: <4CFD94DD.7010906@intel.com>
	<4CFE7269.4000507@intel.com>	<1291747386.9405.3.camel@scimitar>
	<4CFE82DC.5020608@intel.com>	<74857834-4B10-4FD1-89C3-D5671140B69D@windriver.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC511D0@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC511D0@orsmsx501.amr.corp.intel.com>
Cc: "<poky@yoctoproject.org>" <poky@yoctoproject.org>
Subject: Re: Master Stability
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
X-List-Received-Date: Wed, 08 Dec 2010 01:16:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/07/2010 05:06 PM, Stewart, David C wrote:
>> From: poky-bounces@yoctoproject.org [mailto:poky-
>> bounces@yoctoproject.org] On Behalf Of deVries, Alex
>> Sent: Tuesday, December 07, 2010 1:27 PM
>>
>> Does Intel have a plan to expand the amount of hardware used for
>> automated builds? It would give us a lot more build coverage and help
>> with overall build quality.
>
> New server has arrived, waiting to be integrated into the hosted data center.
>
> I'm trying to get a bead on whether we need more, and can try to budget this for next quarter if the new one isn't enough.
>
We will need new hardware next qtr, maybe even soon, as we start to 
enable more targets and add support for swabber on a semi-regular basis 
our cycles are going to be greatly diminished.

We should really look into getting a large multi-core machine to help.

Sau!


  _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


