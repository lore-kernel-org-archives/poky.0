Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A49EE00B44; Sat, 30 Jan 2016 09:02:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB564E0082F
	for <poky@yoctoproject.org>; Sat, 30 Jan 2016 09:02:53 -0800 (PST)
Received: from [192.168.3.23] ([84.56.244.107]) by mail.gmx.com (mrgmx102)
	with ESMTPSA (Nemesis) id 0LjuR3-1ZoIIH0MoL-00bogX for
	<poky@yoctoproject.org>; Sat, 30 Jan 2016 18:02:52 +0100
Message-ID: <56ACECBF.9040708@gmx.li>
Date: Sat, 30 Jan 2016 18:02:55 +0100
From: Arno <star@gmx.li>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <56ACEBDF.6060303@gmx.li>
In-Reply-To: <56ACEBDF.6060303@gmx.li>
X-Forwarded-Message-Id: <56ACEBDF.6060303@gmx.li>
X-Provags-ID: V03:K0:LVqw59TPQwAWTSwdsdKKNCSYtkEVBwmNTju8Y2bhi3+UTzO0Kee
	CDo3qqndAFDY1GQo780V+1ZjHw6qBpmSkNeV5YLM6aKx34bKTYCsCyk3MbWAuvge0Y22zI5
	9vey39xTwn/zcdYDL4MszyOZv7Y0MZ6oZe9YQAUQwCAAsLzEivYhhaE8sSizQW4GaIQGqu8
	62O53jN4ffu8q+qxZto+Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:NFim+EgU8lI=:DcOY/bfsjQnCwznAXYyYlc
	7WIVX1hs0RgVhh6de7AiICmefJ3kd9zFwIhABV/0FHpis5dBu2iuxmEh5sFtZNDDGhHrDNWnc
	5IsihORP0usWJwaYIHSUDyLnKlme9QGwo+fsAheOnglNkD63Nta/uXwcEcTzxZQLQeBeVR0xf
	I7oQ+t4QvACHTPvMfJmB+XfuJv7fcBcQIROdfWw2ciW7uth5yfFDvhsGUK2GKGBYg8SjxQdaK
	Ty45lFBb2B4eySna2IKyunl2C0F4Z6bBu850puJnmFQRRxWC2uwi2V3ZiF69tSewMjcgKNMi5
	+UjAUJ/ncYC2VTV7cQSzO78vPYgpZ6dVrQm3bzy3y6CP4wepaRhNX2PpsciL/kF1i6xTwrNzk
	cbSOnFNGwrfxDz6Q/VbcXsgHlV/LAfcIJl4lgV82M1rZwEOa2JzkNQyvCl6ZTo5J3glelnq/n
	09Nzzzk+mzYnNOzXoS2tk5Qf+sdYi0hKRcoMo8u5kAw/ezOUNlUwPGqri5m1OcbFeoTjxv8MQ
	Otr+3F1EbBkVuh7wAsz1YGBnbA22jTb/MtArAz2LqcVUc06Fz5LFbicUV9nmpbKLK0jkgQ/Hw
	upT2YYjPYX4Cz9k4QIZIb+94YNGU0pkRBL2ylGjcROSf6aFOqXmBxSz1S2e1wdNPhdUMgg0tj
	nDy4DYBN14sg4YxeVwMGXOKOg5iMeQSAWDvhLMTNVGOplTXzyPg4mwXPHT2Qu+MNHID9j9jbd
	o7sYoCRnvgTVFmXE8QyGLK3sB1NUDSFUNj4MG99JaTZQimF4s7GMpfft4NwyBLpgsmtGUubaW
	eEJGN3d
Subject: Re: TCF agent doesn't support run control service
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
X-List-Received-Date: Sat, 30 Jan 2016 17:02:56 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Am 15.01.2016 um 17:05 schrieb Randy MacLeod:
> On 2016-01-07 02:24 AM, Arno wrote:
>> While my tests with TCF I found that I can't debug with it (remote
>> exploring works).
>> In eclispe I get in the Tab Debugger Configuration/download the message:
>> "peer does not support run control service".
>> As I am new to both Yocto and TCF I kindly ask, is this an issue of me
>> (wrong handling), TCF in general, TCF in Yocto or is an issue with my
>> target ARM-CortexA9 system?
>> Does it mean, I should keep going for GDB?
>>
>
>
> According to a co-worker, this is discussed on
>     https://bugzilla.yoctoproject.org/show_bug.cgi?id=5069#c4
>
> Does that help?
>

Sorry for beeing so late. Thank you. That helps! Nevertheless it is
strange that the "Download" in the Donwload Tab doesn't work. But it
makes an implicit download to the given folders that can set in another
Tab.



