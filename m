Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 398024C800A3
	for <poky@yoctoproject.org>; Wed, 20 Jul 2011 19:32:53 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jul 2011 17:32:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,238,1309762800"; d="scan'208";a="30480635"
Received: from unknown (HELO [10.255.13.254]) ([10.255.13.254])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jul 2011 17:32:52 -0700
Message-ID: <4E2773B4.3010803@linux.intel.com>
Date: Wed, 20 Jul 2011 17:32:52 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1310741956.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1310741956.git.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] MPC8315E-RDB fixes v2
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
X-List-Received-Date: Thu, 21 Jul 2011 00:32:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/15/2011 08:12 AM, Paul Eggleton wrote:
> Fix the default ethernet MAC addresses so that networking works at boot time,
> and improve our setup instructions for this machine.
>
> (Since v1, simplify things by removing the configurable MAC address
> variables, as all of these boards should have the same MAC addresses from
> the factory.)
>
> Note, Bruce may choose to merge the kernel patch into the linux-yocto
> repository itself.
>
> The following changes since commit fa4bcfdb73167f8159b88e5a4d711c0d37627a70:
>
>    bb-matrix: correct BB and PM number canonicalization (2011-07-14 22:23:09 +0100)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib paule/mpc8315erdb-fixes-2
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/mpc8315erdb-fixes-2
>
> Paul Eggleton (2):
>    linux-yocto: fix ethernet at boot time on MPC8315E-RDB
>    README.hardware: update MPC8315E-RDB instructions
>
>   README.hardware                                    |   55 +++++++++++++++-----
>   .../linux/linux-yocto/mpc8315e-rdb-dts.patch       |   27 ++++++++++
>   .../linux/linux-yocto_2.6.37.bbappend              |    4 ++
>   3 files changed, 72 insertions(+), 14 deletions(-)
>   create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch
>

This has been merged into poky/master via Bruce's Kernel SRCREV update 
and I merged the README.hardware.

Thanks
	Sau!

