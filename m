Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2597CE0137F
	for <poky@yoctoproject.org>; Mon, 30 Jan 2012 12:37:11 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0UKb6DC021975
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 30 Jan 2012 12:37:06 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 30 Jan 2012 12:37:06 -0800
Message-ID: <4F26FF65.5090902@windriver.com>
Date: Mon, 30 Jan 2012 15:36:53 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1327954069.git.bruce.ashfield@windriver.com>
	<ca65eb5fc6d8574c68a61d5d1b07c00d2fb3b530.1327954069.git.bruce.ashfield@windriver.com>
	<CAMKF1sonGk5BHA0uW+u=SZ+bDzUU6HrfYxwmjs43phgSHw+-bg@mail.gmail.com>
In-Reply-To: <CAMKF1sonGk5BHA0uW+u=SZ+bDzUU6HrfYxwmjs43phgSHw+-bg@mail.gmail.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 2/2] meta-yocto/poky.conf: set qemu* preferred linux-yocto version to 3.2
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
X-List-Received-Date: Mon, 30 Jan 2012 20:37:11 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-30 03:35 PM, Khem Raj wrote:
> On Mon, Jan 30, 2012 at 12:16 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>>
>> +PREFERRED_VERSION_linux-yocto_qemumips ?= "3.02"
>
> why is mips still using 3.0 ?

It isn't. A typo, which I rebased and repushed about 5 minutes ago :)

Bruce


