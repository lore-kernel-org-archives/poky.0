Return-Path: <dominik.holland@pelagicore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 586DBE00474; Thu, 23 Aug 2018 03:49:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [109.166.244.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ORO-EDGE-01.luxoft.com (oro-edge-01.luxoft.com [109.166.244.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5106E003C1
	for <poky@yoctoproject.org>; Thu, 23 Aug 2018 03:49:55 -0700 (PDT)
Received: from ORO-HUBT-02.luxoft.com (172.30.115.36) by
	oro-edge-01.luxoft.com (172.30.19.21) with Microsoft SMTP Server (TLS)
	id 14.3.382.0; Thu, 23 Aug 2018 13:49:50 +0300
Received: from DeepThought.fritz.box (172.25.160.49) by ORO-HUBT-02.luxoft.com
	(172.30.115.101) with Microsoft SMTP Server (TLS) id 14.3.382.0;
	Thu, 23 Aug 2018 13:49:53 +0300
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <23b93cf4-bdf4-4d5e-7592-c3e9a5dcdd7a@pelagicore.com>
	<CANNYZj_7yojsaVawbutT8euM9xSaXRxDSSVnFgPHH_RTAfjYTw@mail.gmail.com>
From: Dominik Holland <dominik.holland@pelagicore.com>
Message-ID: <ac68d312-630a-46cc-43c9-4d7b060ceb39@pelagicore.com>
Date: Thu, 23 Aug 2018 12:49:51 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CANNYZj_7yojsaVawbutT8euM9xSaXRxDSSVnFgPHH_RTAfjYTw@mail.gmail.com>
X-Originating-IP: [172.25.160.49]
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: nativesdk-python3 support for mingw
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Aug 2018 10:49:57 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Actually that's really the case. Still a lot of companies require the
use of windows also for development.

As our tooling requires python3, it would be great if it can be
cross-compiled for windows and packaged into the SDK.

I've seen other solutions which download precompiled binaries and
install these into the SDK, but in my opinion this is more a hack than a
real solution...

Dominik

Am 22.08.18 um 20:39 schrieb Alexander Kanavin:
> Out of curiosity, why are you pursuing this? Is someone refusing to
> install Linux? :)
>
> (also greetings from Luxoft/Berlin :)
>
> Alex
>
> 2018-08-22 14:48 GMT+02:00 Dominik Holland <dominik.holland@pelagicore.com>:
>> Hi,
>>
>> not sure whether my last mail on this actually got on the list (didn't found it on the archive, so sending it again...)
>>
>> i tried to create a mingw-based windows SDK using poky which also
>> contains python3 (nativesdk-python3).
>>
>> It looked like nobody have tried to do this before (or support for it
>> was removed again ?). So i fixed a few recipes (db, gdbm, ncurses,
>> readline, openssl) to compile with mingw.
>>
>> Aftwards i also fixed python3 and got it working in a packaged SDK. To
>> do that i applied the patches from the mingw package maintainers (~80
>> patches).
>>
>> My question is whether all these fixes for the mentioned packages are
>> wanted ? Is there an interest in supporting a full fledged mingw SDK ?
>>
>> And are you also interested in the mingw patches for mingw (I didn't
>> check whether i need all of them, that's probably some python expert
>> should check).
>>
>> Thx
>>
>>  Dominik
>>
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky


