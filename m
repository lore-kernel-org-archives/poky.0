Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A60D0E0082D
	for <poky@yoctoproject.org>; Wed,  8 Jan 2014 09:59:14 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Jan 2014 09:59:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,625,1384329600"; d="scan'208";a="462132659"
Received: from unknown (HELO helios.localnet) ([10.252.122.128])
	by fmsmga002.fm.intel.com with ESMTP; 08 Jan 2014 09:59:12 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Date: Wed, 08 Jan 2014 17:59:11 +0000
Message-ID: <1722093.hAzLJV7n3A@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-35-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <220e746572d0453599619d54d19d21aa@BLUPR05MB037.namprd05.prod.outlook.com>
References: <220e746572d0453599619d54d19d21aa@BLUPR05MB037.namprd05.prod.outlook.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Tag for yocto-1.4.3/dylan-9.0.3?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Jan 2014 17:59:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Bryan,

On Wednesday 08 January 2014 13:36:24 Bryan Evenson wrote:
> I was just browsing the poky git repository, and I see that the latest
> commits to the dylan branch were made a few weeks ago and were in relation
> to preparing for yocto-1.4.3.  However, there are no tags on this branch
> for yocto-1.4.3 or dylan-9.0.3.  Is there some feature/milestone holding up
> the release, or did the tag just get missed?

The release hasn't happened yet, hence there are no tags. I've now sent the 
remaining patches that I'm aware of and they have been applied on the dylan 
branch, but QA resource scheduling probably means the 1.4.3 release won't 
happen until the end of the month as far as I'm aware (due to the 1.6 M2 
milestone release as well as other testing activities that QA is busy with).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

