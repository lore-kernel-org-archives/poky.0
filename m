Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24481E00303
	for <poky@yoctoproject.org>; Fri, 16 Dec 2011 10:02:29 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2011 10:02:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="103042906"
Received: from unknown (HELO helios.localnet) ([10.252.122.31])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2011 10:02:23 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 16 Dec 2011 18:00:22 +0000
Message-ID: <2515584.y5UYPoyKeW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.4 (Linux/3.0.0-14-generic-pae; KDE/4.7.4; i686; ; )
In-Reply-To: <4EEB8267.6040500@linux.intel.com>
References: <4EEB1EF8.7060204@gherzan.ro> <4EEB8267.6040500@linux.intel.com>
MIME-Version: 1.0
Subject: Re: License | "or" problem?
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
X-List-Received-Date: Fri, 16 Dec 2011 18:02:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 16 December 2011 09:39:51 Saul Wold wrote:
> On 12/16/2011 02:35 AM, Andrei Gherzan wrote:
> > As i know qt4 has double license. This means that everybody can choose
> > from GPLv3 and LGPLv2.1. This fact is reflected in bb file as:
> > 
> > LICENSE = "LGPLv2.1 | GPLv3"
>
> Also, looking at the current LICENSE in qt, it will need to be further
> defined on a package level as to how each package is licensed, so that
> when the manifest and audit occurs only the LGPLv2.1 bits are included.

Where do you get the idea that there is a mix of licenses for Qt4? As far as I 
am aware, the user is supposed to select either LGPLv2.1 or GPLv3, which is 
exactly what the current value of LICENSE above means.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

