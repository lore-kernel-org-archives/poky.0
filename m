Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D3BDE0059B
	for <poky@yoctoproject.org>; Mon, 27 Feb 2012 17:49:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q1S1n1Uo003053
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 27 Feb 2012 17:49:01 -0800 (PST)
Received: from [128.224.162.225] (128.224.162.225) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 27 Feb 2012 17:49:01 -0800
Message-ID: <4F4C328A.8020806@windriver.com>
Date: Tue, 28 Feb 2012 09:48:58 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <cover.1329470296.git.kai.kang@windriver.com>
	<05007499a51a6cdeb40dfe66b0d8ea60df08c048.1329470296.git.kai.kang@windriver.com>
	<4F4C1458.9040800@linux.intel.com>
In-Reply-To: <4F4C1458.9040800@linux.intel.com>
X-Originating-IP: [128.224.162.225]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] create-recipe: create a recipe from source URI
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
X-List-Received-Date: Tue, 28 Feb 2012 01:49:02 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2012年02月28日 07:40, Joshua Lock wrote:
> On 17/02/12 01:28, Kang Kai wrote:
>> This feature is from Yocto 1.2 Bug 1656. create-recipe allows you
>> to give an upstream URL then generate a recipe file. It trys to check
>> source URI, license files, configure files, rpm spec file .etc to
>> get package name, version, description, summary, license and license
>> file, build dependecy and so on.
>
> This works pretty well based on a few tests here but as this is a 
> heavily derived work of a GPLv2 script (IANAL) I'm pretty sure we need 
> to respect the author of the original works copyright and license.
I am sorry about that.

> In concrete terms I expect we need to:
> * use the original license header WITH the original Intel 2010 copyright
The original Intel 2010 copyright seems use GPLv3, does this ok?

# Copyright (C) 2010 Intel Corporation
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License.

Regards,
Kai

> * add Wind River's copyright to the new code
> * mention and link to the original work in a comment in the script

>
> With those changes I expect we can merge this and iterate on it as 
> people use it.
>
> Cheers,
> Joshua


