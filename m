Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3AEA24C80FAD
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 07:50:10 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jan 2011 05:50:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,351,1291622400"; d="scan'208";a="649205171"
Received: from unknown (HELO helios.localnet) ([10.255.16.99])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2011 05:50:08 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Thu, 20 Jan 2011 13:50:07 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-24-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
	<201101201206.14081.paul.eggleton@linux.intel.com>
	<CF53CD96-5C74-4422-B442-2837C6325B9A@dominion.thruhere.net>
In-Reply-To: <CF53CD96-5C74-4422-B442-2837C6325B9A@dominion.thruhere.net>
MIME-Version: 1.0
Message-Id: <201101201350.07758.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] Add meta-toolchain-qte from OE
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
X-List-Received-Date: Thu, 20 Jan 2011 13:50:10 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Thursday 20 January 2011 12:17:39 Koen Kooi wrote:
> > * I notice qt4.inc specifies -embedded in the configure command line and
> > then qt4-x11-free adds -no-embedded. Is it really a good idea to be
> > specifying - embedded and -no-embedded at the same time?
> 
> That's a leftover, and should be safe to eliminate. We do need to specify
> -embedded in qt4-tools to avoid some extra build deps.

Yep I saw that in the tools recipe, makes sense there. I will see about 
adjusting the inc files for Qt4 itself.
 
> I personally do not know of any, but I didn't want to loose features at
> this point. I'm OK dropping it from QT, but other software in OE sadly
> hasn't caught the sqlite3 train yet, so having sqlite2 in a layer
> somewhere is unavoidable.

I was just curious really. I can imagine there are commercial users of it out 
there still, and if we want to bring in an "end-user" app that requires it 
then of course we would need to bring it across also. A cursory search of OE 
brings up at least this list:

 * asterisk
 * balsa
 * gpe
 * prismstumbler
 * txdrug

Of those, I think the only ones of real concern for meta-openembedded are gpe 
and prismstumbler (balsa and asterisk can apparently be built using sqlite3, 
assuming there are no problems converting existing databases.)

Cheers,
Paul

