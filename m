Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 737F04C800A6
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 20:14:25 -0600 (CST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Prhlh-0000wO-0i from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Mon, 21 Feb 2011 18:14:25 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 21 Feb 2011 18:14:24 -0800
Received: from [172.30.80.151] ([172.30.80.151]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Mon, 21 Feb 2011 19:14:23 -0700
Message-ID: <4D631BF6.7040205@mentor.com>
Date: Mon, 21 Feb 2011 19:14:14 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1298340269.git.edwin.zhai@intel.com>
	<31a41b85a0a81f7a6318aaaee1f19333e6497c9a.1298340269.git.edwin.zhai@intel.com>
In-Reply-To: <31a41b85a0a81f7a6318aaaee1f19333e6497c9a.1298340269.git.edwin.zhai@intel.com>
X-OriginalArrivalTime: 22 Feb 2011 02:14:24.0070 (UTC)
	FILETIME=[393F2E60:01CBD236]
Subject: Re: [PATCH 1/1] qemu: enable audio support
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
X-List-Received-Date: Tue, 22 Feb 2011 02:14:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/21/2011 07:06 PM, Zhai Edwin wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
>
> On qemux86, export ac97&  es1370 emulated device to guest, and enable host oss&alsa
> driver. So end user can get sound from qemux86 guest if the sound card
> driver installed.

Is there a reason to limit this to qemux86/x86_64?  Or are you assuming 
they won't work on other platforms (I have vague memories of putting an 
actual es1370 card in a powerpc platform, a long long time ago...)?  Or 
have you confirmed elsewhere it's not supported outside these platforms? 
  Thanks!

-- 
Tom Rini
Mentor Graphics Corporation

