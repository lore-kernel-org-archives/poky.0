Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 690AB4C8024E
	for <poky@yoctoproject.org>; Sun,  8 May 2011 01:15:00 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so2851453pzk.35
	for <poky@yoctoproject.org>; Sat, 07 May 2011 23:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=IsEBpWrg5JRqnEw+XMUGSpvhjP3ktdNWsrl1NlnMEa0=;
	b=i4Xjq3e190wSDlw1QDE2CeY5K20ZpwPM9bw8ayBjj/S/Q8GBIKHzNRLJMGNn6EcThW
	VHRfh13Vz0IsYh3SzCiSKcBVLPRtysUN6lfpOX5YAvPgB0lTMmzZXFaosD6i5tBPlBFH
	KSgyvXufccMydxBkqqVk8Ni1O39vw40aRj6HI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=dHRCEQ++XcOSXQI2+Dlkn9sgB9w3bvDf5QgmIIahpqv+rgtGiZ6Hg+pjZkWgnO6M0T
	4vCmKrKnB96ptj3bp3Itzfw5Ub2wkcJFuXsJrcKibvxi9f/+Ljy8sjL59FPlVwcaLBVl
	/zQxrXxsa2HSAmGSVxNmd+8mLI5Qo8xZDdALI=
Received: by 10.142.188.2 with SMTP id l2mr3087945wff.261.1304835299971;
	Sat, 07 May 2011 23:14:59 -0700 (PDT)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id x11sm6412980wfd.13.2011.05.07.23.14.57
	(version=SSLv3 cipher=OTHER); Sat, 07 May 2011 23:14:58 -0700 (PDT)
Message-ID: <4DC634D6.2060504@gmail.com>
Date: Sat, 07 May 2011 23:14:46 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1304621382.git.aalonso@secretlab.ca>
	<04458e66f8ac3c7c3a476c23c178161dc45215e5.1304621382.git.aalonso@secretlab.ca>
In-Reply-To: <04458e66f8ac3c7c3a476c23c178161dc45215e5.1304621382.git.aalonso@secretlab.ca>
Subject: Re: [PATCH 1/7] insane: add micrblaze target info
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
X-List-Received-Date: Sun, 08 May 2011 06:15:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 5/5/2011 12:10 PM, Adrian Alonso wrote:
> * package_qa_get_machine_dict
> * Add microblaze dic entry for QA
> * Prebuilt toolchain triplet microblaze-unknown-linux-gnu-
> * TARGET_OS is linux-gnu for this toolchain
>
> Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
> ---
>   meta/classes/insane.bbclass |    4 +++-
>   1 files changed, 3 insertions(+), 1 deletions(-)
>
> diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
> index 742be5e..e9d4bfa 100644
> --- a/meta/classes/insane.bbclass
> +++ b/meta/classes/insane.bbclass
> @@ -85,7 +85,9 @@ def package_qa_get_machine_dict():
>               "linux-uclibcspe" : {
>                           "powerpc":    (20,     0,    0,          False,         32),
>                         },
> -
> +            "linux-gnu" :       {
> +                        "microblaze": (47787,  0,    0,          False,         32),
> +                      },


we generally use *-*-linux except for arm and ppc (with spe ) can 
microblaze just use the same triplet ?
>          }
>
>


