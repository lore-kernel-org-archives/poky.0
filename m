Return-Path: <andrei@gherzan.ro>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E907E01217
	for <poky@yoctoproject.org>; Tue, 20 Dec 2011 03:09:54 -0800 (PST)
Received: by yhpp56 with SMTP id p56so5193755yhp.35
	for <poky@yoctoproject.org>; Tue, 20 Dec 2011 03:09:53 -0800 (PST)
Received: by 10.236.176.3 with SMTP id a3mr2659879yhm.111.1324379393418;
	Tue, 20 Dec 2011 03:09:53 -0800 (PST)
Received: from [192.168.1.2] ([79.117.116.240])
	by mx.google.com with ESMTPS id q16sm4202619anb.19.2011.12.20.03.09.50
	(version=SSLv3 cipher=OTHER); Tue, 20 Dec 2011 03:09:51 -0800 (PST)
Message-ID: <4EF06CFD.5050907@gherzan.ro>
Date: Tue, 20 Dec 2011 13:09:49 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4EEF748A.5020204@linux.intel.com>
In-Reply-To: <4EEF748A.5020204@linux.intel.com>
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
X-List-Received-Date: Tue, 20 Dec 2011 11:09:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I can look over this as well but there would be a problem: i don't know 
what solution to choose. I can take this package out from WHITELIST, 
ican  make wpa_supplicant to compile with openssl and not with gnutls... 
i can compile wpa-supplicant without gnutls-extra and so on... What do 
you say?

