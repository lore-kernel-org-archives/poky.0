Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2D0F4C803E4
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 11:04:54 -0500 (CDT)
Received: by wyg34 with SMTP id 34so1580036wyg.35
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 09:04:53 -0700 (PDT)
Received: by 10.216.65.129 with SMTP id f1mr184259wed.84.1311782693268;
	Wed, 27 Jul 2011 09:04:53 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id k84sm6297weq.46.2011.07.27.09.04.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Jul 2011 09:04:52 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1311781972.2193.5.camel@scimitar>
Date: Wed, 27 Jul 2011 18:04:50 +0200
Message-Id: <9FD9DF15-37D0-43BC-B59D-048D9C5C727C@dominion.thruhere.net>
References: <CAMTw45D1+q6RU4ohtd1pQecpj6ti3KxyfjZGXb-06Tq_2X8D8Q@mail.gmail.com>
	<1311781972.2193.5.camel@scimitar>
To: Joshua Lock <josh@linux.intel.com>
X-Mailer: Apple Mail (2.1244.3)
Cc: poky@yoctoproject.org
Subject: Re: Error in Python modules dependency for UFW package
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
X-List-Received-Date: Wed, 27 Jul 2011 16:04:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 27 jul. 2011, om 17:52 heeft Joshua Lock het volgende geschreven:

> On Tue, 2011-07-26 at 20:15 +0530, chinmaya hoshing wrote:
>> Hi,
>> 
>> 
>> I am trying to pull UFW package in poky for sandybrige machine.
>> I have written a recipe for it and also it is building successfully.
>> But when I run the binary ufw (after installing the rootfs) I get
>> error related to python Modules.
>> (Adding to this I have added python in depends in ufw recipe.) 
>> Error  getting in python modules are for :
>> getttext ,locale,codecs,encodings  
>> The error is follows : 
>>      ImportError: No module named gettext 
>> 
> 
> You could try adding the required python packages to the runtime
> dependencies of your UFW recipe:
> 
> RDEPENDS += "python-codecs python-blah"

RDEPENDS_${PN} += bla

> 
> Joshua
> 
> -- 
> Joshua Lock
>        Yocto Project "Johannes factotum"
>        Intel Open Source Technology Centre
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


