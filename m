Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9E104C801BF
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 09:49:08 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jul 2011 07:49:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,261,1309762800"; d="scan'208";a="34224896"
Received: from unknown (HELO helios.localnet) ([10.255.17.240])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2011 07:49:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jul 2011 15:49:07 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>
	<2273c01d6547d6d1eb5b8a60dd061c5d3722856d.1311603837.git.paul.eggleton@linux.intel.com>
	<4ADD3708-C485-47E1-9BD6-B4839E5E8151@dominion.thruhere.net>
In-Reply-To: <4ADD3708-C485-47E1-9BD6-B4839E5E8151@dominion.thruhere.net>
MIME-Version: 1.0
Message-Id: <201107251549.07198.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 6/6] meta-yocto/conf/local.conf.sample: add rm_work example
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
X-List-Received-Date: Mon, 25 Jul 2011 14:49:09 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Monday 25 July 2011 15:44:32 Koen Kooi wrote:
> Op 25 jul. 2011, om 16:28 heeft Paul Eggleton het volgende geschreven:
> > +# Uncomment this to delete work files as the build progresses rather
> > than +# keeping them around, which saves a lot of disk space. However,
> > if any +# problems arise it can be useful to have the work files to
> > examine, which +# is why it is off by default.
> > +#INHERIT += "rm_work"
> 
> That implies that you expect problems to happen by default :)

It does say "if" ;)  I'm happy to take suggestions on an alternative 
comment...

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

