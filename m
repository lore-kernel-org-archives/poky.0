Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2203E0044A
	for <poky@yoctoproject.org>; Tue,  6 Mar 2012 14:38:18 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Mar 2012 14:38:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="125854221"
Received: from unknown (HELO helios.localnet) ([10.252.123.109])
	by fmsmga001.fm.intel.com with ESMTP; 06 Mar 2012 14:38:16 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 06 Mar 2012 22:38:14 +0000
Message-ID: <2158969.NgDfK0RIFP@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <CAMKF1spwydy3WM7pQtD+XPfiSLWoAdNEQE2jupqKYZ=HbpiOog@mail.gmail.com>
References: <4F5643EB.70909@mlbassoc.com>
	<CANdftmOpsM6=3YMwdM+bwBD4088H0px1a7qb6E7tQ+PDXPcczw@mail.gmail.com>
	<CAMKF1spwydy3WM7pQtD+XPfiSLWoAdNEQE2jupqKYZ=HbpiOog@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: How can a package I didn't ask for get included in my image?
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
X-List-Received-Date: Tue, 06 Mar 2012 22:38:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 06 March 2012 13:50:53 Khem Raj wrote:
> On Tue, Mar 6, 2012 at 12:15 PM, Foinel <flocirel@gmail.com> wrote:
> > How do you enable buildhistory?
> 
> add
> INHERIT += "buildhistory"
> to your local.conf

Indeed. FYI there is a small amount of documentation on buildhistory here:

https://wiki.yoctoproject.org/wiki/Buildhistory

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

