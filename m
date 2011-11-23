Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43C62E00723
	for <poky@yoctoproject.org>; Wed, 23 Nov 2011 01:30:28 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 23 Nov 2011 01:30:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,558,1315206000"; d="scan'208";a="40429869"
Received: from unknown (HELO helios.localnet) ([10.252.121.173])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Nov 2011 01:30:26 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 23 Nov 2011 09:30:25 +0000
Message-ID: <1384449.sAlYLhjn63@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-13-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <CAEx4ggfUfvgnoGvFZkkqARk5VGs4HiVGLJSkgxWbaqVyqEgCeg@mail.gmail.com>
References: <CAEx4ggfUfvgnoGvFZkkqARk5VGs4HiVGLJSkgxWbaqVyqEgCeg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: "ONLINE" package-management
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
X-List-Received-Date: Wed, 23 Nov 2011 09:30:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 23 November 2011 10:22:12 David MOUSSAUD wrote:
> I'm migrating my projects from old OE to poky.
> I used to set the variable ONLINE_PACKAGE_MANAGEMENT = "full" in my image
> file.
> The impact was that some scripts were executed at the first start of my
> rootfs (create user for openssh, dbus, ....)
> 
> I could not find the equivalent for poky/yocto.
> 
> I've set the IMAGE_FEATURES += "package-management" in the file
> core-image-minimal.bb but it does not have any  impact on the rootfs
> generated.

That is the correct equivalent, however it will not work with core-image-
minimal because it sets its own IMAGE_INSTALL rather than using the one from 
core-image that implements the IMAGE_FEATURES logic. You may wish to create 
your own image based upon core-image-base.bb instead since that uses the 
default IMAGE_INSTALL.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

