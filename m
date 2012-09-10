Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B509E00718
	for <poky@yoctoproject.org>; Sun,  9 Sep 2012 23:51:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Sep 2012 23:51:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,396,1344236400"; d="scan'208";a="220131077"
Received: from unknown (HELO [10.255.13.123]) ([10.255.13.123])
	by fmsmga001.fm.intel.com with ESMTP; 09 Sep 2012 23:51:13 -0700
Message-ID: <504D8DE1.5050103@linux.intel.com>
Date: Sun, 09 Sep 2012 23:51:13 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Andrei Dinu <andrei.adrianx.dinu@intel.com>
References: <cover.1347063149.git.sgw@linux.intel.com>
In-Reply-To: <cover.1347063149.git.sgw@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [CONSOLIDATED REQUEST 0/4] meta-yocto updates
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
X-List-Received-Date: Mon, 10 Sep 2012 06:51:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/08/2012 10:02 AM, Saul Wold wrote:
> The following changes since commit 5343cdb20ee56a8b507733c637dcc2466ae13288:
>
>    bitbake: fetch2: replace double slashes in paths in encodeurl() (2012-09-07 14:50:04 +0100)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/poky-contrib sgw/stage
>    http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage
>
> Andrei Dinu (1):
>    Manual updates to upstream_tracking.inc up to 04 Sep 2012
>
There is a problem with this that I did not notice, the date format is 
incorrect, and poppler is missing a "=".

Sau!

> Kang Kai (1):
>    upstream_tracking: update lsb and ltp
>
> Saul Wold (1):
>    poky-tiny: Enable x86-64 to build eglibc correctly
>
> Tom Zanussi (1):
>    yocto-bsp: remove packagegroup-core-tools-profile.bbappend
>
>   .../conf/distro/include/upstream_tracking.inc      | 1504 +++++++++++++-------
>   meta-yocto/conf/distro/poky-tiny.conf              |    1 +
>   .../packagegroup-core-tools-profile.bbappend       |    2 -
>   3 files changed, 966 insertions(+), 541 deletions(-)
>   delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
>

