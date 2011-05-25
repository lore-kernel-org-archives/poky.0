Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id A5F534C80228
	for <poky@yoctoproject.org>; Wed, 25 May 2011 13:18:21 -0500 (CDT)
Received: by wwd20 with SMTP id 20so8243655wwd.11
	for <poky@yoctoproject.org>; Wed, 25 May 2011 11:18:20 -0700 (PDT)
Received: by 10.227.2.142 with SMTP id 14mr4297754wbj.43.1306347500524;
	Wed, 25 May 2011 11:18:20 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id fq6sm538883wbb.44.2011.05.25.11.18.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 25 May 2011 11:18:19 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1a47266fdcdf11866c97b19e3c3983fd1eb3a724.1306344536.git.dvhart@linux.intel.com>
Date: Wed, 25 May 2011 20:18:17 +0200
Message-Id: <6700EF00-A16A-4CB1-81AF-C069EB1A0C74@dominion.thruhere.net>
References: <cover.1306344536.git.dvhart@linux.intel.com>
	<1a47266fdcdf11866c97b19e3c3983fd1eb3a724.1306344536.git.dvhart@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: poky@yoctoproject.org, Jeff Osier-mixon <jeffrey.osier-mixon@intel.com>
Subject: Re: [PATCH 1/1] README.hardware: update installation instructions for beagleboard
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
X-List-Received-Date: Wed, 25 May 2011 18:18:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 25 mei 2011, om 19:33 heeft Darren Hart het volgende geschreven:
> +    # nand unlock

That shouldn't be needed

> +    # nand erase

And that's 'nand erase.chip' nowadays



