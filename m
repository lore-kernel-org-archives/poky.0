Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC1D9E016C5
	for <poky@yoctoproject.org>; Tue,  8 Oct 2013 14:04:17 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 39D46F811E4; Tue,  8 Oct 2013 15:04:16 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CADF4F811E0;
	Tue,  8 Oct 2013 15:04:14 -0600 (MDT)
Message-ID: <52547357.7080503@mlbassoc.com>
Date: Tue, 08 Oct 2013 15:04:23 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <7BDD69127112414F90CF3FED4711BF150D15A47B39@IAD2MBX05.mex02.mlsrvr.com>
	<CA+gsK-qiBVcDiin3q0fSbGJRYScr4XRnv4BX7X9Nc2JyhuAN9A@mail.gmail.com>
In-Reply-To: <CA+gsK-qiBVcDiin3q0fSbGJRYScr4XRnv4BX7X9Nc2JyhuAN9A@mail.gmail.com>
Subject: Re: Best supported package manager?
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
X-List-Received-Date: Tue, 08 Oct 2013 21:04:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-10-08 14:09, Rudolf Streif wrote:
>
>>Which package manager (ipk, rpm, deb) is best supported currently in poky?  I am wondering which manager is the most tested and stable?
>
> RPM is the default package manager. I would expect that it has gotten the most mileage so far because of that. All of them are tested with autobuilder. IPK is probably the next
> commonly used one since popular for embedded systems for its leightweight and smaller footprint design. You can have YP build for any combination of the package managers at the
> same time. The builds just take longer. I recommend starting with RPM and when your system boots try out the other ones if you need to.

Actually, the package manager is a distribution choice and while
Poky might use RPM, many others use IPK.  Of course this is just
the default and depending on your distribution you may be able
to override that choice.

Each style of packaging has it's pros and cons (see the mailing
list archives) but for embedded systems IPK is a winner due to its
much lighter footprint (at least that's my experience).  Also note
that Poky (and OE in general) used IPK for much longer than they
have been using RPM which has only been in the past couple of years :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

