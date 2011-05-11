Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B394C4C805AF
	for <poky@yoctoproject.org>; Wed, 11 May 2011 07:57:34 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 May 2011 05:57:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,353,1301900400"; 
   d="scan'208";a="868854"
Received: from unknown (HELO [10.255.12.106]) ([10.255.12.106])
	by fmsmga001.fm.intel.com with ESMTP; 11 May 2011 05:57:33 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: chinmaya hoshing <cahoshing@gmail.com>
In-Reply-To: <BANLkTim+RSMZEuEc-n+anqME7Cy7+=vEEQ@mail.gmail.com>
References: <BANLkTim+RSMZEuEc-n+anqME7Cy7+=vEEQ@mail.gmail.com>
Date: Wed, 11 May 2011 07:57:19 -0500
Message-ID: <1305118639.30469.91.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Problem with porting poky for Sugarbay platform sandybridge machine
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
X-List-Received-Date: Wed, 11 May 2011 12:57:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 04:40 -0700, chinmaya hoshing wrote:
> Hi,
> 
> 
> I am trying to port Poky to the "sandybridge platform" and  using the
> branch "bernard" for "sugarbay" machine.
> I am running Ubuntu 10.10 on 64 bit machine.
> My sugarbay build is successful so I have installed the image ,here I
> copied the binaries of file and strace externally but I am geting
> error :-      -sh : file : not found   (same for strace).
> 
> 
> Also I have tried the same thing for fishriver machine using bernard
> branch running on 32 bit machine and for atom-pc machine on 32 bit
> host and there everything is working fine means getting the binaries
> of file and strace and the command working fine. 
> 
> 
> Then what may be the problem for sugarbay machine .Is it that the
> configurations of both fishriver and sugarbay will be the issue???
> or Is there any problem of 64 bit shell on which I am building
> sandybridge (sugarbay machine) poky ?????
> 
> 
> Anybody have any idea!!!!!!!
> please help me out to find the issue with this
> 

Looks like you're copying binaries from your host onto the target?, and
getting lucky on the 32 bit systems, but not on the 64-bit targets
because there aren't compatible 32-bit libraries?

There are already recipes for strace and file that you could add to your
image to get those working properly, or you could build an -sdk image
which includes strace and file out of the box...

Tom

> 
> 
> 
> Chinmaya



