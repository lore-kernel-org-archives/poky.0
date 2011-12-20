Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CF58E006B5
	for <poky@yoctoproject.org>; Tue, 20 Dec 2011 10:18:55 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2011 10:18:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="89624684"
Received: from unknown (HELO [10.255.12.100]) ([10.255.12.100])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2011 10:18:54 -0800
Message-ID: <4EF0D18D.3040104@linux.intel.com>
Date: Tue, 20 Dec 2011 10:18:53 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <4EEF748A.5020204@linux.intel.com> <4EF06CFD.5050907@gherzan.ro>
In-Reply-To: <4EF06CFD.5050907@gherzan.ro>
Cc: poky@yoctoproject.org
Subject: Re: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Tue, 20 Dec 2011 18:18:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/20/2011 03:09 AM, Andrei Gherzan wrote:
> I can look over this as well but there would be a problem: i don't know
> what solution to choose. I can take this package out from WHITELIST,
> ican make wpa_supplicant to compile with openssl and not with gnutls...
> i can compile wpa-supplicant without gnutls-extra and so on... What do
> you say?
I think it needs to stay in the WHITELIST for know, until we have some 
kind of future change that can determine package based LICENSE info and 
build accordingly (that's a different issue then this right now).

What does wpa-supplicant use from gnutls-extra?  What functionality 
could be lost?  This might be the best approach, and could be a 
conditional patch based on GPLv3 or not (see code in util-linux_2.19.1)

For WPA-supplicant and openssl, are there know issues?

Sau!

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

