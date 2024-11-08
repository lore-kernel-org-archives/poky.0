Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1288ED5E141
	for <webhook@archiver.kernel.org>; Fri,  8 Nov 2024 06:34:03 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by mx.groups.io with SMTP id smtpd.web11.7210.1731047641330990707
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Nov 2024 22:34:01 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=Q19zz4k0;
 spf=pass (domain: gmx.li, ip: 212.227.17.21, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1731047638; x=1731652438; i=star@gmx.li;
	bh=wCmpn0EeAKIiZJLZ8ll+oZWn4jX+ZVWjE7v4YAky2Tw=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=Q19zz4k0nOnnbSRKOUBn9DvWaXh/ZGXMWTpAFJm0hdYQMKSvlcerSat49IndrJXS
	 PKCCTbde/pMM1lTGIJyN5pNew2Bh6ZtI4WJgK56RR4gfWHjD6JWe2BuDyP/SKqdrn
	 pJq3wWlnaAUyMvxLC8YdUlcwgbEnSOvzGLWi4r7x3iIa3xM1JN/rN0drGi6aqppal
	 3Wwgk5F2e+JLFARc50f+3gjTwcQ2qzGZ0U4AB6BuHiTAi78AsD9ggnnnnCkiCnmWI
	 jJtIJe/m9598JWHdstjUKNVeH/zSRyYQ3icFGAn9gsrOdrQ4A8Bz3QRFInKfN/KlY
	 ew8/ImpYdvB0mPegKg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([217.225.94.249]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MfpSb-1tkH8x2WoD-00dkml; Fri, 08
 Nov 2024 07:33:58 +0100
Message-ID: <6bc83c8c-04df-47ab-aa02-f4aea2ec95bc@gmx.li>
Date: Fri, 8 Nov 2024 07:33:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
References: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li>
 <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com>
 <47da8641-7a74-4d64-afc4-84c81ba713b0@gmx.li>
 <CANNYZj8RpypOLJKRMbpL1ZESu2urWHFmr2yhL2pXXCwKiDWwgQ@mail.gmail.com>
 <7fb2177d-8d4a-47fe-9458-919c19631d15@gmx.li>
 <CADkTA4PkbOgqwNoN4TjXZ5JeEgheo3mHNuOH3p6O6+1WC2D=ng@mail.gmail.com>
 <1AC79676-8721-4811-8EDD-4137CB6E5C78@gmx.li>
 <27270d33ba31945912e47b5a3c4acd2461ca6471.camel@linuxfoundation.org>
 <7729616b-76dc-4db2-8d55-3fc8dec79925@gmx.li>
 <B5CF96BF-7A37-47C3-B19C-3BB9A1B33FEB@arm.com>
Content-Language: en-US
From: Arno Steffens <star@gmx.li>
In-Reply-To: <B5CF96BF-7A37-47C3-B19C-3BB9A1B33FEB@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:vpMwPwQy7UJSwG5eaG5qYoutMNpaz2EVuByS0vyFMkGrYwYcxEj
 w0myLdAXi4IHyOcKfcbeCqmRSpyX0/TnaQ3ekW3eJc/lGCNAEhgky/6h8k4+jF3+UTn8Hm0
 EZAj+EWJJYTLZjiCcfyIX5ygUvZ1t+gxu4w30wouqYHj2SkxkLEIKvR2z2ZfDfU06mmHcD6
 QMNB3WmwLb6aqdZ0WtmzA==
UI-OutboundReport: notjunk:1;M01:P0:QpjlE4jPwNs=;Ibr5HcHp+nu4xidt+nVpR1TJcuG
 LlhNK+1Amkcq1R43bGcn9NicKEK2EsQyB0K+vii8NH/ElyC2XNs+KRxkirWIaxA4AKZ+Ro+/V
 Uzc3flmFIHUEEN3At65O7mw9u8OmJORx/OAMj//pJQ1wsAIQHxiINjyzXs5xAvVMnzd+xGn4Q
 YP47f46zI5mBKgdyVRgJEFvsYVEbUUxSBDlslX8s/kR//j2tLA/16tum2WU0X/dYeODgclckQ
 Ilvil0vL6ZLIgTGh/ffNU5AeBdiSK+lU+Jx6lCoaJMWYDLYiAFQPXshdHa/l9C7+vbiTuJz0/
 j85uz7ZrJZuxvaQrGoZFioAyKhKCUY2IvHRQAxJKFwxtwTaqgJtB0PoZJrnm8mmv+VkBKnfai
 a9d7gDecK6ku0TtIn2xL2k5WHEGoX7tpo9eg5pBOjTC0hAQX3PEq0Gl6NpPpVyZ0BX50USfYV
 jmvkRP/c+c7CqjWcWYDkdet/y44JzQwsXS8hZTVzIzmKVJuDHT0CYwUNxqOckX9xo7aLgdHDK
 vWHbs8PQFJ0CGIUBKhZvJT40xw5f9Vnc0/tjJP8gUNLUKk8Xl00M+AWPxDvspG6geiAErl44/
 h6PfPh5yRtvhj/b3XT4WzEqbpnA8ASKRHcZRZaW7jepZN3Op5BT96HhY9LBj/ZrbzatnalJe2
 WuhgifIuDD4ans5x/KcWN24fDHYVGOi0pTwJRgvDcUzT6ZumPnnup1bTlkd8mAcZezBgKZ9JP
 2maEmIaZYHlnKLXAiSt3QqMfnrwUXp8FsnNi8jbF1sYWK7gO7TF0nXkYK6Ug+/6u0j+Qu1OcE
 iLwByhdxae3d0aLcBgCZbTo+6+MNQRV0DoXKdkjP1JSCLEmrskNBbLnJnOHg1eU0cL6GN4c2n
 Y7ImtHhyraVkQNiQbTgRxeABr7PAzZwDe3H2eC5TXRmXI5aiLNPQodKIk
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 08 Nov 2024 06:34:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13487

On 11/7/24 22:41, Ross Burton wrote:
> On 6 Nov 2024, at 17:42, Steve via lists.yoctoproject.org <star=3Dgmx.li=
@lists.yoctoproject.org> wrote:
>> Follow the path of recipes of kernel or gcc is rather frustrating for a
>> newbee. Having a recipe just for download seems not a good idea,
>> dependencies of recipes seem not to work, as download recipe creates no
>> real output.
>> What I did now, I created one standard recipeA that checks all out and
>> really does something that is needed
>> The other recipesB,C,... depend on recipeA and in their do_install (I
>> just want to pick some files out of repo that is checked out in recipeA=
)
>> I figure out the folder name by just ignoring the (for B, C, D...)
>> unknown git hash.
>
> Where are you picking the files from in the other recipes?
>
> Ross

Not sure I understood your question.
RecipeA fetches data of repo and uses few files out of it to become part
of the final image (lets assume a lib)
Also it save a filename with location of this fetched git repo folder in
tmp/work (my_common_git_repo_location.txt)
RecipeB,C,D ... depend on RecipeA and read that file and can use data
from that. Each recipe uses other files out of this repo above.
That works so far.

Steve



