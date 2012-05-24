Return-Path: <kpa_info@yahoo.fr>
Received: from nm10.bullet.mail.ukl.yahoo.com (nm10.bullet.mail.ukl.yahoo.com
	[217.146.182.251])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 67763E01304
	for <poky@yoctoproject.org>; Thu, 24 May 2012 02:22:45 -0700 (PDT)
Received: from [217.146.183.181] by nm10.bullet.mail.ukl.yahoo.com with NNFMP;
	24 May 2012 09:22:44 -0000
Received: from [77.238.184.57] by tm12.bullet.mail.ukl.yahoo.com with NNFMP;
	24 May 2012 09:22:44 -0000
Received: from [127.0.0.1] by smtp126.mail.ukl.yahoo.com with NNFMP;
	24 May 2012 09:22:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1337851364; bh=It/fqq69+Y4FsrtHsibNbcDTUDZPp5bJrhQViddR09E=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=LVr9aISRFBmQi+zh8me8Yik0sS7a4BfMi1Nmz7yd1npBqXYWGVhUS496QAY2skZ2D8tB7R6Ohks7+JZFdJ7jxd9hzdD4Hc/DbWssrmdn6oBcNRRZynrguUTJqYAq3YtEOIaO6TphgHER4N6eHNIn7tgg/kE7zMk4TBmaCPmvVmM=
X-Yahoo-Newman-Id: 427834.62632.bm@smtp126.mail.ukl.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: 4.K_XYEVM1lSIhLGRvfT3n6K4cLKsLDc9iN7If2Z2LKLpGj
	c_LHLZ9LMP53hR5sKP0Jc_IivZB.BFzeqmu6gSUfTq4qIRMMqYJ2ojQRxEjx
	tF8Ny7OPXAQkephuAtqPWdFOJqItlL2mNS99fEBVaE6iukj6AnM6jKZYQlfl
	goOHi_hW1P66vseoBnAUrjsye4rilPS3o0lxMDqc6hAv07FSpsQChMlykNYo
	ZW1jan8b1hBdsu7glaHOYCrbtCTFaW5GmflXp.HfdtatV0YFoRfuHwHS5MqM
	WMTTD69RKCpHUnjAtVIfZbTQqEdXR_AkM0QPcB0zdHv1BNOD3jYnR9HOwxa.
	Qrgyb2hZD6Q38LX9L.xtJyHx3X9ShXi.cXiIV8lbTiYpFixVm5F6Xx4CdWew
	HI62XjefUcIyuKi9clhI8HlsgdhB6xjgIZcPY3jW5ThCPg7jYvlDIiTef.A- -
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [10.22.2.59] (kpa_info@213.193.97.58 with plain)
	by smtp126.mail.ukl.yahoo.com with SMTP; 24 May 2012 09:22:44 +0000 GMT
Message-ID: <4FBDFDE1.3050505@yahoo.fr>
Date: Thu, 24 May 2012 11:22:41 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F981E9A.5050704@yahoo.fr> <4F982FA9.8010909@windriver.com>
In-Reply-To: <4F982FA9.8010909@windriver.com>
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
X-List-Received-Date: Thu, 24 May 2012 09:22:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

We have tried to add one of our package called 
test_libs-v27_v30-1.armv7a.rpm into tmp/deploy/rpm/armv7a directory.

Then in our image receipes we have added test_libs in  IMAGE_INSTALL.

The when we bitbake our image we have the following error message:

Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'test_libs' (but 
/home/yocto/poky-denzil-7.0/meta-test/recipes-extended/images/test-image.bb 
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'test_libs' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['test_libs']
ERROR: Required build target 'test-image' has no buildable providers.
Missing or unbuildable dependency chain was: ['test-image', 'test_libs']

Thanks for any help !

Patrick


On 04/25/2012 07:08 PM, Mark Hatle wrote:
> On 4/25/12 10:56 AM, Patrick wrote:
>> Dear all,
>>
>> We have some software that we develop from a while that we release as
>> rpm. To build these rpm we have some complexe .spec files.
>>
>> Now we use Yocto/Poky to build many new elements and I would like to
>> include in my rootfs generated with Yocto/Poky some of our "old"
>> software. We don't want to manage the bitbake recipes and the .spec for
>> each of our "old" software.
>>
>> I then would like to know if I could made a simple bitbake recipes that
>> "call/include/use" the .specs files ?
>> Another solution would be to include directly the rpm to the final
>> image. Do you think that it's possible ?
>
> This is something that we have discussed, but nobody has implement it yet.
>
> It is best for long term maintenance to transfer the spec file items
> into recipe format... but if you don't want to do that you can copy your
> built binary RPM packages into the deploy/RPMS/<arch> directory and then
> add the package names to install into IMAGE_INSTALL (from memory).
>
> --Mark
>
>> Thanks in advance for idea or hint
>>
>> Patrick
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


