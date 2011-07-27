Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 624BB4C800A1
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 10:52:53 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Jul 2011 08:52:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,276,1309762800"; d="scan'208";a="32675568"
Received: from unknown (HELO [10.255.14.126]) ([10.255.14.126])
	by orsmga001.jf.intel.com with ESMTP; 27 Jul 2011 08:52:52 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 27 Jul 2011 08:52:47 -0700
In-Reply-To: <CAMTw45D1+q6RU4ohtd1pQecpj6ti3KxyfjZGXb-06Tq_2X8D8Q@mail.gmail.com>
References: <CAMTw45D1+q6RU4ohtd1pQecpj6ti3KxyfjZGXb-06Tq_2X8D8Q@mail.gmail.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1311781972.2193.5.camel@scimitar>
Mime-Version: 1.0
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
X-List-Received-Date: Wed, 27 Jul 2011 15:52:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-26 at 20:15 +0530, chinmaya hoshing wrote:
> Hi,
> 
> 
> I am trying to pull UFW package in poky for sandybrige machine.
> I have written a recipe for it and also it is building successfully.
> But when I run the binary ufw (after installing the rootfs) I get
> error related to python Modules.
> (Adding to this I have added python in depends in ufw recipe.) 
> Error  getting in python modules are for :
> getttext ,locale,codecs,encodings  
> The error is follows : 
>       ImportError: No module named gettext 
> 

You could try adding the required python packages to the runtime
dependencies of your UFW recipe:

RDEPENDS += "python-codecs python-blah"

Joshua

-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


