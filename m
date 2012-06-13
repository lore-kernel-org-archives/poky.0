Return-Path: <kpa_info@yahoo.fr>
Received: from nm3.bullet.mail.ukl.yahoo.com (nm3.bullet.mail.ukl.yahoo.com
	[217.146.182.224])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id A1947E01304
	for <poky@yoctoproject.org>; Wed, 13 Jun 2012 00:18:28 -0700 (PDT)
Received: from [217.146.183.209] by nm3.bullet.mail.ukl.yahoo.com with NNFMP;
	13 Jun 2012 07:18:27 -0000
Received: from [217.146.182.143] by tm2.bullet.mail.ukl.yahoo.com with NNFMP;
	13 Jun 2012 07:18:27 -0000
Received: from [127.0.0.1] by smtp116.mail.ukl.yahoo.com with NNFMP;
	13 Jun 2012 07:18:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1339571907; bh=vHpCIrIX3YDZyFZyPUZh3NVlzU9myHeb/jE1pnOZRUw=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=gfAdpDvrPYGnbOyaQQiHaYcc4YdKFjOZQIHBnVjGNRt8CoY/edAQBQj8ikIqNWVrMXubAvzjRpPecxg0m2YmSQmtPRLBE7M1+4uhAp6QcML6h+sqR4RpxsSyEFZZ58nvG9LNO81KAqHLwso6QFV1agC2rgO104PGp7XIGlyIZWA=
X-Yahoo-Newman-Id: 306911.64042.bm@smtp116.mail.ukl.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: Nym6ufAVM1mlIH.cDAeFEMG4B7tH4x2L2_i22Azks1yGgvJ
	zWxUcNrh0wkVr_1kTiKFMICN_CdzXMFFtbC7xobQFzLvLlbTQclvxTMKw_PA
	PvnIorQRjQ_uoKEYlgaz5dEBg70ITlHB0aQiUHPxQEsv8X4b5ejqVLAgfEA6
	bWDgP.S494mGti..UFlCpzG1qdBwOdWN6zCx467O9bsKhhKCAemkAdhPHkJG
	9pCKNBy43ZkCkBdvBCVqRmLgMu8FFPn.8wPGtfwDVsKn_8O2TWrXVicqO.s2
	rscimTthq_agA2ooOViY4cuius9pjG0MTgI6EwnTRroGwETZzWLe_Gnb77M9
	FQzUN8LBR0DSPrcuQdxh2wDv4jfQWr62ddqmPKHcDsms9CcUCjuwA1ZdIq9u
	Vk6aR3yde8VYMn9mlnRjhm_LWEmGdfA--
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [10.22.2.59] (kpa_info@213.193.97.58 with plain)
	by smtp116.mail.ukl.yahoo.com with SMTP; 13 Jun 2012 00:18:27 -0700 PDT
Message-ID: <4FD83EC0.7050605@yahoo.fr>
Date: Wed, 13 Jun 2012 09:18:24 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4FD753B2.9060705@yahoo.fr> <1339512456.8065.13.camel@ted>
In-Reply-To: <1339512456.8065.13.camel@ted>
Cc: poky@yoctoproject.org
Subject: Re: Running script after installation (postinst)
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
X-List-Received-Date: Wed, 13 Jun 2012 07:18:29 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 06/12/2012 04:47 PM, Richard Purdie wrote:
> On Tue, 2012-06-12 at 16:35 +0200, Patrick wrote:
>> Dear all,
>>
>> In one of our recipes we need to execute a small script after the
>> installation of the package. Following yocto dev manual point 4.3.6 we
>> have added a pkg_postinst function.
>>
>> This doesn’t work properly as the script is executed at first start-up
>> and not after installation. Below are an example of this recipe.
>>
>> Do you have any idea why this script is started as first boot time and
>> not after installation ?
>>
>> Thanks in advance for any help !
>
> We try and run postinstalls "offline" at image creation time. If they
> fail, they run at first boot.
>
> You can tell which context you're in by the contents of the $D variable
> (note, $D, not ${D}). For example, you could therefore do:
>
>
> pkg_postinst_task-system-tweaks () {
>     #!/bin/sh -e
>
>     #Mount tmprecovery at startup
>     mkdir -p $D/tmprecovery
>     mkdir -p $D/data
>     echo "/dev/mtdblock6        /tmprecovery        yaffs2      0 0">>  $D/etc/fstab
>     echo "/dev/mtdblock7        /data               yaffs2   noauto  0 0">>  $D/etc/fstab
>
> Cheers,
>
> Richard
>

Thanks for your answer

The problems when using $D is that the script is executed against the 
files of the package not against the whole rootfs. For example in the 
dummy recipes above we change the file $D/etc/fstab that is not in the 
package of the recipes.

We have also tried to add (R)DEPENDS to the package that contains fstab 
with no change.

Any idea why ?

Patrick

