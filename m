Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A4724C8007E
	for <poky@yoctoproject.org>; Fri, 15 Jul 2011 09:02:06 -0500 (CDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1Qhixx-0006pV-Gw from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Fri, 15 Jul 2011 07:02:05 -0700
Received: from SVR-ORW-FEM-03.mgc.mentorg.com ([147.34.97.39]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Fri, 15 Jul 2011 07:02:05 -0700
Received: from [172.30.80.62] (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.1.289.1;
	Fri, 15 Jul 2011 07:02:04 -0700
Message-ID: <4E204856.1030908@mentor.com>
Date: Fri, 15 Jul 2011 07:01:58 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1310656158.git.paul.eggleton@linux.intel.com>	<ba97d44dfd74473c3b790c0dedcaf362a4acf844.1310656158.git.paul.eggleton@linux.intel.com>	<CADkTA4OEs2Bj-fmFRnW=FOENSvTXQPo86E3KbGeocD3QSF745w@mail.gmail.com>
	<201107141717.19891.paul.eggleton@linux.intel.com>
In-Reply-To: <201107141717.19891.paul.eggleton@linux.intel.com>
X-Enigmail-Version: 1.1.1
X-OriginalArrivalTime: 15 Jul 2011 14:02:05.0291 (UTC)
	FILETIME=[C72D93B0:01CC42F7]
Subject: Re: [PATCH 1/2] linux-yocto: allow configuration of MAC	addresses for mpc8315e-rdb
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
X-List-Received-Date: Fri, 15 Jul 2011 14:02:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 07/14/2011 09:17 AM, Paul Eggleton wrote:
> On Thursday 14 July 2011 16:57:42 Bruce Ashfield wrote:
>> The change looks fine, in the sense that it'll work, but it's a lot of
>> hoops to jump through for the mac address. In the past, we've solved this
>> by allowing the mac address to be specified via the bootline, which we
>> could then simply drop into the boot environment and have it work more
>> easily.
>>
>> I didn't think of this when we were talking about this issue, but now that
>> I see the change ... it's been faulted into the right memory banks.
>>
>> I'll dig up these patches, and we can take them for a spin and hopefully we
>> can drop this part of the series.
> 
> If we have a better solution that would make things easier for the user I'd 
> definitely prefer it over this.

I know we mentioned this on IRC, but why not just ask the user to
upgrade U-Boot?  This isn't a bleeding edge board so that shouldn't be
difficult...

-- 
Tom Rini
Mentor Graphics Corporation

