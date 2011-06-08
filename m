Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB6B44C800FB
	for <poky@yoctoproject.org>; Wed,  8 Jun 2011 11:46:42 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2011 09:46:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,339,1304319600"; d="scan'208";a="13585454"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by fmsmga002.fm.intel.com with ESMTP; 08 Jun 2011 09:46:41 -0700
Message-ID: <4DEFA771.3060203@linux.intel.com>
Date: Wed, 08 Jun 2011 09:46:41 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1307377052.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1307377052.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-yocto/meta-yocto: make e1000e structure common [commit: bec3f1e8c]
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
X-List-Received-Date: Wed, 08 Jun 2011 16:46:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2011 09:19 AM, Bruce Ashfield wrote:
> Richard/Saul,
>
> This is the meta-yocto equivalent updates to the oe-core
> change for the same fix. If you know of a better way than
> getting all these pull requests twice .. let me know.
>
> cc: Tom Zanussi<tom.zanussi@intel.com>
>
> The following changes since commit bc69b356b4476d8eb2bbc169498b6b86423251e3:
>    Bruce Ashfield (1):
>          linux-yocto: make e1000e structure common [commit: bec3f1e8c]
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/poky-contrib zedd/e1000-yocto
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/e1000-yocto
>
> Bruce Ashfield (1):
>    linux-yocto/meta-yocto: make e1000e structure common [commit:
>      bec3f1e8c]
>
>   .../recipes-kernel/linux/linux-yocto_git.bbappend  |   10 +++++-----
>   1 files changed, 5 insertions(+), 5 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into poky Master

Thanks
	Sau!


