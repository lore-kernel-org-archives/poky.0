Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 43FCC4C803E4
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 11:17:02 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jul 2011 09:17:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,276,1309762800"; d="scan'208";a="30762731"
Received: from unknown (HELO [10.255.14.126]) ([10.255.14.126])
	by orsmga002.jf.intel.com with ESMTP; 27 Jul 2011 09:17:01 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Wed, 27 Jul 2011 09:16:56 -0700
In-Reply-To: <9FD9DF15-37D0-43BC-B59D-048D9C5C727C@dominion.thruhere.net>
References: <CAMTw45D1+q6RU4ohtd1pQecpj6ti3KxyfjZGXb-06Tq_2X8D8Q@mail.gmail.com>
	<1311781972.2193.5.camel@scimitar>
	<9FD9DF15-37D0-43BC-B59D-048D9C5C727C@dominion.thruhere.net>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1311783421.2193.6.camel@scimitar>
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Error in Python modules dependency for UFW package
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
X-List-Received-Date: Wed, 27 Jul 2011 16:17:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-27 at 18:04 +0200, Koen Kooi wrote:
> Op 27 jul. 2011, om 17:52 heeft Joshua Lock het volgende geschreven:
> 
> > On Tue, 2011-07-26 at 20:15 +0530, chinmaya hoshing wrote:
> >> Hi,
> >> 
> >> 
> >> I am trying to pull UFW package in poky for sandybrige machine.
> >> I have written a recipe for it and also it is building successfully.
> >> But when I run the binary ufw (after installing the rootfs) I get
> >> error related to python Modules.
> >> (Adding to this I have added python in depends in ufw recipe.) 
> >> Error  getting in python modules are for :
> >> getttext ,locale,codecs,encodings  
> >> The error is follows : 
> >>      ImportError: No module named gettext 
> >> 
> > 
> > You could try adding the required python packages to the runtime
> > dependencies of your UFW recipe:
> > 
> > RDEPENDS += "python-codecs python-blah"
> 
> RDEPENDS_${PN} += bla

Thanks Koen!

*drinks coffee*

Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


