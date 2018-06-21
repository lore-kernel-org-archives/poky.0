Return-Path: <Nicolas.Ferre@microchip.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BC92E00E0D; Thu, 21 Jun 2018 07:30:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.154.123 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Jun 2018 07:30:20 PDT
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
	[68.232.154.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B83EE00D92
	for <poky@yoctoproject.org>; Thu, 21 Jun 2018 07:30:20 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.51,252,1526367600"; d="scan'208";a="15177199"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa4.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	21 Jun 2018 07:29:17 -0700
Received: from [10.159.245.112] (10.10.76.4) by chn-sv-exch03.mchp-main.com
	(10.10.76.49) with Microsoft SMTP Server id 14.3.352.0; Thu, 21 Jun 2018
	07:29:16 -0700
To: Alexander Kanavin <alex.kanavin@gmail.com>, <poky@yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>, Khem Raj
	<raj.khem@gmail.com>
References: <47c97294-f857-295d-485e-d572f7e27b8a@microchip.com>
	<CANNYZj9w8G4G60gWG_JHa2-Y5efOtQhaTTgoVez6w6rumz87xw@mail.gmail.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <4c7c2f8d-c45e-e2b2-e264-a91153996e26@microchip.com>
Date: Thu, 21 Jun 2018 16:29:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj9w8G4G60gWG_JHa2-Y5efOtQhaTTgoVez6w6rumz87xw@mail.gmail.com>
Cc: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Subject: Re: iso-codes: issue with do_fetch on pkg-isocodes.alioth.debian.org
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Jun 2018 14:30:20 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 15/06/2018 at 11:48, Alexander Kanavin wrote:
> 2018-06-15 11:30 GMT+03:00 Nicolas Ferre <nicolas.ferre@microchip.com>:
>> I have an issue with building "sumo" right now: It's a Fecher issue it seems. I actually don't know if it's reported yet (forgive me if it is...).
> 
> Debian has shut down the server where this and some other recipes were
> fetched from. Patches were floating on oe-core list, but nothing made
> it in yet.

Yes, I understand the discussion around v3 patch there but actually what 
about merging this one for now?

http://lists.openembedded.org/pipermail/openembedded-core/2018-June/151618.html
(thanks Oleksandr)

Current situation actually breaks my build if I want to use a "sumo" 
branch or tell people to use it... (hopefully older branch versions are 
already fetched on my side).

Best regards,
-- 
Nicolas Ferre

