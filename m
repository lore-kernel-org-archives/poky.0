Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C2BC4C8008C
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 14:00:09 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Feb 2011 12:00:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,421,1291622400"; d="scan'208";a="884099432"
Received: from unknown (HELO [10.255.14.193]) ([10.255.14.193])
	by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2011 12:00:09 -0800
Message-ID: <4D4B0948.7040802@intel.com>
Date: Thu, 03 Feb 2011 12:00:08 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <cover.1296761455.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296761455.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Revised summary & description patch
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
X-List-Received-Date: Thu, 03 Feb 2011 20:00:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/03/2011 11:32 AM, Mark Hatle wrote:
> This is an update pull request for the revised summary&  description
> patch.  It stop the failure mentioned by Saul in a previous email.
>
> The second chunk of the patch is new and includes the workaround I sent
> earlier today on the prelink documentation issue.  I'm not sure this is
> really the right patch, but it should unblock people.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: mhatle/wrsync
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/wrsync
>
> Thanks,
>      Mark Hatle<mark.hatle@windriver.com>
> ---
>
>
> Mark Hatle (2):
>    bitbake.conf&  package.bbclass: Use default SUMMARY and DESCRIPTION
>    Docbook workaround
>
>   meta/classes/package.bbclass                 |    5 +++-
>   meta/conf/bitbake.conf                       |   30 +++++++++++++++++++-------
>   meta/recipes-devtools/prelink/prelink_git.bb |    5 ++++
>   3 files changed, 31 insertions(+), 9 deletions(-)
>
Mark,

I merged the SUMMARY & DESCRIPTION changes, but held off on the 
workaround to give Scott G. a chance to fix it properly.

Thanks

Sau!


