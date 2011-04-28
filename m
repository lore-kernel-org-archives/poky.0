Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 126D24C80337
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 06:04:00 -0500 (CDT)
Received: by wwd20 with SMTP id 20so2747595wwd.11
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 04:04:00 -0700 (PDT)
Received: by 10.216.241.197 with SMTP id g47mr7015047wer.24.1303988639971;
	Thu, 28 Apr 2011 04:03:59 -0700 (PDT)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id b20sm585152wbb.33.2011.04.28.04.03.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 28 Apr 2011 04:03:59 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <201104281113.45335.paul.eggleton@linux.intel.com>
Date: Thu, 28 Apr 2011 13:03:56 +0200
Message-Id: <672424B8-ECBF-4101-95D6-DA1B145C8E5E@dominion.thruhere.net>
References: <cover.1303922644.git.paul.eggleton@linux.intel.com>
	<318c3139745e74177a23f323881dbd76ddc42006.1303922644.git.paul.eggleton@linux.intel.com>
	<4DB858B9.3030901@linux.intel.com>
	<201104281113.45335.paul.eggleton@linux.intel.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
X-Mailer: Apple Mail (2.1084)
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] initscripts: remove -i from halt/reboot arguments and allow override
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
X-List-Received-Date: Thu, 28 Apr 2011 11:04:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 28 apr 2011, om 12:13 heeft Paul Eggleton het volgende geschreven:

> On Wednesday 27 April 2011 18:56:09 Darren Hart wrote:
>> Is the SED_* tag a common search/replace mechanism in OE recipes? It's
>> fine, I'm just wondering if there is an accepted best practice for this
>> sort of thing. I know we do some sed replacements of /usr/bin and /etc.
> 
> Is there a more appropriate mechanism for substituting values of variables 
> into files (genuinely asking)?

It's the one I use :)

regards,

Koen

