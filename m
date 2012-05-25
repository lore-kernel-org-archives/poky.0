Return-Path: <kpa_info@yahoo.fr>
Received: from nm6-vm0.bullet.mail.ukl.yahoo.com
	(nm6-vm0.bullet.mail.ukl.yahoo.com [217.146.183.234])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2944CE01402
	for <poky@yoctoproject.org>; Fri, 25 May 2012 05:05:46 -0700 (PDT)
Received: from [217.146.183.217] by nm6.bullet.mail.ukl.yahoo.com with NNFMP;
	25 May 2012 12:03:32 -0000
Received: from [217.146.182.143] by tm10.bullet.mail.ukl.yahoo.com with NNFMP;
	25 May 2012 12:03:32 -0000
Received: from [127.0.0.1] by smtp116.mail.ukl.yahoo.com with NNFMP;
	25 May 2012 12:03:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1337947412; bh=t+fzQm0jjgJQrpRQCvFr0gEI4NTBYxNA3nP5wz5HtO0=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=ktSSd3TFhyJH/81HQ0Vi2+ZPfn9WDBW2uInV+DyIICoDT8O/ckeo5WO1LN9DxZcxxHefQj0qMBfu3mmLV4buzdU2XbDiCwumm2y5heckWfV3ABKcihoIy4J6JZazPFnYqC5CddqGKK//Od+F9liEijLRWcbHl37R6s+N1bFyclI=
X-Yahoo-Newman-Id: 792863.6239.bm@smtp116.mail.ukl.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: CM_a8h8VM1niis._6Kg14UA2dbe.cREE58kipJZtQsLZNO2
	VIhNDDt5BP6h_Hl4GC8l8AE5NJ63zYQxjoO7VbZjWclK9TpQaLFrBdE3bSGR
	ZOshziYUBjF3s0eHunj_.T9d_Kq1u5MJFs7Del2P2Tt3YvrHRc89rsv.2KcI
	iSLEvzmcrM8o_GTrzs43fUs4vn4cKzvPZsTqIy1s4sVZDmdrH2v6e4lHuGjp
	IdvyWceIVFwYhTdixaQtNL_D5FxV2SX4WPCF4aNcYvwTiAtPwQEZ_nGb7TWq
	k2wkZhvQo5uoYQsNCesnVkY8ZeSqjwVt4QjCpPEMaoWDVnXoWK7NLRC0aop5
	rqzOITST_c46SDM8lfik4jForuXdFT0JTczZiqhIiAOXUS0jbiGYwyw5mDwU
	hE8BZVb8Zp7nCA.Oq4PnNkQQ01mbZ6gI0xwSymSxD1S4tEHFMiCN79ciNllo
	8Vd91qQdcHPyhY2.x9NXSeXFWdgN9pg--
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [10.22.2.59] (kpa_info@213.193.97.58 with plain)
	by smtp116.mail.ukl.yahoo.com with SMTP; 25 May 2012 05:03:32 -0700 PDT
Message-ID: <4FBF7512.5090709@yahoo.fr>
Date: Fri, 25 May 2012 14:03:30 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F981E9A.5050704@yahoo.fr> <4F982FA9.8010909@windriver.com>
	<4FBDFDE1.3050505@yahoo.fr>
In-Reply-To: <4FBDFDE1.3050505@yahoo.fr>
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
X-List-Received-Date: Fri, 25 May 2012 12:05:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/24/2012 11:22 AM, Patrick wrote:
> Hello all,
>
> We have tried to add one of our package called
> test_libs-v27_v30-1.armv7a.rpm into tmp/deploy/rpm/armv7a directory.
>
> Then in our image receipes we have added test_libs in IMAGE_INSTALL.
>
> The when we bitbake our image we have the following error message:
>
> Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'test_libs' (but
> /home/yocto/poky-denzil-7.0/meta-test/recipes-extended/images/test-image.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'test_libs' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['test_libs']
> ERROR: Required build target 'test-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['test-image', 'test_libs']
>
> Thanks for any help !
>
> Patrick
>

I reply myself, we have simply added a dummy recipes with a RPROVIDES 
with the name of our package and everything work like a charm.

Thanks to all

Patrick


