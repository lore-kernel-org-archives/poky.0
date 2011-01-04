Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E05424C810DD
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 19:19:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 17:19:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,269,1291622400"; d="scan'208";a="693238489"
Received: from unknown (HELO [10.255.14.6]) ([10.255.14.6])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 17:19:01 -0800
Message-ID: <4D227584.8090406@intel.com>
Date: Mon, 03 Jan 2011 17:19:00 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jiajun Xu <jiajun.xu@intel.com>
References: <cover.1293783098.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1293783098.git.jiajun.xu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] qemuimagetest: Add several cases for sanity test
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
X-List-Received-Date: Tue, 04 Jan 2011 01:19:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/31/2010 12:16 AM, Jiajun Xu wrote:
> There are 5 cases added for sanity test. These cases covers
> basic function check for connman, compiler, zypper and rpm in
> target.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: jxu49/master
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master
>
> Thanks,
>      Jiajun Xu<jiajun.xu@intel.com>
> ---
>
>
> Jiajun Xu (4):
>    qemuimagetest: Add basic function check for zypper command
>    qemuimagetest: Add basic function check for rpm command
>    qemuimagetest: Add basic function check for gcc/g++/make command in
>      target
>    qemuimagetest: Add basic function check for connman
>
>   scripts/qemuimage-tests/sanity/compiler            |   52 ++++++++
>   scripts/qemuimage-tests/sanity/connman             |   52 ++++++++
>   scripts/qemuimage-tests/sanity/rpm_query           |   52 ++++++++
>   scripts/qemuimage-tests/sanity/zypper_help         |   52 ++++++++
>   scripts/qemuimage-tests/sanity/zypper_search       |   52 ++++++++
>   .../scenario/qemuarm/poky-image-lsb                |    4 +
>   .../scenario/qemuarm/poky-image-sato               |    4 +
>   .../scenario/qemuarm/poky-image-sdk                |    5 +
>   .../scenario/qemumips/poky-image-lsb               |    4 +
>   .../scenario/qemumips/poky-image-sato              |    4 +
>   .../scenario/qemumips/poky-image-sdk               |    5 +
>   .../scenario/qemuppc/poky-image-lsb                |    4 +
>   .../scenario/qemuppc/poky-image-sato               |    4 +
>   .../scenario/qemuppc/poky-image-sdk                |    5 +
>   .../scenario/qemux86-64/poky-image-lsb             |    4 +
>   .../scenario/qemux86-64/poky-image-sato            |    4 +
>   .../scenario/qemux86-64/poky-image-sdk             |    5 +
>   .../scenario/qemux86/poky-image-lsb                |    4 +
>   .../scenario/qemux86/poky-image-sato               |    4 +
>   .../scenario/qemux86/poky-image-sdk                |    5 +
>   scripts/qemuimage-tests/tools/compiler_test.sh     |  137 ++++++++++++++++++++
>   scripts/qemuimage-tests/tools/connman_test.sh      |   55 ++++++++
>   scripts/qemuimage-tests/tools/rpm_test.sh          |   45 +++++++
>   scripts/qemuimage-tests/tools/zypper_test.sh       |   45 +++++++
>   24 files changed, 607 insertions(+), 0 deletions(-)
>   create mode 100755 scripts/qemuimage-tests/sanity/compiler
>   create mode 100755 scripts/qemuimage-tests/sanity/connman
>   create mode 100755 scripts/qemuimage-tests/sanity/rpm_query
>   create mode 100755 scripts/qemuimage-tests/sanity/zypper_help
>   create mode 100755 scripts/qemuimage-tests/sanity/zypper_search
>   create mode 100644 scripts/qemuimage-tests/tools/compiler_test.sh
>   create mode 100644 scripts/qemuimage-tests/tools/connman_test.sh
>   create mode 100644 scripts/qemuimage-tests/tools/rpm_test.sh
>   create mode 100644 scripts/qemuimage-tests/tools/zypper_test.sh
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

  Thanks
     Sau!


