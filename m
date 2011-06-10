Return-Path: <raj.khem@gmail.com>
Received: from mail-px0-f169.google.com (mail-px0-f169.google.com
	[209.85.212.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA1FE4C800A4
	for <poky@yoctoproject.org>; Thu,  9 Jun 2011 20:05:46 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi9 with SMTP id 9so1234936pxi.28
	for <poky@yoctoproject.org>; Thu, 09 Jun 2011 18:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=bQ4yy0IJiBBRAyE4ntFlM+u9V0KuTg3EAItwHvMCOMk=;
	b=Pz3IRmLC7Ij4htFMPvfkUbO8e5931uK6+OVNOxyxjetFCbFPbKjktxywqmczJqzasu
	vsNePPJxikSQCU/bEA6tz/tJ5V4999oXM7SWDkdi/oaPILGa4dyJULUg8zxa6Oo6TsM7
	Ck+fJCMZf/z/Cnw0jX52jxpHZeKZW1uh3NXFQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	b=THuia1izecHa+wKS2yztOiPsRLg8XrKGzZ/mp6N/XG69dQzUuQepXUx6I0E6mkZ4EC
	3ofELCKnOD0bF7IpPBHgn1He5NlmIWRTQZfwAvaU3SQRo0CkB+PoUFbBVmtigZyy6Gya
	El2ppMTp7okCMHcO8vc8pt82XwrJOVVJz8w0g=
Received: by 10.142.231.2 with SMTP id d2mr239275wfh.262.1307667946182;
	Thu, 09 Jun 2011 18:05:46 -0700 (PDT)
Received: from [172.23.8.101] (natint3.juniper.net [66.129.224.36])
	by mx.google.com with ESMTPS id z7sm2278888wff.5.2011.06.09.18.05.44
	(version=SSLv3 cipher=OTHER); Thu, 09 Jun 2011 18:05:45 -0700 (PDT)
Message-ID: <4DF16DE6.5090004@gmail.com>
Date: Thu, 09 Jun 2011 18:05:42 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4DEFB4BA.7050902@mlbassoc.com>	<4DEFBD77.7000400@linux.intel.com>	<4DF016F0.4080106@gmail.com>	<4DF02EDF.5040502@mlbassoc.com>	<4DF06CB0.1040501@gmail.com>	<4DF0AC87.2060901@mlbassoc.com>
	<4DF0AF61.1020108@mlbassoc.com> <4DF14A49.6000104@linux.intel.com>
	<4DF156FC.40406@linux.intel.com>
In-Reply-To: <4DF156FC.40406@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: BeagleBoard using GCC 4.6.0
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
X-List-Received-Date: Fri, 10 Jun 2011 01:05:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/09/2011 04:27 PM, Darren Hart wrote:
> This seems to demonstrate the same pile of extra ldrb and orr
> instructions that you first saw with 4.6.0. Some quick googling suggests
> Khem's idea of misaligned loads seems sound, but for whatever reason,
> the fix didn't work for me.
>
> Khem, any other thoughts on something to try?
>
> Note: CONFIG_USB_EHCI_BIG_ENDIAN_MMIO does not appear to be set in my
>        config.

If you can narrow the down the problem a bit may be I will get some 
direction otherwise I don't know what problem it might be. You config
must be different to Gary's and there could be same or different problem
in other part of code.

Give me more information on the error and ideally like what Gary did
makes it easy

