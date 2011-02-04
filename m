Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id E50B14C800A8
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 06:24:21 -0600 (CST)
Received: from [192.168.0.7] (5adc74a9.bb.sky.com [90.220.116.169])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id A9E1012EC1CD
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 07:05:45 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <AANLkTikDN5ZBRR0Hv93nZK-CMBO0xdrepbtppvGiVmwT@mail.gmail.com>
References: <AANLkTikBFCb2kNE2ePDhNZ6+Up3HzuiqLgi9UTiyP0sP@mail.gmail.com>
	<4D4AD7D9.60407@linux.intel.com>
	<AANLkTikDN5ZBRR0Hv93nZK-CMBO0xdrepbtppvGiVmwT@mail.gmail.com>
Date: Fri, 04 Feb 2011 12:24:08 +0000
Message-ID: <1296822248.2570.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: Adding Packages
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
X-List-Received-Date: Fri, 04 Feb 2011 12:24:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-04 at 15:55 +0530, Akshat Saha wrote:
> Hi Darren,
> 
> 
> Thanks a lot for your help. 
> Till now, I was working with poky-green(3.3.1) but I am shifting to
> laverne(4.0) now. 
> Will let you know if it works with it also.
> 
> 
> Can you also help me how to add patches. 
> I have put he .patch file in files folder of the psplash package
> 
> 
> and in SRC_URI  Added    file://psplash-poky-img.patch:patch=1 \

That should be a ; not a : Also, the patch variable is no longer
requires

file://psplash-poky-img.patch \ 

in the SRC_URI should be enough.

Regards,
Joshua

-- 
Joshua Lock
        Intel Open Source Technology Centre


