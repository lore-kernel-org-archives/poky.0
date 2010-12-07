Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F6304C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 20:38:18 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2010 18:38:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,308,1288594800"; d="scan'208";a="865240789"
Received: from unknown (HELO [10.255.13.6]) ([10.255.13.6])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2010 18:38:16 -0800
Message-ID: <4CFD9E17.5070209@intel.com>
Date: Mon, 06 Dec 2010 18:38:15 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Denys Dmytriyenko <denis@denix.org>
References: <AANLkTi==kWiyOrmeUeUVNeC8FT0B8XxruHA0X4qMaPs_@mail.gmail.com>	<4CFD68A2.20408@intel.com>
	<20101206225236.GD29253@denix.org>
In-Reply-To: <20101206225236.GD29253@denix.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] libcdaudio license issue
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
X-List-Received-Date: Tue, 07 Dec 2010 02:38:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2010 02:52 PM, Denys Dmytriyenko wrote:
> On Mon, Dec 06, 2010 at 02:50:10PM -0800, Saul Wold wrote:
>> On 12/06/2010 11:48 AM, Frans Meulenbroeks wrote:
>>> I was checking libcdaudio for LICENSE info.
>>> recipe says GPL
>>> COPYING file is the GPLv2 one
>>> README file says:
>>>
>>> libcdaudio is distributed under the GNU Library General Public
>>> License, included in this package under the top level source directory
>>> in the file COPYING
>>>
>>> C files also mention LGPL. but say v2 or later
>>>
>>> What to do with this in the LICENSE field? LGPLv2+ ?
>>>
>> This seems reasonable, you should also include the header chunk in the
>> LIC_FILES_CHKSUM, you can specify start and end lines for the checksum.
>
> Saul,
>
> We don't have this feature in OpenEmbedded yet... But it would be nice to port
> it from Poky though! :)
>
Denys, sorry I saw this via my poky email and did not notice it was OE 
also, I will what what I cross post next time!

Glad to hear that you like the idea!  We will have all Poky recipes 
checksummed this week!

Sau!


