Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04CD74C80A54
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 06:40:33 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id C96CC166035F; Wed, 20 Apr 2011 05:40:31 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 41BC11660352;
	Wed, 20 Apr 2011 05:40:30 -0600 (MDT)
Message-ID: <4DAEC62E.2060109@mlbassoc.com>
Date: Wed, 20 Apr 2011 05:40:30 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1303296533.git.paul.eggleton@linux.intel.com>	<3f93d8eda4dc873d1c732ccc297782779f7116f6.1303296533.git.paul.eggleton@linux.intel.com>
	<55494E8C-B846-41B8-B7D1-91779015006C@dominion.thruhere.net>
In-Reply-To: <55494E8C-B846-41B8-B7D1-91779015006C@dominion.thruhere.net>
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] netbase: automatically bring up usb0 on	BeagleBoard xM
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
X-List-Received-Date: Wed, 20 Apr 2011 11:40:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/20/2011 05:31 AM, Koen Kooi wrote:
>
> Op 20 apr 2011, om 12:52 heeft Paul Eggleton het volgende geschreven:
>
>> From: Paul Eggleton<paul.eggleton@linux.intel.com>
>>
>> Avoids manual configuration of the BeagleBoard xM's ethernet port
>> (which shows up as usb0).
>>
>> Fixes [YOCTO #930]
>>
>> Signed-off-by: Paul Eggleton<paul.eggleton@linux.intel.com>
>> ---
>> .../netbase/netbase-4.45/beagleboard/interfaces    |   27 ++++++++++++++++++++
>> .../recipes-core/netbase/netbase_4.45.bbappend     |    3 ++
>> 2 files changed, 30 insertions(+), 0 deletions(-)
>> create mode 100644 meta-yocto/recipes-core/netbase/netbase-4.45/beagleboard/interfaces
>> create mode 100644 meta-yocto/recipes-core/netbase/netbase_4.45.bbappend
>
> You mean meta-texasinstruments, right? Or do you yocto people really want to take over beagleboard?

These are in the Poky tree, not the oe-core+

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

