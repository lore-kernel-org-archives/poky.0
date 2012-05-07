Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD1DFE01363
	for <poky@yoctoproject.org>; Mon,  7 May 2012 09:22:42 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 May 2012 09:22:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="97270094"
Received: from unknown (HELO [10.255.12.143]) ([10.255.12.143])
	by AZSMGA002.ch.intel.com with ESMTP; 07 May 2012 09:22:42 -0700
Message-ID: <4FA7F6D1.2@linux.intel.com>
Date: Mon, 07 May 2012 09:22:41 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1336063152.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1336063152.git.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Ubuntu 12.04 version string fix
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
X-List-Received-Date: Mon, 07 May 2012 16:22:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/03/2012 09:40 AM, Paul Eggleton wrote:
> This fix should also go into denzil-next.
>
>
> The following changes since commit d89f7b9cab1946a3267e3b0402f168f946d480b2:
>
>    documentation/Makefile: Fixed figures publishing bug (2012-05-01 20:50:56 +0100)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/poky-contrib paule/ubuntu-1204-ver
>    http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/ubuntu-1204-ver
>
> Paul Eggleton (1):
>    poky.conf: use correct version string for Ubuntu 12.04
>
>   meta-yocto/conf/distro/poky.conf |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>

Merged into Poky Master

Thanks
	Sau!

