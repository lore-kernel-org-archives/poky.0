Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 43DFE4C80A74
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 18:31:40 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 16:28:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,308,1288594800"; d="scan'208";a="684529611"
Received: from unknown (HELO [10.255.13.6]) ([10.255.13.6])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 16:28:14 -0800
Message-ID: <4CFD7F9D.2090606@intel.com>
Date: Mon, 06 Dec 2010 16:28:13 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <cover.1291291436.git.ke.yu@intel.com>
	<9DA5872FEF993D41B7173F58FCF6BE94023D9923@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE94023D9923@orsmsx504.amr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [RFC PATCH 0/2] Add SRC_URI checksum support
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
X-List-Received-Date: Tue, 07 Dec 2010 00:31:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2010 08:31 AM, Kamble, Nitin A wrote:
> Ke,
> This automatic SRC_URI checksum is what I was looking for. Thanks for doing it.
>
Nitin,

I will be running this over the complete metadata set this week, please 
do not use this on your recipes since it adds the checksums to the end 
and not inline.

Thanks

    Sau!

> Nitin
>
>
>> -----Original Message-----
>> From: poky-bounces@yoctoproject.org [mailto:poky-
>> bounces@yoctoproject.org] On Behalf Of Yu Ke
>> Sent: Thursday, December 02, 2010 4:04 AM
>> To: poky@yoctoproject.org
>> Subject: [poky] [RFC PATCH 0/2] Add SRC_URI checksum support
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: kyu3/srcuri
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-
>> contrib/log/?h=kyu3/srcuri
>>
>> Thanks,
>>      Yu Ke<ke.yu@intel.com>
>> ---
>>
>>
>> Yu Ke (2):
>>    [RFC] Add SRC_URI checksum
>>    [RFC] Automatically patch recipes to add the SRC_URI checksum
>>
>>   meta/classes/base.bbclass  |    4 +-
>>   meta/classes/utils.bbclass |  101
>> ++++++++++++++++++++++++++++++++++++++-----
>>   2 files changed, 92 insertions(+), 13 deletions(-)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


