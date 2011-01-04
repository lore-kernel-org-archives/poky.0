Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6213C4C811AA;
	Mon,  3 Jan 2011 19:26:31 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Jan 2011 17:26:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,269,1291622400"; d="scan'208";a="643025934"
Received: from unknown (HELO [10.255.14.6]) ([10.255.14.6])
	by fmsmga002.fm.intel.com with ESMTP; 03 Jan 2011 17:26:30 -0800
Message-ID: <4D227746.5020805@intel.com>
Date: Mon, 03 Jan 2011 17:26:30 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1294034587.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294034587.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-yocto/stable: update to 2.6.34.x -longterm
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
X-List-Received-Date: Tue, 04 Jan 2011 01:26:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/02/2011 10:11 PM, Bruce Ashfield wrote:
> Richard/Saul,
>
> Paul Gortmaker maintains the upstream 2.6.34.x -longerm tree. The
> yocto stable kernel tracks this tree and incorporates those nominated
> changes. We are picking up lots of bug fixes and security updates
> to the -stable tree with this change.
>
> This commit updates the BSP SRCREVs to the latest 2.6.34.x
> merge and picks up 260 -stable commits for each BSP.
>
> Tom: the meta-emenlow layer should be updated with the new SRCREV.
> I updated the master version, and simply tossed any changes to the
> drivers modified by the emenlow. So taking a quick look at the merge
> might be a good idea as well. I did my own build tests here and
> everything looked sane.
>
> Darren: I had to resolve a merge in the -rt branches, and preferred
> the -rt implementation of the files in question. I used your patches
> that are out for review and confirmed that qemux86-64-preempt_rt builds with
> the updated kernel.
>
> I built all the -stable boards, and everything looks sane, so this
> one should be good to go.
>
> Cheers,
>
> Bruce
>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: zedd/stable
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/stable
>
> Thanks,
>      Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>
>
> Bruce Ashfield (1):
>    linux-yocto/stable: update SRCREVs for 2.6.34.x -stable update
>
>   .../conf/distro/include/poky-default-revisions.inc |   20 ++++++++++----------
>   1 files changed, 10 insertions(+), 10 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
    Sau!


