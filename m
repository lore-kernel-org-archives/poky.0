Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 14B514C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 16:50:12 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 14:50:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,307,1288594800"; d="scan'208";a="684500224"
Received: from unknown (HELO [10.255.13.6]) ([10.255.13.6])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 14:50:11 -0800
Message-ID: <4CFD68A2.20408@intel.com>
Date: Mon, 06 Dec 2010 14:50:10 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <AANLkTi==kWiyOrmeUeUVNeC8FT0B8XxruHA0X4qMaPs_@mail.gmail.com>
In-Reply-To: <AANLkTi==kWiyOrmeUeUVNeC8FT0B8XxruHA0X4qMaPs_@mail.gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: libcdaudio license issue
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
X-List-Received-Date: Mon, 06 Dec 2010 22:50:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2010 11:48 AM, Frans Meulenbroeks wrote:
> I was checking libcdaudio for LICENSE info.
> recipe says GPL
> COPYING file is the GPLv2 one
> README file says:
>
> libcdaudio is distributed under the GNU Library General Public
> License, included in this package under the top level source directory
> in the file COPYING
>
> C files also mention LGPL. but say v2 or later
>
> What to do with this in the LICENSE field? LGPLv2+ ?
>
This seems reasonable, you should also include the header chunk in the 
LIC_FILES_CHKSUM, you can specify start and end lines for the checksum.


Sau!

> Frans
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


