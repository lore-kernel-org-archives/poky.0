Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A83374C80B6B
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 12:50:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2010 10:50:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,256,1288594800"; d="scan'208";a="577639351"
Received: from unknown (HELO [10.255.13.192]) ([10.255.13.192])
	by orsmga002.jf.intel.com with ESMTP; 25 Nov 2010 10:50:27 -0800
Message-ID: <4CEEAFF2.2060109@intel.com>
Date: Thu, 25 Nov 2010 10:50:26 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mei Lei <lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
	<95222fd970206dcb220b03fa06499ab5027d0db9.1290681886.git.lei.mei@intel.com>
In-Reply-To: <95222fd970206dcb220b03fa06499ab5027d0db9.1290681886.git.lei.mei@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 06/20] python-imaging:Add license checksum to bb file
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
X-List-Received-Date: Thu, 25 Nov 2010 18:50:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/2010 09:05 PM, Mei Lei wrote:
> Add README file checksum to bb file
>
> Signed-off-by: Mei Lei<lei.mei@intel.com>
> ---
>   .../python/python-imaging_1.1.7.bb                 |    1 +
>   1 files changed, 1 insertions(+), 0 deletions(-)
>
> diff --git a/meta/recipes-devtools/python/python-imaging_1.1.7.bb b/meta/recipes-devtools/python/python-imaging_1.1.7.bb
> index 9812043..5319758 100644
> --- a/meta/recipes-devtools/python/python-imaging_1.1.7.bb
> +++ b/meta/recipes-devtools/python/python-imaging_1.1.7.bb
> @@ -2,6 +2,7 @@ DESCRIPTION = "Python Imaging Library"
>   SECTION = "devel/python"
>   PRIORITY = "optional"
>   LICENSE = "GPL"
Mei,

Is this really GPL?  Please update this to correctly.

Sau!

> +LIC_FILES_CHKSUM = "file://README;beginline=92;endline=120;md5=c4371af4579f1e489cf881c1443dd4ec"
>   DEPENDS = "freetype jpeg tiff"
>   RDEPENDS = "python-lang python-stringold"
>   SRCNAME = "Imaging"


