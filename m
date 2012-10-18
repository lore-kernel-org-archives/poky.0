Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E5D8E01275
	for <poky@yoctoproject.org>; Thu, 18 Oct 2012 07:43:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Oct 2012 07:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,608,1344236400"; d="scan'208";a="235554926"
Received: from unknown (HELO envy.home) ([10.255.14.139])
	by fmsmga001.fm.intel.com with ESMTP; 18 Oct 2012 07:43:38 -0700
Message-ID: <5080155D.7080908@linux.intel.com>
Date: Thu, 18 Oct 2012 10:42:37 -0400
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121009 Thunderbird/16.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <d4af8f9ad5defd3922ac5d6744092e1d650b07fe.1350570203.git.dvhart@linux.intel.com>
In-Reply-To: <d4af8f9ad5defd3922ac5d6744092e1d650b07fe.1350570203.git.dvhart@linux.intel.com>
X-Enigmail-Version: 1.4.5
Cc: Poky <poky@yoctoproject.org>, evadeflow@gmail.com
Subject: Re: [PATCH] yocto-bsp: Fix git url parsing, allowing for local mirrors
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
X-List-Received-Date: Thu, 18 Oct 2012 14:43:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Forgot to include:

Fixes [YOCTO #3305]

Saul/RP: Can you include the tag or would you prefer I resend?
(sorry, a bit rushed between conference discussions)

--
Darren

On 10/18/2012 10:23 AM, Darren Hart wrote:
> The git URLs used in bitbake recipes are not compatible directly with git.  In
> bitbake-speak, all git URLs start with git:// and the protocol is optionally
> specified in the SRC_URI. Local git mirrors are specified like so:
> 
>     git:///path/to/local/mirror.git;protocol=file
> 
> The URL that git requires would be:
> 
>     file:///path/to/local/mirror.git
> 
> Update the yocto-bsp kernel.py to make the necessary adjustment when parsing
> the SRC_URI to extract the git URL.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Tom Zanussi <tom.zanussi@intel.com>
> CC: evadeflow@gmail.com
> ---
>  scripts/lib/bsp/kernel.py | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
> index d4bdc4c..128fad0 100644
> --- a/scripts/lib/bsp/kernel.py
> +++ b/scripts/lib/bsp/kernel.py
> @@ -631,6 +631,7 @@ def extract_giturl(file):
>      Extract the git url of the kernel repo from the kernel recipe's
>      SRC_URI.
>      """
> +    url = None
>      f = open(file, "r")
>      lines = f.readlines()
>      for line in lines:
> @@ -641,10 +642,15 @@ def extract_giturl(file):
>                  line = line[1:].strip()
>                  if line.startswith("\""):
>                      line = line[1:].strip()
> -                    fields = line.split(";")
> -                    if fields:
> -                        return fields[0]
> -    return None
> +                    prot = "git"
> +                    for s in line.split(";"):
> +                        if s.startswith("git://"):
> +                            url = s
> +                        if s.startswith("protocol="):
> +                            prot = s.split("=")[1]
> +                    if url:
> +                        url = prot + url[3:]
> +    return url
>  
>  
>  def find_giturl(context):
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

