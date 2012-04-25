Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B41BE01206
	for <poky@yoctoproject.org>; Wed, 25 Apr 2012 10:08:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3PH8w0F014006
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 25 Apr 2012 10:08:58 -0700 (PDT)
Received: from msp-dhcp10.wrs.com (172.25.34.10) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 25 Apr 2012 10:08:58 -0700
Message-ID: <4F982FA9.8010909@windriver.com>
Date: Wed, 25 Apr 2012 12:08:57 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4F981E9A.5050704@yahoo.fr>
In-Reply-To: <4F981E9A.5050704@yahoo.fr>
Subject: Re: Include already exisiting rpm or .spec
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
X-List-Received-Date: Wed, 25 Apr 2012 17:08:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/25/12 10:56 AM, Patrick wrote:
> Dear all,
>
> We have some software that we develop from a while that we release as
> rpm. To build these rpm we have some complexe .spec files.
>
> Now we use Yocto/Poky to build many new elements and I would like to
> include in my rootfs generated with Yocto/Poky some of our "old"
> software. We don't want to manage the bitbake recipes and the .spec for
> each of our "old" software.
>
> I then would like to know if I could made a simple bitbake recipes that
> "call/include/use" the .specs files ?
> Another solution would be to include directly the rpm to the final
> image. Do you think that it's possible ?

This is something that we have discussed, but nobody has implement it yet.

It is best for long term maintenance to transfer the spec file items into recipe 
format... but if you don't want to do that you can copy your built binary RPM 
packages into the deploy/RPMS/<arch> directory and then add the package names to 
install into IMAGE_INSTALL (from memory).

--Mark

> Thanks in advance for idea or hint
>
> Patrick
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


