Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E5C874C80FA4
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 00:47:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Dec 2010 22:47:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,243,1291622400"; d="scan'208";a="691571110"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by orsmga001.jf.intel.com with ESMTP; 28 Dec 2010 22:47:55 -0800
Message-ID: <4D1AD99A.4020006@intel.com>
Date: Tue, 28 Dec 2010 22:47:54 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1293522033.git.tom.zanussi@intel.com>
	<c364ccadf9cb18bb017cffc198aa991f733834e8.1293522033.git.tom.zanussi@intel.com>
In-Reply-To: <c364ccadf9cb18bb017cffc198aa991f733834e8.1293522033.git.tom.zanussi@intel.com>
Subject: Re: [PATCH 4/4] bblayers.conf.sample: remove meta-emenlow
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
X-List-Received-Date: Wed, 29 Dec 2010 06:47:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/28/2010 08:45 AM, Tom Zanussi wrote:
> meta-emenlow has been moved to the meta-intel repo, so it shouldn't be
> added as a default layer by bblayers.conf.  Users who want to build
> the meta-emenlow layer can just add it to bblayers.conf as they would
> any other layer e.g.
>
> BBLAYERS = " \
>    /home/trz/yocto/meta \
>    /home/trz/yocto/meta-intel/meta-emenlow \
>    "
>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   meta/conf/bblayers.conf.sample |    1 -
>   1 files changed, 0 insertions(+), 1 deletions(-)
>
> diff --git a/meta/conf/bblayers.conf.sample b/meta/conf/bblayers.conf.sample
> index 3c7b6e6..27e2906 100644
> --- a/meta/conf/bblayers.conf.sample
> +++ b/meta/conf/bblayers.conf.sample
> @@ -5,5 +5,4 @@ LCONF_VERSION = "3"
>   BBFILES ?= ""
>   BBLAYERS = " \
>     ##POKYBASE##/meta \
> -  ##POKYBASE##/meta-emenlow \
>     "
Tom,

When you make a change like this, you need to increment the 
LCONF_VERSION by one to force people to review their bblayers.conf file.

Please update and send a v2 of the patch

Sau!


