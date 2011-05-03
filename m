Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92BE74C80A9C
	for <poky@yoctoproject.org>; Tue,  3 May 2011 18:23:04 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 May 2011 16:23:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,312,1301900400"; d="scan'208";a="741883344"
Received: from unknown (HELO [10.255.12.238]) ([10.255.12.238])
	by orsmga001.jf.intel.com with ESMTP; 03 May 2011 16:23:03 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 03 May 2011 16:22:58 -0700
In-Reply-To: <BANLkTi=N_hm-qCo0Gi+zoAH4mH+dszpRdA@mail.gmail.com>
References: <BANLkTimaSk6vz1AeoRoT63T24XX=w1TuaA@mail.gmail.com>
	<1304419011.21461.98.camel@rex>
	<BANLkTi=N_hm-qCo0Gi+zoAH4mH+dszpRdA@mail.gmail.com>
X-Mailer: Evolution 3.0.0 (3.0.0-1.fc15) 
Message-ID: <1304464983.2033.0.camel@scimitar>
Mime-Version: 1.0
Subject: Re: post-image-creation postinsts
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
X-List-Received-Date: Tue, 03 May 2011 23:23:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-05-03 at 19:01 -0400, Colin Walters wrote:
> Hi Richard,
> 
> On Tue, May 3, 2011 at 6:36 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >
> >> It seems to me we could add some mechanism for mounting the image
> >> filesystem and running a script in there (guestfs?), or maybe an
> >> automated QEMU boot, run the postinsts, and sync/shutdown?
> >>
> > force the script to run on the target device. If there is a way to run
> > this at image generation time (cross safe), tell us what it is and we
> > can make it happen at image generation time!
> 
> See the bit I quoted from my original mail.  I think the most general
> solution is simply "run qemu, then shutdown", 

Wouldn't this only work for images where there's kernel support for the
QEMU emulated devices? 

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


