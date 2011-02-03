Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A9C194C8007E
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 20:48:22 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Feb 2011 18:48:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,417,1291622400"; d="scan'208";a="383497055"
Received: from unknown (HELO helios.localnet) ([10.255.16.156])
	by azsmga001.ch.intel.com with ESMTP; 02 Feb 2011 18:48:20 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thu, 3 Feb 2011 02:48:17 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-25-generic-pae; KDE/4.6.0; i686; ; )
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
	<6184677be0e44d76b634b611287dca567dfdd3bd.1296267951.git.paul.eggleton@linux.intel.com>
	<1296582299.13501.20230.camel@rex>
In-Reply-To: <1296582299.13501.20230.camel@rex>
MIME-Version: 1.0
Message-Id: <201102030248.17688.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 11/12] qt4: Add meta-toolchain-qte and dependent tasks from OpenEmbedded
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
X-List-Received-Date: Thu, 03 Feb 2011 02:48:23 -0000
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit

On Tuesday 01 February 2011 17:44:59 you wrote:
> On Sat, 2011-01-29 at 02:30 +0000, Paul Eggleton wrote:
> > +    # Repack SDK with new environment-setup
> > +    cd ${SDK_OUTPUT}
> > +    tar --owner=root --group=root -cj
> > --file=${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.bz2 . +}
> 
> This is horrible :)

I agree :)

> I added this:
> 
> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=19e1f4f672806c8a45847ce5c
> 2adac6da663ff69

Superb, much better. Thanks!

- Paul

