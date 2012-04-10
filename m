Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6E4CE0059A
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 08:43:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Apr 2012 08:43:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="127357910"
Received: from unknown (HELO helios.localnet) ([10.252.120.34])
	by orsmga001.jf.intel.com with ESMTP; 10 Apr 2012 08:43:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Patrick <kpa_info@yahoo.fr>
Date: Tue, 10 Apr 2012 16:43:20 +0100
Message-ID: <6449891.F5szdKCE2k@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-17-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <4F845371.9040903@yahoo.fr>
References: <4F845371.9040903@yahoo.fr>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Qt4 minimal subset
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
X-List-Received-Date: Tue, 10 Apr 2012 15:43:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 10 April 2012 17:36:17 Patrick wrote:
> I am working with yocto 1.1.1, poky 6.0.1. Until now I have build an
> embedded systems without display. Now I would like to add support for a
> small screen with Qt.
> 
> I have added to my image the qt4-x11-free recipes. This include so many
> things that I don't need as I am building an embedded system: Demos,
> example, docs, dev tools, ...
> 
> Which recipes could I use to include a working subset of Qt with X11
> that include only base libraries and eventually some additional elements.

When we package Qt, it is split into a number of packages for individual 
components; however if you install the qt4-x11-free *package* in your image, 
this pulls in everything. What you probably want to do is have a look at the 
packages it does produce and only include those that you need in your image 
rather than the qt4-x11-free package.

One way to get a list of the packages produced is to look in tmp/work/*/qt4-
x11-free*/packages-split/.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

