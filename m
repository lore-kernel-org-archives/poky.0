Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 325AB4C810AF
	for <poky@pokylinux.org>; Thu,  6 Jan 2011 22:50:56 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Jan 2011 20:50:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,287,1291622400"; d="scan'208";a="371302959"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 06 Jan 2011 20:50:53 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 7 Jan 2011 12:50:02 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 7 Jan 2011 12:50:02 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Fri, 7 Jan 2011
	12:50:01 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky
	<poky@pokylinux.org>
Date: Fri, 7 Jan 2011 12:49:58 +0800
Thread-Topic: [poky] RFC/RFT Checksums as part of stamp files
Thread-Index: Acut9RfbPhMNVOBmQ5CO/HeduOJjRQAL04CQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D786EE679@shsmsx502.ccr.corp.intel.com>
References: <1294354570.17519.25325.camel@rex>
In-Reply-To: <1294354570.17519.25325.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: RFC/RFT Checksums as part of stamp files
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
X-List-Received-Date: Fri, 07 Jan 2011 04:50:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Richard Purdie
>Sent: Friday, January 07, 2011 6:56 AM
>
>We've been working on checksums and sstate for a while, one of the
>pieces we've not put in place so far is using the checksums in the stamp
>files.
>
>What this would mean in English is the end of PR bumps since when you
>change the recipe, the checksums of the appropriate tasks change and
>everything automatically rebuilds that changed.
>
>It also means if you change something in the core packaging, everything
>should repackage and so on.
>
>The final key to enabling this is this commit:
>
>http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=3Drpurdie/bitbake=
-wip&id=3Db82259
>b901cae11b0e5715a92a580c9432af52cc
>
>This hasn't been merged to master yet but we should discuss when this
>change could/should be merged and under what criteria.
>
>I've only just started testing full builds with the change myself so
>keep that in mind. I'd appreciate testing but the change is still very
>new and likely has bugs to iron out.

I can help test it out too.

>
>I'm also aware that this idea isn't going to be universally liked,
>particularly I can guess that Koen is going to have concerns about this
>and Angstrom since the lack of PR bumps means package feeds could start
>to suffer.

worthy of a config option? We may need see from real use whether this will
trigger many unnecessary rebuilds and how much impact to people's daily
work. Basically the incremental builds will be much more heavier than befor=
e,
though this in concept is more correct...

>
>My proposal for dealing with this will be to start having the packaging
>backend take ownership of PE and PR fields. These should be auto
>incremented when the build changes. That in itself is easy enough if you
>have one build area, the tricky bit is where you have multiple build
>sources feeding into a common packages repo like Angstrom.
>
>For this we're going to need some kind of network service that takes a
>version and provides the PE/PR values back, incrementing them each time
>it sees a new version/checksum.
>
>This would solve one of Koen's major complaints about PR bumps in
>general once and for all but there is some effort needed to implement
>something that could provide this service.
>
>Also, on the plus side, we could also now make image generation a
>"stamp" task with a stamp that will only change when the image inputs
>change. That would change a users expectations in some regard so again
>needs discussion.
>


Thanks
Kevin

