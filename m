Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id A5E8F4C810DA
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 03:12:41 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBF9Ds0Q025202; Wed, 15 Dec 2010 09:13:55 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id OKEgOMg-CI-T; Wed, 15 Dec 2010 09:13:54 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBF9DptR025192
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 15 Dec 2010 09:13:53 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <b17a9056f9de3313cb6d212aa7a689883358862a.1292320885.git.ke.yu@intel.com>
References: <cover.1292320885.git.ke.yu@intel.com>
	<b17a9056f9de3313cb6d212aa7a689883358862a.1292320885.git.ke.yu@intel.com>
Date: Wed, 15 Dec 2010 09:12:25 +0000
Message-ID: <1292404345.26558.1586.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] FetchData: add SRC_URI checksum
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
X-List-Received-Date: Wed, 15 Dec 2010 09:12:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Ke,

This patch looks good in general, just a couple of minor things:

On Tue, 2010-12-14 at 15:55 +0800, Yu Ke wrote:
>  
> +def verify_checksum(d, ud):
> +    """
> +    verify the MD5 and SHA256 checksum for downloaded src
> +    return True if matched, False if not
> +    """

This should be more explicit about the missing checksums case.

> +    md5data = bb.utils.md5_file(ud.localpath)
> +    sha256data = bb.utils.sha256_file(ud.localpath)
> +
> +    if (ud.md5_expected == None or ud.sha256_expected == None):
> +        bb.warn("Missing SRC_URI checksum for %s, consider to add\n" \
> +                "SRC_URI[%s] = \"%s\"\nSRC_URI[%s] = \"%s\"" \
> +                % (ud.localpath, ud.md5_name, md5data, ud.sha256_name, sha256data))
> +        # TODO: change to "return False" once all recpies has checksum entry
> +        return True

We can't just redefine "policy" like this in bitbake. I think missing
checksums will always be warnings and we might just make warnings
optionally fatal for bitbake.

What does this do for file:// urls or SCM urls?

Otherwise I'm good with the patch and if you tweak these things I'll
merge it.

Cheers,

Richard



